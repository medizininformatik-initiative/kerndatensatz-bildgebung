#!/usr/bin/env node
// update-demo-links — repoint the hand-authored gh-pages landing page at a
// newly released rendered demo.
//
// WHY THIS EXISTS
//   The demo under gh-pages/demo/<tag>/ used to be promoted BY HAND from a
//   feature-branch preview built BEFORE Release Please bumped the version. The
//   result was a published page whose PATH said one release and whose CONTENT
//   said another (demo/v0.5.1/ rendering "… — Preview v0.5.0"). release-demo.yml
//   now builds the demo from the released TAG; this script moves the landing
//   page's links onto that tag in the same commit, so path, content and link
//   can never disagree again.
//
// DESIGN RULE — CONSERVATIVE, NEVER WHOLESALE
//   index.html is hand-authored and carries prose that must survive. This script
//   therefore rewrites four narrowly anchored things and nothing else:
//
//     A  every `demo/<version>/` PATH SEGMENT            (required)
//     B  the version token in the `<h2>` that introduces the demo   (required)
//     C  the one-paragraph per-release note, if present  (optional)
//     D  the obsolete "dev predates the release" sentence, if present (optional)
//
//   A and B are REQUIRED: if either anchor is missing the script exits non-zero
//   rather than silently leaving the page pointing at the previous release —
//   a silently un-updated link is the exact failure mode this replaces. C and D
//   are optional and warn.
//
//   C is rewritten rather than preserved because it is a PER-RELEASE statement
//   ("Release v0.5.1 replaced an earlier breadcrumb workaround …"): left alone
//   it describes a release the page no longer links to. It is replaced by a
//   generated one-liner pointing at the real release notes, which cannot go
//   stale. D is a one-time repair of a sentence that became false when `main`
//   and `dev` were reconciled; the regex stops matching once it has run.
//
//   Every rewrite is IDEMPOTENT: running the script twice with the same version
//   produces the same bytes.
//
// USAGE
//   node scripts/update-demo-links.mjs --file <index.html> --version v0.6.0 \
//        --repo-url https://github.com/<org>/<repo> [--check]
//
//     --check   dry run: print the before/after of every changed line and exit
//               1 if a REQUIRED anchor is missing; never writes the file.
//
// Zero runtime dependencies (Node >= 18). The pure logic lives in
// `rewriteLandingPage()` so it is unit-tested without touching the file system
// (scripts/update-demo-links.test.mjs).

import { readFileSync, writeFileSync } from "node:fs";

/** A version token as it appears in a path segment or a label: `0.6.0`,
 * `v0.6.0`, `v2026.0.1-rc.1`. Deliberately permissive on the suffix so a
 * pre-release tag round-trips. */
const VERSION_TOKEN = String.raw`v?\d+\.\d+\.\d+[0-9A-Za-z.+-]*`;

/** Normalise to the `vX.Y.Z` spelling the page and the gh-pages paths use. */
export function normalizeTag(version) {
  const v = String(version).trim();
  if (!/^v?\d+\.\d+\.\d+[0-9A-Za-z.+-]*$/.test(v)) {
    throw new Error(`not a release version: ${version}`);
  }
  return v.startsWith("v") ? v : `v${v}`;
}

/**
 * Rewrite the landing page for a new demo version.
 *
 * @param {string} html      the current index.html
 * @param {object} options
 * @param {string} options.version   release tag, with or without the leading v
 * @param {string} options.repoUrl   https://github.com/<org>/<repo> (for the release-notes link)
 * @returns {{html: string, changes: string[], warnings: string[]}}
 * @throws  when a REQUIRED anchor (A or B) is not found
 */
export function rewriteLandingPage(html, { version, repoUrl }) {
  const tag = normalizeTag(version);
  const changes = [];
  const warnings = [];
  let out = html;

  // ── A · demo/<version>/ path segments ────────────────────────────────────
  const pathRe = new RegExp(String.raw`\bdemo/${VERSION_TOKEN}/`, "g");
  const paths = out.match(pathRe);
  if (!paths) {
    throw new Error(
      "no `demo/<version>/` path segment found in the landing page — refusing " +
        "to publish a demo the page does not link. Restore a link of the form " +
        '`<a href="demo/v0.0.0/en/index.html">` or update this script.',
    );
  }
  const before = [...new Set(paths)];
  out = out.replace(pathRe, `demo/${tag}/`);
  const replaced = before.filter((p) => p !== `demo/${tag}/`);
  changes.push(
    replaced.length
      ? `A: ${paths.length} demo path segment(s) ${before.join(", ")} -> demo/${tag}/`
      : `A: ${paths.length} demo path segment(s) already at demo/${tag}/`,
  );

  // ── B · the version token in the demo heading ────────────────────────────
  // `<h2>Rendered demo — template release v0.5.1</h2>`
  const headingRe = new RegExp(
    String.raw`(<h2[^>]*>[^<]*?Rendered demo[^<]*?)(${VERSION_TOKEN})([^<]*</h2>)`,
    "i",
  );
  const heading = out.match(headingRe);
  if (!heading) {
    throw new Error(
      "no `<h2>… Rendered demo … vX.Y.Z</h2>` heading found in the landing " +
        "page — the demo version label would silently keep naming the previous " +
        "release. Restore the heading or update this script.",
    );
  }
  if (heading[2] !== tag) {
    changes.push(`B: demo heading label ${heading[2]} -> ${tag}`);
  } else {
    changes.push(`B: demo heading label already ${tag}`);
  }
  out = out.replace(headingRe, `$1${tag}$3`);

  // ── C · the per-release note paragraph (optional) ─────────────────────────
  // Matches both the hand-authored prose form and this script's own generated
  // form (which contains one <a>), so it stays rewritable release after release.
  const noteRe = new RegExp(
    String.raw`<p([^>]*)>Release ${VERSION_TOKEN}[^<]*(?:<a\b[^>]*>[^<]*</a>[^<]*)*</p>`,
  );
  if (noteRe.test(out)) {
    const notesUrl = `${String(repoUrl).replace(/\/+$/, "")}/releases/tag/${tag}`;
    out = out.replace(
      noteRe,
      `<p$1>Release ${tag} — see the <a href="${notesUrl}">release notes</a> for what changed.</p>`,
    );
    changes.push(`C: per-release note repointed at ${notesUrl}`);
  } else {
    warnings.push(
      "C: no `<p>Release vX.Y.Z …</p>` note paragraph found — skipped (optional).",
    );
  }

  // ── D · the obsolete "dev predates the release" sentence (optional) ───────
  // One-time repair: it became false when main and dev were reconciled. The
  // replacement carries no version, so it can never go stale again, and the
  // regex no longer matches once it has run.
  const staleRe = /The <code>dev<\/code> branch currently predates[\s\S]*?released state\./;
  if (staleRe.test(out)) {
    out = out.replace(
      staleRe,
      "The <code>dev</code> branch tracks work in progress; the demo above is the released state.",
    );
    changes.push("D: obsolete `dev predates the release` sentence corrected");
  } else {
    warnings.push(
      "D: no obsolete `dev predates the release` sentence found — skipped (optional, expected after the first run).",
    );
  }

  return { html: out, changes, warnings };
}

/**
 * Line-level before/after, for the --check dry run and the job summary.
 *
 * A plain index-by-index comparison would cascade: rewrite D collapses three
 * source lines into one, after which every later line "differs" and the report
 * becomes unreadable. So this walks a longest-common-subsequence table — the
 * landing page is ~100 lines, so the quadratic table is free — and emits only
 * the genuinely changed lines.
 */
export function lineDiff(before, after) {
  const a = before.split("\n");
  const b = after.split("\n");
  const lcs = Array.from({ length: a.length + 1 }, () => new Uint32Array(b.length + 1));
  for (let i = a.length - 1; i >= 0; i -= 1) {
    for (let j = b.length - 1; j >= 0; j -= 1) {
      lcs[i][j] = a[i] === b[j] ? lcs[i + 1][j + 1] + 1 : Math.max(lcs[i + 1][j], lcs[i][j + 1]);
    }
  }
  const out = [];
  let i = 0;
  let j = 0;
  while (i < a.length && j < b.length) {
    if (a[i] === b[j]) {
      i += 1;
      j += 1;
    } else if (lcs[i + 1][j] >= lcs[i][j + 1]) {
      out.push(`- ${a[i++]}`);
    } else {
      out.push(`+ ${b[j++]}`);
    }
  }
  while (i < a.length) out.push(`- ${a[i++]}`);
  while (j < b.length) out.push(`+ ${b[j++]}`);
  return out;
}

// ── CLI ────────────────────────────────────────────────────────────────────
function parseArgs(argv) {
  const args = { check: false };
  for (let i = 0; i < argv.length; i += 1) {
    const a = argv[i];
    if (a === "--check") args.check = true;
    else if (a === "--file") args.file = argv[++i];
    else if (a === "--version") args.version = argv[++i];
    else if (a === "--repo-url") args.repoUrl = argv[++i];
    else throw new Error(`unknown argument: ${a}`);
  }
  for (const key of ["file", "version", "repoUrl"]) {
    if (!args[key]) throw new Error(`missing required --${key === "repoUrl" ? "repo-url" : key}`);
  }
  return args;
}

const invokedDirectly =
  process.argv[1] && import.meta.url === new URL(`file://${process.argv[1]}`).href;

if (invokedDirectly) {
  let args;
  try {
    args = parseArgs(process.argv.slice(2));
  } catch (error) {
    console.error(`update-demo-links: ${error.message}`);
    console.error(
      "usage: node scripts/update-demo-links.mjs --file <index.html> --version <vX.Y.Z> --repo-url <url> [--check]",
    );
    process.exit(2);
  }
  const original = readFileSync(args.file, "utf8");
  let result;
  try {
    result = rewriteLandingPage(original, { version: args.version, repoUrl: args.repoUrl });
  } catch (error) {
    console.error(`::error::update-demo-links: ${error.message}`);
    process.exit(1);
  }
  for (const w of result.warnings) console.error(`::warning::update-demo-links ${w}`);
  for (const c of result.changes) console.log(`update-demo-links ${c}`);

  const diff = lineDiff(original, result.html);
  if (diff.length === 0) {
    console.log("update-demo-links: landing page already up to date (no byte changed).");
  } else {
    console.log("--- landing-page diff ---");
    for (const line of diff) console.log(line);
    console.log("--- end diff ---");
  }
  if (!args.check) writeFileSync(args.file, result.html);
}

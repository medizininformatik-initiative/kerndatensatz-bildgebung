// Guards scripts/update-demo-links.mjs — the conservative rewriter that moves
// the hand-authored gh-pages landing page onto a newly released demo.
//
// Why these properties and not others: the bug this replaces was a SILENT one
// (a demo promoted by hand whose path, content and link disagreed). So the
// tests pin the two behaviours that keep it silent-proof:
//   * a missing REQUIRED anchor THROWS (never a quiet no-op), and
//   * rewriting is IDEMPOTENT and chainable across releases.
// The fixture is the real landing page's shape, trimmed.
//
// Run with:  node --test scripts/update-demo-links.test.mjs
import { test } from "node:test";
import assert from "node:assert/strict";

import { rewriteLandingPage, normalizeTag, lineDiff } from "./update-demo-links.mjs";

const REPO = "https://github.com/forschungsgruppe-digital-health/mii-kds-module-template";

const PAGE = `<!DOCTYPE html>
<html lang="en"><body>
<h1>mii-kds-module-template</h1>
<p class="note">Prose that must survive, mentioning demo builds in general.</p>
<h2>Rendered demo — template release v0.5.1</h2>
<p>What a module built from this template renders as, out of the box:</p>
<ul>
<li><a href="demo/v0.5.1/en/index.html">Demo module IG (English)</a></li>
<li><a href="demo/v0.5.1/de/index.html">Demo-Modul-IG (Deutsch)</a></li>
<li><a href="demo/v0.5.1/qa.html">QA report</a></li>
</ul>
<p style="font-size:.94rem;color:#555">Release v0.5.1 replaced an earlier breadcrumb workaround.</p>
<p class="stale">CI publishes a preview per active branch under <code>branches/&lt;branch&gt;/</code>.
These are <strong>not</strong> release renderings. The <code>dev</code> branch currently predates the
v0.5.0 release, so its preview does not show the v0.5.0 changes; use the demo above for the
released state.</p>
<footer>Not an official artifact of the Medizininformatik-Initiative.</footer>
</body></html>`;

test("normalizeTag accepts both spellings and rejects non-versions", () => {
  assert.equal(normalizeTag("0.6.0"), "v0.6.0");
  assert.equal(normalizeTag("v0.6.0"), "v0.6.0");
  assert.equal(normalizeTag("v2026.0.1-rc.1"), "v2026.0.1-rc.1");
  assert.throws(() => normalizeTag("main"), /not a release version/);
  assert.throws(() => normalizeTag("v1.2"), /not a release version/);
});

test("every demo path segment moves to the new tag", () => {
  const { html } = rewriteLandingPage(PAGE, { version: "v0.6.0", repoUrl: REPO });
  assert.match(html, /href="demo\/v0\.6\.0\/en\/index\.html"/);
  assert.match(html, /href="demo\/v0\.6\.0\/de\/index\.html"/);
  assert.match(html, /href="demo\/v0\.6\.0\/qa\.html"/);
  assert.doesNotMatch(html, /demo\/v0\.5\.1\//);
});

test("the demo heading label follows the tag", () => {
  const { html } = rewriteLandingPage(PAGE, { version: "0.6.0", repoUrl: REPO });
  assert.match(html, /<h2>Rendered demo — template release v0\.6\.0<\/h2>/);
});

test("hand-authored prose outside the four anchors is untouched", () => {
  const { html } = rewriteLandingPage(PAGE, { version: "v0.6.0", repoUrl: REPO });
  assert.match(html, /<h1>mii-kds-module-template<\/h1>/);
  assert.match(html, /Prose that must survive, mentioning demo builds in general\./);
  assert.match(html, /Not an official artifact of the Medizininformatik-Initiative\./);
  assert.match(html, /CI publishes a preview per active branch/);
});

test("the per-release note is repointed at the real release notes", () => {
  const { html } = rewriteLandingPage(PAGE, { version: "v0.6.0", repoUrl: REPO });
  assert.match(
    html,
    /<p style="font-size:\.94rem;color:#555">Release v0\.6\.0 — see the <a href="[^"]*\/releases\/tag\/v0\.6\.0">release notes<\/a> for what changed\.<\/p>/,
  );
  assert.doesNotMatch(html, /replaced an earlier breadcrumb workaround/);
});

test("a trailing slash on the repo URL does not double up", () => {
  const { html } = rewriteLandingPage(PAGE, { version: "v0.6.0", repoUrl: `${REPO}/` });
  assert.ok(html.includes(`href="${REPO}/releases/tag/v0.6.0"`), "release-notes href is not normalised");
  assert.doesNotMatch(html, /\/\/releases/);
});

test("the obsolete `dev predates the release` sentence is corrected once", () => {
  const first = rewriteLandingPage(PAGE, { version: "v0.6.0", repoUrl: REPO });
  assert.match(first.html, /tracks work in progress; the demo above is the released state\./);
  assert.doesNotMatch(first.html, /currently predates/);
  const second = rewriteLandingPage(first.html, { version: "v0.6.0", repoUrl: REPO });
  assert.equal(second.html, first.html);
  assert.ok(second.warnings.some((w) => w.startsWith("D:")));
});

test("rewriting is idempotent and chains across releases", () => {
  const once = rewriteLandingPage(PAGE, { version: "v0.6.0", repoUrl: REPO }).html;
  const twice = rewriteLandingPage(once, { version: "v0.6.0", repoUrl: REPO }).html;
  assert.equal(twice, once, "a re-run of the same release must not change a byte");

  const next = rewriteLandingPage(once, { version: "v0.7.0", repoUrl: REPO }).html;
  assert.match(next, /href="demo\/v0\.7\.0\/qa\.html"/);
  assert.match(next, /<h2>Rendered demo — template release v0\.7\.0<\/h2>/);
  assert.match(next, /releases\/tag\/v0\.7\.0">release notes<\/a>/);
  assert.doesNotMatch(next, /v0\.6\.0/);
});

test("a missing demo link THROWS — never a silent no-op", () => {
  const page = PAGE.replace(/demo\/v0\.5\.1\//g, "rendered/v0.5.1/");
  assert.throws(
    () => rewriteLandingPage(page, { version: "v0.6.0", repoUrl: REPO }),
    /no `demo\/<version>\/` path segment/,
  );
});

test("a missing demo heading THROWS — never a silent no-op", () => {
  const page = PAGE.replace("<h2>Rendered demo — template release v0.5.1</h2>", "<h2>Demo</h2>");
  assert.throws(
    () => rewriteLandingPage(page, { version: "v0.6.0", repoUrl: REPO }),
    /Rendered demo/,
  );
});

test("the optional anchors only warn when absent", () => {
  const page = PAGE.replace(
    /<p style="font-size:\.94rem;color:#555">Release v0\.5\.1[^<]*<\/p>\n/,
    "",
  ).replace(/The <code>dev<\/code> branch currently predates[\s\S]*?released state\./, "Work in progress.");
  const { html, warnings } = rewriteLandingPage(page, { version: "v0.6.0", repoUrl: REPO });
  assert.match(html, /href="demo\/v0\.6\.0\/qa\.html"/);
  assert.equal(warnings.length, 2, `expected the C and D warnings, got ${JSON.stringify(warnings)}`);
});

test("lineDiff reports only genuinely changed lines", () => {
  const { html } = rewriteLandingPage(PAGE, { version: "v0.6.0", repoUrl: REPO });
  const diff = lineDiff(PAGE, html);
  // The footer and the <h1> are unchanged, so they must not appear in the diff
  // — a naive index-by-index comparison would cascade past rewrite D, which
  // collapses three lines into one, and drag them in.
  assert.ok(diff.length > 0);
  assert.ok(!diff.some((l) => l.includes("<h1>mii-kds-module-template</h1>")));
  assert.ok(!diff.some((l) => l.includes("Not an official artifact")));
  assert.ok(diff.some((l) => l.startsWith("- ") && l.includes("demo/v0.5.1/qa.html")));
  assert.ok(diff.some((l) => l.startsWith("+ ") && l.includes("demo/v0.6.0/qa.html")));
});

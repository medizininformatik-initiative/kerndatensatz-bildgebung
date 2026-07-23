#!/usr/bin/env node

import {
  existsSync,
  readdirSync,
  readFileSync,
  renameSync,
  statSync,
  writeFileSync,
} from "node:fs";
import { join, resolve } from "node:path";
import { pathToFileURL } from "node:url";

const RELEASE_HEADER = /<!--ReleaseHeader-->[\s\S]*?<!--EndReleaseHeader-->/g;
const PAGE_JSON_ASSIGNMENT = /^[ \t]*var pageJSON = [^\r\n]+;[ \t]*$/gm;

function normalizeBaseUrl(value, label) {
  let parsed;
  try {
    parsed = new URL(value);
  } catch {
    throw new Error(`${label} is not an absolute URL: ${value}`);
  }
  if (!/^https?:$/.test(parsed.protocol)) {
    throw new Error(`${label} must use HTTP or HTTPS: ${value}`);
  }
  return value.replace(/\/$/, "");
}

function walk(root, visit) {
  for (const entry of readdirSync(root, { withFileTypes: true })) {
    if (entry.name === ".git") {
      continue;
    }

    const filename = join(root, entry.name);
    if (entry.isDirectory()) {
      if (existsSync(join(filename, ".branch-name"))) {
        continue;
      }
      walk(filename, visit);
    } else if (entry.isFile()) {
      visit(filename);
    }
  }
}

function replaceInReleaseHeaders(source, oldUrl, newUrl) {
  let replacements = 0;
  const output = source.replace(RELEASE_HEADER, (header) => {
    const occurrences = header.split(oldUrl).length - 1;
    replacements += occurrences;
    return occurrences === 0 ? header : header.replaceAll(oldUrl, newUrl);
  });
  return { output, replacements };
}

function writeAtomically(filename, content, suffix) {
  const temporary = `${filename}.${suffix}.tmp`;
  writeFileSync(temporary, content, "utf8");
  renameSync(temporary, filename);
}

function serializePageJson(value) {
  const json = JSON.stringify(value)
    .replaceAll("\\", "\\\\")
    .replaceAll("'", "\\'")
    .replaceAll("<", "\\u003c")
    .replaceAll("\u2028", "\\u2028")
    .replaceAll("\u2029", "\\u2029");
  return `'${json}'`;
}

function setCurrentReleaseLocation(root, canonical, publicationBase) {
  const packageListFilename = join(root, "package-list.json");
  if (!existsSync(packageListFilename)) {
    throw new Error(`Publication package list does not exist: ${packageListFilename}`);
  }

  let packageList;
  try {
    packageList = JSON.parse(readFileSync(packageListFilename, "utf8"));
  } catch (error) {
    throw new Error(
      `Publication package list is not valid JSON: ${packageListFilename}`,
      { cause: error },
    );
  }
  if (packageList.canonical !== canonical) {
    throw new Error(
      `Package-list canonical is ${packageList.canonical}, expected ${canonical}`,
    );
  }
  if (!Array.isArray(packageList.list)) {
    throw new Error("Publication package list has no version list");
  }

  const currentReleases = packageList.list.filter(
    (entry) =>
      entry &&
      typeof entry === "object" &&
      entry.version !== "current" &&
      entry.current === true,
  );
  if (currentReleases.length !== 1) {
    throw new Error(
      `Expected exactly one current formal release, found ${currentReleases.length}`,
    );
  }

  const currentRelease = currentReleases[0];
  const currentReleasePath = normalizeBaseUrl(
    currentRelease.path,
    "Current release path",
  );
  if (
    currentReleasePath !== publicationBase &&
    !currentReleasePath.startsWith(`${publicationBase}/`)
  ) {
    throw new Error(
      `Current release path is outside the publication website: ${currentReleasePath}`,
    );
  }

  currentRelease.altloc = currentReleasePath;
  const packageListOutput = `${JSON.stringify(packageList, null, 2)}\n`;

  const historyFilename = join(root, "history.html");
  if (!existsSync(historyFilename)) {
    throw new Error(`Publication history page does not exist: ${historyFilename}`);
  }
  const historySource = readFileSync(historyFilename, "utf8");
  const assignments = [...historySource.matchAll(PAGE_JSON_ASSIGNMENT)];
  if (assignments.length !== 1) {
    throw new Error(
      `Expected exactly one pageJSON assignment in ${historyFilename}, found ${assignments.length}`,
    );
  }
  const historyOutput = historySource.replace(
    PAGE_JSON_ASSIGNMENT,
    `var pageJSON = ${serializePageJson(packageList)};`,
  );

  if (readFileSync(packageListFilename, "utf8") !== packageListOutput) {
    writeAtomically(packageListFilename, packageListOutput, "current-release-link");
  }
  if (historySource !== historyOutput) {
    writeAtomically(historyFilename, historyOutput, "current-release-link");
  }

  return currentReleasePath;
}

/**
 * Publisher builds the publish-box history URL from the FHIR canonical even
 * when canonical-mismatch permits releases to live on a different website.
 * Rewrite only that exact URL inside Publisher release-header markers. The
 * history renderer separately uses the canonical for the Current Versions date
 * unless the supported `altloc` property is present. Formal publication mode
 * therefore sets `altloc` in package-list.json and the generated history page.
 * Standalone Publisher builds can opt into headers-only mode because they do
 * not contain those publication-index files. Branch previews are skipped so
 * formal publication does not modify independent deployments.
 */
export function fixPublicationHistoryLinks(
  rootDirectory,
  canonicalUrl,
  publicationBaseUrl,
  { headersOnly = false } = {},
) {
  const root = resolve(rootDirectory);
  if (!existsSync(root) || !statSync(root).isDirectory()) {
    throw new Error(`Publication webroot does not exist: ${root}`);
  }

  const canonical = normalizeBaseUrl(canonicalUrl, "FHIR canonical");
  const publicationBase = normalizeBaseUrl(
    publicationBaseUrl,
    "Publication base",
  );
  if (canonical === publicationBase) {
    throw new Error("FHIR canonical and publication base must be different");
  }

  const oldUrl = `${canonical}/history.html`;
  const newUrl = `${publicationBase}/history.html`;
  const currentReleasePath = headersOnly
    ? null
    : setCurrentReleaseLocation(root, canonical, publicationBase);
  let files = 0;
  let replacements = 0;

  walk(root, (filename) => {
    if (!filename.endsWith(".html")) {
      return;
    }
    const source = readFileSync(filename, "utf8");
    const fixed = replaceInReleaseHeaders(source, oldUrl, newUrl);
    if (fixed.replacements === 0) {
      return;
    }

    writeAtomically(filename, fixed.output, "history-link");
    files += 1;
    replacements += fixed.replacements;
  });

  const broken = [];
  walk(root, (filename) => {
    if (!filename.endsWith(".html")) {
      return;
    }
    const source = readFileSync(filename, "utf8");
    for (const header of source.matchAll(RELEASE_HEADER)) {
      if (header[0].includes(oldUrl)) {
        broken.push(filename);
        break;
      }
    }
  });
  if (broken.length > 0) {
    throw new Error(
      `Canonical history links remain in publication headers:\n${broken
        .map((file) => `- ${file}`)
        .join("\n")}`,
    );
  }

  return { files, replacements, currentReleasePath };
}

if (import.meta.url === pathToFileURL(process.argv[1] ?? "").href) {
  const arguments_ = process.argv.slice(2);
  const headersOnly = arguments_[0] === "--headers-only";
  const positionalArguments = headersOnly ? arguments_.slice(1) : arguments_;

  if (positionalArguments.length !== 3) {
    console.error(
      "Usage: node scripts/fix-publication-history-links.mjs [--headers-only] <webroot> <canonical> <publication-base>",
    );
    process.exit(2);
  }

  const result = fixPublicationHistoryLinks(
    positionalArguments[0],
    positionalArguments[1],
    positionalArguments[2],
    { headersOnly },
  );
  const detail = headersOnly
    ? "the publication index was not modified"
    : `Current Versions points to ${result.currentReleasePath}`;
  console.log(
    `Updated ${result.replacements} publication history link(s) in ${result.files} file(s); ${detail}.`,
  );
}

// Contract tests for the VENDORED catalog skills (skills/fhir-ig-analysis,
// skills/fhir-ig-translation) and their pin in skills-lock.json.
//
// Why these run on every push and pull request: the drift check in
// sync-skills.yml needs the network, and a network check is allowed to skip.
// These four assertions need nothing, so the properties that actually keep the
// vendoring honest — the pin is a TAG, the skills are ON DISK, the documented
// install command names the SAME ref, and the sync is wired into CI — hold even
// when GitHub or npm is unreachable.
//
// Run with:  node --test scripts/vendored-skills.test.mjs
import { test } from "node:test";
import assert from "node:assert/strict";
import { readFileSync, existsSync, readdirSync, statSync, lstatSync } from "node:fs";
import { fileURLToPath } from "node:url";
import path from "node:path";

import { parseSkillsLockRef } from "./check-updates.mjs";

const repository = fileURLToPath(new URL("../", import.meta.url));
const CATALOG = "forschungsgruppe-digital-health/agent-skills";
const LOCK = path.join(repository, "skills-lock.json");

function lockEntries() {
  const data = JSON.parse(readFileSync(LOCK, "utf8"));
  return Object.entries(data.skills ?? {}).filter(([, v]) => v.source === CATALOG);
}

test("skills-lock.json pins the catalog to a release TAG, not a branch", () => {
  assert.ok(existsSync(LOCK), "skills-lock.json is missing — it carries the pin");
  const ref = parseSkillsLockRef(readFileSync(LOCK, "utf8"), CATALOG);
  assert.ok(ref, `no single ${CATALOG} ref in skills-lock.json`);
  // A branch name here means the install came from a moving target — the exact
  // failure mode the catalog's docs/consuming-skills.md warns about.
  assert.match(ref, /^v\d+\.\d+\.\d+$/, `skills-lock.json pins '${ref}', which is not a release tag`);
});

test("every skill pinned in the lock is VENDORED on disk", () => {
  // "Use this template" copies tracked files and fetches nothing. A skill that
  // is only pointed at, not vendored, does not exist for an agent in a created
  // module — this is the assertion that keeps that true.
  for (const [name, entry] of lockEntries()) {
    const skillMd = path.join(repository, "skills", name, "SKILL.md");
    assert.ok(existsSync(skillMd), `skills/${name}/SKILL.md is missing (pinned ${entry.ref})`);
    assert.match(readFileSync(skillMd, "utf8"), /^---\r?\nname:/, `skills/${name}/SKILL.md has no frontmatter`);
  }
});

test("the documented install command pins the same ref as the lock", () => {
  const ref = parseSkillsLockRef(readFileSync(LOCK, "utf8"), CATALOG);
  const vendored = new Set(lockEntries().map(([name]) => name));
  const offenders = [];
  const seen = [];

  // Walk the tracked prose. Vendored skill directories are excluded: their
  // content belongs to the catalog and is asserted by the drift check.
  const skipDirs = new Set(["node_modules", "output", "temp", "input-cache", "fsh-generated", ".git", "ig-template"]);
  (function walk(dir) {
    for (const name of readdirSync(dir)) {
      const p = path.join(dir, name);
      const rel = path.relative(repository, p);
      if (skipDirs.has(name)) continue;
      // Never follow directory symlinks: .agents/skills and .claude/skills
      // point back into skills/, and following them would re-visit vendored
      // catalog content under a rel-path that dodges the skills/ exclusion
      // below (exactly how a catalog-internal cross-skill ref once produced
      // false offenders). The canonical path is walked anyway.
      if (lstatSync(p).isSymbolicLink()) continue;
      if (statSync(p).isDirectory()) {
        if (rel.startsWith("skills/") && vendored.has(name)) continue;
        walk(p);
      } else if (name.endsWith(".md")) {
        for (const m of readFileSync(p, "utf8").matchAll(
          /forschungsgruppe-digital-health\/agent-skills\/tree\/([^\s"'`)]+)/g,
        )) {
          seen.push(rel);
          if (m[1] !== ref) offenders.push(`${rel} pins ${m[1]}`);
        }
        // The trap: `owner/repo@<tag>` installs from the DEFAULT BRANCH, because
        // `@` introduces a skill name in this CLI. Never document that form.
        for (const m of readFileSync(p, "utf8").matchAll(
          /npx skills add\s+["']?forschungsgruppe-digital-health\/agent-skills@/g,
        )) {
          offenders.push(`${rel} documents the non-pinning owner/repo@ref form (${m[0].trim()})`);
        }
      }
    }
  })(repository);

  assert.deepEqual(offenders, [], `install commands disagree with skills-lock.json (${ref})`);
  assert.ok(seen.length > 0, "no documented install command found — the pin is undocumented");
});

test("the sync script is wired into CI", () => {
  const workflow = path.join(repository, ".github/workflows/sync-skills.yml");
  assert.ok(existsSync(workflow), ".github/workflows/sync-skills.yml is missing");
  const text = readFileSync(workflow, "utf8");
  assert.match(text, /scripts\/sync-skills\.sh --check/, "the PR job does not run the drift check");
  assert.ok(existsSync(path.join(repository, "scripts/sync-skills.sh")), "scripts/sync-skills.sh is missing");
});

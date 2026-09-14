# `skills/` — the agent skills of this repository

One folder per skill, instructions in `SKILL.md` ([agent-skills
format](https://agentskills.io)). `.claude/skills` and `.agents/skills` are relative symlinks to
this directory, so every agent runtime reads the identical content.

Two kinds of skill share this directory. The difference decides **where a fix goes**.

## Written here — this repository is their source of truth

| Skill | What it does |
| --- | --- |
| [`wiki-consistency-check/`](wiki-consistency-check/SKILL.md) | The single convention checker: repo ↔ MII meta wiki drift plus the hard module-metadata contract. Mechanized by [`../scripts/convention-check.mjs`](../scripts/convention-check.mjs). |
| [`docs-steward/`](docs-steward/SKILL.md) | Checks and repairs this repository's documentation — links, paths and factual claims verified against the repo itself. |

Edit these here. Report-only by design: they propose, a human decides, and any change lands as a
pull request targeting `dev`.

## Vendored from the org catalog — pinned copies, do not edit

| Skill | What it does | Upstream |
| --- | --- | --- |
| [`fhir-ig-analysis/`](fhir-ig-analysis/SKILL.md) | Measures and compares Implementation Guides read-only — scope, complexity, hygiene, duplication, maturity. Was `skills/ig-analyze` + `scripts/ig-stats.py`. | [`agent-skills`](https://github.com/forschungsgruppe-digital-health/agent-skills) |
| [`fhir-ig-translation/`](fhir-ig-translation/SKILL.md) | Sets up a guide's translation supplements — translate from the default language or harvest a published rendering. Was `skills/ig-translate` + `scripts/ig-translate.sh`. | [`agent-skills`](https://github.com/forschungsgruppe-digital-health/agent-skills) |

These are **copies**, vendored at a pinned ref. Editing one here is drift: the next pull request
fails the check. Fix them in the catalog, cut a catalog release, then bump the pin here.

| | |
| --- | --- |
| The pin | [`../skills-lock.json`](../skills-lock.json) — `ref` per skill, written by the catalog's own installer |
| Refresh / verify | `scripts/sync-skills.sh` · `scripts/sync-skills.sh --check` (fails on drift) |
| CI | [`sync-skills.yml`](../.github/workflows/sync-skills.yml) — drift check on every pull request, weekly repair PR |
| Bump the pin | `scripts/sync-skills.sh --ref vX.Y.Z`, one reviewable diff; the weekly dependency check proposes it |

**Why vendored rather than only documented:** "Use this template" copies tracked files and fetches
nothing, and an agent can only invoke a skill that is present on disk. A pointer alone would remove
the capability from every module created from this template.

`mii-ig-migration` is in the catalog and deliberately **not** vendored here: it runs against a guide
*before* it lives on this scaffold — in the migrator's own checkout, not in a module.

## Installing catalog skills elsewhere

```bash
CATALOG=https://github.com/forschungsgruppe-digital-health/agent-skills/tree/v0.15.1
npx skills add "$CATALOG" --list
npx skills add "$CATALOG" --skill mii-ig-migration --agent claude-code codex --global --yes
```

Pin with the `/tree/<ref>` form — `owner/repo@v0.15.1` does *not* pin: in that CLI `@` introduces a
skill *name*, and the install silently comes from the default branch. Inside this checkout use
`scripts/sync-skills.sh` instead, which runs the same installer at the pinned ref with `--copy`.

## Skills never install other skills

A skill that needs another one states it as a **precondition** and prints the exact install command
for the user to run. It never installs anything itself: `allowed-tools` grants permissions, it does
not declare dependencies; an auto-install would write into the user's project as a side effect of an
unrelated invocation and make the run depend on a network fetch nobody asked for.

## What used to be here

[`RETIRED.md`](RETIRED.md) — the tombstone list: every skill that left this directory, where it went
and why.

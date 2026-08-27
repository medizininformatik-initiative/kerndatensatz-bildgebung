# Skills that left this repository

The tombstone list for `skills/`. A skill that used to live here and no longer does is recorded
below, permanently, with where it went — so that "was it renamed, was it moved, or did it just
break?" is answerable without reading Git history.

Nothing on this list was withdrawn. Each entry was **moved to the organization's skill catalog**,
[`forschungsgruppe-digital-health/agent-skills`](https://github.com/forschungsgruppe-digital-health/agent-skills),
where it has since been developed further. The catalog is the single source of truth for those
skills. They are still invocable here, under their catalog names, as **pinned vendored copies** kept
in step by `scripts/sync-skills.sh` and verified by CI ([`README.md`](README.md)) — so this
repository consumes them instead of maintaining a second version that drifts.

## Tombstones

| Skill | Removed | Moved to | Catalog name | Why |
| --- | --- | --- | --- | --- |
| `ig-analyze` | 2026-08 | `agent-skills` | [`fhir-ig-analysis`](https://github.com/forschungsgruppe-digital-health/agent-skills/blob/main/skills/fhir-ig-analysis/SKILL.md) | Ported to the catalog and reworked there: the analyser now ships **inside** the skill instead of being reached by parent traversal into `scripts/`, and the measurement defects found in its first real-task run were fixed. |
| `ig-translate` | 2026-08 | `agent-skills` | [`fhir-ig-translation`](https://github.com/forschungsgruppe-digital-health/agent-skills/blob/main/skills/fhir-ig-translation/SKILL.md) | Ported to the catalog and generalised there from the fixed `en`→`de` direction to any language pair, deriving the pair from the guide's own `i18n-default-lang` / `i18n-lang` instead of assuming it. |

Both catalog skills record this repository as their provenance, naming the commit they were taken
from.

The helper scripts each skill owned went with it and are **no longer in `scripts/`**:
`scripts/ig-stats.py` is now `skills/fhir-ig-analysis/scripts/ig-stats.py` in the catalog, and
`scripts/ig-translate.sh` is now `skills/fhir-ig-translation/scripts/ig-translate.sh`. No workflow
in this repository ever invoked either of them; they were run by hand by a maintainer.

## Where they are now

Both are **vendored back into this repository under their catalog names** —
[`fhir-ig-analysis/`](fhir-ig-analysis/SKILL.md) and
[`fhir-ig-translation/`](fhir-ig-translation/SKILL.md) — at the ref pinned in
[`../skills-lock.json`](../skills-lock.json). Nothing needs installing to use them here, in this
repository or in a module created from it; that is the whole point of vendoring them (see
[`README.md`](README.md)). Refresh or verify with `scripts/sync-skills.sh [--check]`; bump the pin
with `scripts/sync-skills.sh --ref vX.Y.Z`.

To install them **elsewhere** — globally, or into an unrelated checkout — use the catalog's own
installer:

```bash
CATALOG=https://github.com/forschungsgruppe-digital-health/agent-skills/tree/v0.15.1

npx skills add "$CATALOG" --list
npx skills add "$CATALOG" --skill fhir-ig-analysis fhir-ig-translation --agent claude-code codex --global --yes
```

**Pin the ref, and pin it the `/tree/<ref>` way.** The shorter `owner/repo@v0.15.1` form does *not*
pin — in that CLI `@` introduces a skill *name*, and the install silently comes from the default
branch. See the catalog's
[`docs/consuming-skills.md`](https://github.com/forschungsgruppe-digital-health/agent-skills/blob/main/docs/consuming-skills.md),
which also covers the pinned-sync-workflow and submodule paths.

Do not run a bare `npx skills add` **inside this checkout**: `.claude/skills` and `.agents/skills`
are symlinks to `skills/`, so it writes into the vendored tree at whatever ref you typed.
`scripts/sync-skills.sh` runs the same installer at the pinned ref, with `--copy`, which is what the
drift check compares against.

## What stays here

`docs-steward` and `wiki-consistency-check` are **not** in the catalog and are not going there as
they stand: `wiki-consistency-check` is bound to this repository's `scripts/convention-check.mjs`
and to the MII meta wiki, and both repositories' copies are deliberately scoped differently. They
remain local skills.

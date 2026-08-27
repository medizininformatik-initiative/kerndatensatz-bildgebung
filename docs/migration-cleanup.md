# Migration cleanup — what to delete, edit or decide when this repository moves

The repositories move to the `medizininformatik-initiative` GitHub
organisation on an explicit decision (see [project status](project-status.md)).
This page is the checklist for that day: which files existed only for the
pre-migration era, which need a one-pass edit, and which need a decision.
**Work through it top to bottom, then delete this file last.**

The companion IG template repository carries its own copy of this checklist
(`docs/migration-cleanup.md` there).

## Delete after migration

| File | Why it can go |
| --- | --- |
| `docs/project-status.md` | The prototype/organisation status page. Its open questions dissolve at adoption + move; carry any surviving decision (e.g. ownership) into the README or an ADR-style note before deleting. |
| `docs/migration-cleanup.md` | This file — last, once every row above and below is done. |

## Edit in one pass after migration (do not delete)

| File / place | What to change |
| --- | --- |
| Navigation links repo-wide | The recorded one-pass sweep: `forschungsgruppe-digital-health` → `medizininformatik-initiative` in READMEs, docs, skills. Canonical URLs and package ids already name the target and stay untouched. See the link policy in `docs/project-status.md`. |
| `IG_TEMPLATE_REPO_URL` repository variable | Delete it — the sync's default (target-org URL) resolves once the template repository is populated there. Recorded in `scripts/resolve-ig-template-source.sh` and `.github/workflows/sync-ig-template.yml`. |
| `scripts/check-updates.mjs` | `TEMPLATE_REPO` constant → target org (the comment above it says so). |
| `.github/CODEOWNERS` | Holds no active rule by design (no individual is named pre-adoption). Add the owning team of the target organisation. |
| `SECURITY.md`, `CODE_OF_CONDUCT.md` | Fill the deliberately-unset contacts/routes with the target organisation's (security contact, conduct-report contact — [issue #143](../../../issues/143)). |
| `docs/recipes/switch-template-to-published.md` sample URLs | Release-page links currently point at the hosting org; the sweep above covers them. |

## Not migration business (different lifecycle)

- `input/pagecontent/rendering-artifacts.md` + generator (`scripts/gen-rendering-demo.py`,
  `demo/`) — **release**-gated, not migration-gated: the convention check's M8
  fails a `release/**` branch while the demo page exists.
- The vendored `ig-template/` + sync machinery — dissolves when the template is
  consumed as a **published package** (`docs/recipes/switch-template-to-published.md`),
  which is a registry decision, not the org move.
- The comparison demo in `.github/workflows/ig-publisher.yml` — name-gated to
  this template repository and org-agnostic (it builds its URLs from
  `GITHUB_REPOSITORY_OWNER`), so it survives the move unedited.

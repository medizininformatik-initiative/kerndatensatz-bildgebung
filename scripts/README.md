# `scripts/`

Every executable helper in this repository. One directory, one concern: things
you run. The split between a `tools/` and a `scripts/` directory was not one a
reader could predict, so there is only this one.

The name matters: `go-publish.yml` checks this repository out into `automation/`
and calls `automation/scripts/...`, so the path is a contract with the
publication workflow. The same helper lives at the same path in
`ig-template-mii-kds`.

## Publication automation

Imported from
[kerndatensatz-basis](https://github.com/medizininformatik-initiative/kerndatensatz-basis)
(`main`). These support the gated formal-publication workflow
(`.github/workflows/go-publish.yml`), which runs their unit tests by an EXPLICIT
list — not a glob, because this directory now holds unrelated helpers too.

| Script | What it does |
| --- | --- |
| `copy-localized-table-backgrounds.sh` | Copies the per-language table background assets into the staged site |
| `fix-cloud-redirects.mjs` | Rewrites cloud redirects in the staged publication webroot |
| `fix-ig-registry-entry.mjs` | Produces the reviewable FHIR IG Registry patch |
| `fix-publication-history-links.mjs` | Repairs history links across published versions |
| `install-history-template.mjs` | Installs the HL7 history template into the webroot |
| `merge-publication-webroot.mjs` | Merges the new version into the existing publication webroot |
| `verify-preview-preservation.mjs` | Asserts no branch preview was destroyed by a publication |

## This template's own helpers

| Script | What it does | Run by |
| --- | --- | --- |
| `first-run-bootstrap.sh` | One-time setup of a created module: branches, protection, removal of template-only files | a module author, once |
| `convention-check.mjs` | Asserts the MII metadata contract (id/canonical/name/packageId, pinned versions) and that OPTIONAL (0..1) menu pages are decided before a release (M9, `docs/optional-pages.md`) | `convention-check.yml` |
| `language-model-check.sh` | Fails the build when prose contradicts the English-default / German-translation language model | `convention-check.yml` |
| `check-updates.mjs` | Reports drift between the pinned toolchain and what upstream released | `dependency-check.yml` |
| `sync-ig-template.sh` | Re-vendors `ig-template/`, or fails on drift (`--check`) | `sync-ig-template.yml` |
| `resolve-ig-template-source.sh` | Resolves which template repository the sync reads from, and whether it is reachable | `sync-ig-template.yml` (both jobs, before the sync step) |
| `sync-skills.sh` | Re-vendors the org-catalog skills into `skills/` at the ref pinned in `skills-lock.json`, or fails on drift (`--check`); `--probe` reports whether the catalog is reachable; `--ref vX.Y.Z` bumps the pin | `sync-skills.yml` (both jobs), and a maintainer for a pin bump |
| `gen-rendering-demo.py` | Regenerates the demonstration page in both languages from `demo-en.md` / `demo-de.md` + `rendering-demo-codes.json` — run `python3 scripts/gen-rendering-demo.py .` after editing either source; never hand-edit the generated pages | a maintainer, after editing the demo sources |
| `set-su-termserv-secrets.sh` | Validates an SU-TermServ client certificate and uploads it as repository secrets | a maintainer, once |
| `seed-comparison-cache.sh` | Places the previous release's `package.tgz` (a GitHub Release asset) into `~/.fhir/packages` so the publisher's `version-comparison` can load it; no-op while the parameter is commented out | `ig-publisher.yml`, `module-release.yml`, `go-publish.yml`, `release-demo.yml` (before the publisher) |
| `self-check-substitute.sh` | **Template repo only.** The single source of truth for the self-check placeholder values; substitutes them into workspace copies of `sushi-config.yaml`, `ig.ini` and `input/**` — contents *and* file names. With `SELF_CHECK_RELEASE_TAG=vX.Y.Z` the demo IG's CalVer is derived from the tag instead of the fixed draft value, and the value it wrote is reported as `demo_version` | `ig-publisher.yml` (preview), `release-demo.yml` (released demo) |
| `update-demo-links.mjs` | **Template repo only.** Conservatively repoints the hand-authored `gh-pages/index.html` at a newly released demo; `--check` dry-runs it and prints the before/after diff | `release-demo.yml`, and manually |

## Moved out of this directory

`ig-stats.py` and `ig-translate.sh` were the tooling of the `ig-analyze` and `ig-translate` skills.
Both skills moved to the organization's skill catalog and took their scripts with them, so the
tooling now ships *inside* the skill instead of being reached by parent traversal out of
`skills/…` into here. They are `fhir-ig-analysis` and `fhir-ig-translation` in
[`agent-skills`](https://github.com/forschungsgruppe-digital-health/agent-skills), vendored back
into this repository at a pinned ref — so the tooling is still on disk, now as
[`../skills/fhir-ig-analysis/scripts/ig-stats.py`](../skills/fhir-ig-analysis/SKILL.md) and
[`../skills/fhir-ig-translation/scripts/ig-translate.sh`](../skills/fhir-ig-translation/SKILL.md),
maintained in the catalog and refreshed by `sync-skills.sh`. See
[`../skills/README.md`](../skills/README.md). No workflow invoked either script.

## Tests

```bash
node --test scripts/*.test.mjs            # every unit test (what CI runs on a PR)
node --test scripts/*.template-test.mjs   # scaffold contract — template repo only
```

Two of these test the repository rather than a script:
`toolchain-pins.test.mjs` fails when the `env:` pin blocks of the four build
workflows stop agreeing (they must be copies — a workflow cannot read another
workflow's `env:`; `release-demo.yml` is tolerated as absent because the
bootstrap removes it from a module), and
`publication-url-consistency.template-test.mjs` asserts the placeholder metadata
contract.

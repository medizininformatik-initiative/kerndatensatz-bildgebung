# IG Publisher Migration Report — Modul Bildgebung (Pilot A, EN-primary)

**Approach:** A (this module repo, English primary language, German translations)
**Module:** bildgebung (`de.medizininformatikinitiative.kerndatensatz.bildgebung`)
**Date:** 2026-07-23
**Work branch:** `feat/ig-publisher-migration-2026-07-23`
**Base branch:** `feat/ig-publisher-migration` (integration base; NOT main)
**Canonical (unchanged):** `https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung`

## Summary

Migrated the Simplifier-rendered IG narrative of the Imaging module to the HL7 FHIR IG Publisher
with multi-language support (EN default, DE translation), following the `kerndatensatz-basis`
reference pattern and the `mii-ig-publisher-migration` skill.

- FSH artifacts (84 files) were **not modified** — IDs and canonical URLs are unchanged.
- Narrative source was found **inside the repo** at `implementation-guides/mii-ig-bildgebung-de-v2027/`
  (Simplifier `.page.md` export). No live Simplifier scrape was needed.
- `sushi .` introduces **0 new errors / 0 warnings**. The 3 errors present are **pre-existing on `main`**
  (choice-element value assignments in three Procedure profiles) and are out of migration scope.

## Source inventory

The narrative lived in the repo as an exported Simplifier IG tree (three versions: v2025, v2026, v2027).
The **v2026** tree is the authoritative source — it matches the target `version: 2026.2.0` in
sushi-config (v2027 is a `2027.0.0-draft` preview). The two trees are byte-identical except:
(a) v2027 adds a `Messung/` (Measurement) profile folder — its two extension pages
(SeriesUID/SOPInstanceUID) are duplicates of the Observation ones and map to the same extension
IDs, so no content was lost by using v2026; and (b) `Index.page.md` — the version table and one
author (Fabian Schinzler, v2027-only) differ. `index.md` (EN+DE) was aligned to v2026
(version 2026.2.0, Fabian Schinzler omitted). Structure:

```
MIIIGModulBildgebung/
├── Index.page.md
├── Release-Notes.page.md
├── BeschreibungModul.page.md
├── KontextimGesamtprojektBezgezuanderenModulen.page.md
├── Referenzen.page.md
├── AnwendungsflleInformationsmodell/
│   ├── Index / BeschreibungvonSzenarien / Datensaetze
│   └── UML/ (Index, UML_Meta, UML_Befund)
└── TechnischeImplementierung/
    ├── Index / Conformance / CapabilityStatement / Terminologien
    └── FHIR-Profile/  (Index + per-profile + per-extension .page.md, ~35 pages)
```

Images taken from `implementation-guides/ImplementationGuide-Common/images/` and copied
(lowercased) into `input/images/`.

## Infrastructure created

| File | Purpose |
|------|---------|
| `ig.ini` | `template = fhir2.base.template#current` (multi-language template). Removed from `.gitignore` so it is tracked. |
| `sushi-config.yaml` (edited) | Added `pages:`, expanded `menu:` (EN labels), added `parameters:` (i18n-default-lang: en, i18n-lang: [de], translation-sources, path-pages, excludettl). |
| `input/translations/de/ImplementationGuide-mii-ig-bildgebung.po` | German menu/page-title translations. |
| `input/ignoreWarnings.txt` | Copied from basis (all-languages ValueSet suppression). |
| `.github/workflows/ig-publisher.yml` | Copied from basis (Docker IG Publisher + NGINX mTLS tx proxy + GitHub Pages). |
| `scripts/copy-localized-table-backgrounds.sh`, `scripts/fix-publication-history-links.mjs` | Referenced by the workflow; copied from basis. |
| `input/pagecontent/`, `input/translations/de/pagecontent/`, `input/intro-notes/`, `input/translations/de/intro-notes/`, `input/images/` | New directory structure. |

The existing `.github/workflows/main.yml` (Simplifier FHIR validation) was left in place.

## Narrative pages migrated

**13 content pages** (each in EN primary + DE translation):

| Page (EN file) | Source page.md | Notes |
|---|---|---|
| index.md | Index | Stripped `{{index:root}}`; kept impressum/authors/copyright as Markdown. |
| module-description.md | BeschreibungModul | — |
| context.md | KontextimGesamtprojekt… | Inter-module links point to basis IG (EN root / DE `/de/`); Medikation link kept. |
| use-cases.md | AnwendungsflleInformationsmodell/Index | Source was "intentionally blank" → replaced with a short section intro + child links. |
| scenarios.md | …/BeschreibungvonSzenarien | — |
| datasets.md | …/Datensaetze | `{{tree:MII_LM_Bildgebung}}` → link to `StructureDefinition-mii-lm-bildgebung.html`. |
| uml.md | …/UML/{Index,UML_Meta,UML_Befund} | **Three source pages merged into one**; `{{render:...}}` → `![](image.png)`. |
| conformance.md | TechnischeImplementierung/Conformance | Anchor `#missing-data` (EN) / `#fehlende-daten` (DE) preserved. |
| terminology.md | …/Terminologien | Warning-table image → `![Warning](warning.jpg)`; indented tag blocks → fenced code. |
| capability-statements.md | …/CapabilityStatement | Stripped `{{render:canonical}}` + Simplifier resolve link → link to CS page. |
| references.md | Referenzen | — |
| release-notes.md | Release-Notes | Stripped `## {{page-title}}`. |
| downloads.md | (none) | New standard downloads page. |

## Profile / Extension intro-notes

Custom prose that in Simplifier was mixed with FQL/tabs on profile pages was moved to
`input/intro-notes/StructureDefinition-<id>-intro.md` (EN) and the DE mirror. Everything
auto-generated by IG Publisher (profile metadata tables, tree, MS tables, XML/JSON, search
params, example embeds) was dropped.

**27 intro-note IDs** (each EN + DE = 54 files), all verified against real StructureDefinition IDs:
- 13 profiles (incl. DiagnosticReport stages 1–4, ImagingStudy incl. full DICOM-tag mapping table + composite search-param note, Composition, BodyStructure, Device, ServiceRequest, CarePlan, ImagingProcedure, Read/TNM-Read procedures, ContrastAdministration, Observation, Measurement)
- 14 extensions (ImagingReason, modality CT/MR/NM/PT/US/MG-CR-DX with their DICOM-tag lists, instance-details, series-contrast, series-sliceThickness, height, weight, series-uid, sop-instance-uid)

## Simplifier tag crosswalk applied

| Simplifier tag | Handling |
|---|---|
| `## {{page-title}}` | Removed (IG Publisher generates title). |
| `{{index:root}}` | Removed (auto TOC). |
| `<tabs>…</tabs>`, `{{tree, buttons}}`, `{{xml}}`, `{{json}}` (profile view), `{{link}}` | Removed (auto-generated on profile pages). |
| `@```…FQL```` blocks | Removed (metadata/MS/search-param tables auto-generated). |
| `{{tree:MII_LM_Bildgebung}}` | → link to Logical Model page. |
| `{{render:…/images/X.png}}` | → `![Alt](x.png)` (image copied to input/images, lowercased). |
| `{{render:https://…/CapabilityStatement/metadata}}` | → link to CS page. |
| `{{json:fsh-generated/…Example….json}}` | Removed (examples auto-listed); example prose kept where useful. |
| Simplifier `resolve?canonical=…` links | Removed. |
| 4-space indented code (Python/DICOM tag maps) | → fenced code blocks. |

## Verification (pre-PR gate)

- `grep -rlE '\{\{|<tabs|@```' input/pagecontent input/intro-notes input/translations/de` → **empty (clean)**.
- Canonical URLs **unchanged** (sushi-config canonical + all FSH IDs untouched).
- `sushi .` → **3 errors, 0 warnings** — all 3 errors pre-exist on `main` (see below); migration adds none.
- EN/DE filename parity: pagecontent 13/13, intro-notes 27/27 — **exact match**.
- All 27 intro-note IDs resolve to existing StructureDefinition resources.

## TODO:REVIEW / open items

1. **Pages must be activated by an admin** — GitHub Pages + the shared CDS terminology secrets
   (`CDS_DEV_CLIENT_CERT`, `_KEY`, `_CERT_PASSWORD`) and `vars.PAGES_ACTIONS_ENABLED` are org-level
   and cannot be set from here. The `ig-publisher.yml` workflow will not fully deploy until enabled.
2. **Full IG Publisher build not run locally** — Docker + terminology certs unavailable in this
   environment (expected, per task). Only the SUSHI gate was run. A real build should be verified in CI.
3. **Pre-existing SUSHI errors (not from migration):** three Procedure profiles
   (`MII_PR_Bildgebung_Bildgebungsprozedur`, `..._Radiologische_Befundungsprozedur`,
   `..._TNM_Radiologische_Befundungsprozedur`) each report "multiple choice value assignments for
   choice element StructureDefinition.extension.value[x]." Present on `main` before any change here.
   Should be fixed by the module team but is out of scope for this narrative migration.
4. **`ig.ini` un-ignored:** removed the `ig.ini` line from `.gitignore` (it is now an authored input,
   not Simplifier-generated) so the IG Publisher config is tracked. Please confirm this is desired.
5. **`fsh-generated/` diffs committed:** this repo intentionally tracks `fsh-generated/` (no CI FSH
   pipeline yet, per .gitignore comment). The 6 changed StructureDefinition JSONs are the normal
   SUSHI re-run output; committed for consistency with repo convention.
6. **`uml.md` consolidation:** three separate Simplifier UML pages were merged into one page with
   `##` sub-sections. If the team prefers the original 3-page hierarchy, split accordingly.
7. **Downloads page** is a standard template (no Simplifier source) — links assume default IG
   Publisher output artifact names; verify after first build.
8. **Inter-module basis links** use hardcoded `2026.0.0`; when basis re-publishes these may need bumping.

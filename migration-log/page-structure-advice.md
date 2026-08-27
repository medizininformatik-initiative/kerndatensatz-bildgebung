# Page-structure advice

**This report PROPOSES and never edits a module.** It reads the source and target repositories read-only; its only writes are this report and the page-map v2 TSV (`--map`) - the map is the PRIMARY output and the contract step 5 consumes, this report is its rendering. Every routing row below is the branch the MEASUREMENTS support - a human (or the skill at step 5) decides and applies it.

| Input | Value |
| --- | --- |
| source repo | `/private/tmp/claude-501/-Users-thome-code-fhir-profiling-kerndatensatz-bildgebung/35dfd370-bb04-4710-87f2-988cf853a800/scratchpad/bildgebung-source-unmigrated` |
| target repo | `.` |
| routing table | `/Users/thome/code/fhir-profiling/kerndatensatzmodul-onkologie/.claude/skills/mii-ig-migration/references/routing-table.tsv` (17 patterns) |
| Gate 0 preflight | `/Users/thome/code/fhir-profiling/kerndatensatz-bildgebung/migration-log/preflight-analysis.json` |
| artefact census | fsh-generated/resources (72 resources; cross-checked by Gate 0's generated_crosscheck) |
| page map | `migration-log/page-map.tsv` |
| generated | 2026-08-27T16:57:48Z |
| script | `page-structure-advice.py` v1.3.0 |

Contract limits in force: menu total <= 33, dropdown children <= 10, top level <= 8, menu depth <= 2; size gate at > 2500 words, > 4 merged sources, or ANY repeated heading title; hub at >= 3 children.

## 1. Source page tree

The tree is taken from the FIRST of four inputs that yields pages: **(a)** the `pages:` block of the source `sushi-config.yaml`, **(b)** the authoritative Simplifier guide tree under `implementation-guides/` (spec 5.1a), **(c)** a flat count of `input/pagecontent/*.md`.

**Input used: (b) the Simplifier guide tree `implementation-guides/mii-ig-bildgebung-de-v2027`, walked from its `toc.yaml`.**

### 1.0 Simplifier guide trees found

Every tree under `implementation-guides/` is listed - the choice is never made silently. Dispositions follow spec 5.1a: #1 authoritative, #2 parallel-language harvest seed, #3 historical/shared retained, #4 unrecognized.

| Guide tree | Title | Version (dir name) | Version (guide.yaml) | Lang | `*.page.md` on disk | Disposition |
| --- | --- | --- | --- | --- | ---: | --- |
| `ImplementationGuide-Common` | - | - | - | - | 0 | unrecognized directory - needs a retain/retire proposal (5.1a #4) |
| `mii-ig-bildgebung-de-v2025` | MII IG Befunde bildgebender Verfahren DE v2025 | 2025 | 2025.0.0 | DE | 37 | historical version tree - retain unchanged, Gate-D retirement set (5.1a #3) |
| `mii-ig-bildgebung-de-v2026` | Medizininformatik Initiative - Implementation Guide - Modul Bildgebung v2026 | 2026 | 2026.0.0 | DE | 42 | historical version tree - retain unchanged, Gate-D retirement set (5.1a #3) |
| `mii-ig-bildgebung-de-v2027` | Medizininformatik Initiative - Implementation Guide - Modul Bildgebung v2026 | 2027 | 2026.0.0 | DE | 45 | **AUTHORITATIVE** - steps 5.4/5.5 operate on this tree |

**Chosen: `mii-ig-bildgebung-de-v2027`** - HUMAN OVERRIDE: --guide-tree mii-ig-bildgebung-de-v2027 (the spec 5.1a ranking below was not applied).

The module's narrative language read from `sushi-config.yaml` `language:` is **not stated**.

**A human can override this choice**: re-run with `--guide-tree <directory name>`. The ranking above is evidence, not a verdict - confirm it against the rendered IG and record it in the inventory (Gate B reviews it).

### 1.1 Depth histogram

Walked from `implementation-guides/mii-ig-bildgebung-de-v2027/toc.yaml`: an entry whose `filename` ends in `.page.md` is a page, any other `filename` is a sub-directory holding its own `toc.yaml`. A sub-directory is a LEVEL, not a page, so every page of one directory shares one level (that is how Simplifier renders a folder), and the levels are shifted so the shallowest page sits at level 1 - this guide's root `toc.yaml` lists only a folder, which adds no page level. Routing still needs a page parent, so each directory is represented by its `Index.page.md` and its remaining pages plus its sub-folders' representatives become that page's children; a parent may therefore share its children's level.

| Level | Pages | Share |
| --- | ---: | ---: |
| 1 | 5 | 11% |
| 2 | 7 | 16% |
| 3 | 14 | 31% |
| 4 | 19 | 42% |
| **total** | **45** | 100% |

Maximum depth used: **4**. Total words across the 45 source pages: **10822**. Pages in `input/pagecontent/`: **0**.

### 1.1a Structural findings in the source tree

Reported, never silently absorbed - each one is a page the migration would otherwise lose or invent.

- `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Messung/` holds pages but **no `toc.yaml` links to it** - its pages are placed by directory nesting and are invisible in the rendered guide's navigation.
- `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/toc.yaml` lists `Extension-series-device.page.md`, but the **page file does not exist** - the entry is dangling and produced no page.
- `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/TNMRadiologicalReadProcedure.page.md` exists on disk but is **not listed in MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/toc.yaml** - it is in the tree below, flagged, so the migration cannot lose it.
- `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Messung/Extension-SOPInstanceUID.page.md` exists on disk but is **in a directory no toc.yaml reaches** - it is in the tree below, flagged, so the migration cannot lose it.
- `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Messung/Extension-SeriesUID.page.md` exists on disk but is **in a directory no toc.yaml reaches** - it is in the tree below, flagged, so the migration cannot lose it.
- `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Messung/Index.page.md` exists on disk but is **in a directory no toc.yaml reaches** - it is in the tree below, flagged, so the migration cannot lose it.

### 1.2 Parent-child tree

```
`- Index  `MIIIGModulBildgebung/Index.page.md`
   |- Release Notes  `MIIIGModulBildgebung/Release-Notes.page.md`
   |- Beschreibung Modul  `MIIIGModulBildgebung/BeschreibungModul.page.md`
   |- Kontext im Gesamtprojekt / Bezüge zu anderen Modulen  `MIIIGModulBildgebung/KontextimGesamtprojektBezgezuanderenModulen.page.md`
   |- Referenzen  `MIIIGModulBildgebung/Referenzen.page.md`
   |- Index  `MIIIGModulBildgebung/AnwendungsflleInformationsmodell/Index.page.md`
   |  |- Beschreibung von Szenarien für die Anwendung der Module  `MIIIGModulBildgebung/AnwendungsflleInformationsmodell/BeschreibungvonSzenarienfrdieAnwendungderModule.page.md`
   |  |- Datensätze inkl. Beschreibungen  `MIIIGModulBildgebung/AnwendungsflleInformationsmodell/Datensaetze_inkl._Beschreibungen.page.md`
   |  `- Index  `MIIIGModulBildgebung/AnwendungsflleInformationsmodell/UML/Index.page.md`
   |     |- UML Metadaten  `MIIIGModulBildgebung/AnwendungsflleInformationsmodell/UML/UML_Meta.page.md`
   |     `- UML Befund  `MIIIGModulBildgebung/AnwendungsflleInformationsmodell/UML/UML_Befund.page.md`
   `- Index  `MIIIGModulBildgebung/TechnischeImplementierung/Index.page.md`
      |- Terminologien  `MIIIGModulBildgebung/TechnischeImplementierung/Terminologien.page.md`
      |- CapabilityStatement  `MIIIGModulBildgebung/TechnischeImplementierung/CapabilityStatement.page.md`
      |- Conformance  `MIIIGModulBildgebung/TechnischeImplementierung/Conformance.page.md`
      `- Index  `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Index.page.md`
         |- BodyStructure  `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/BodyStructure.page.md`
         |- CarePlan  `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/CarePlan.page.md`
         |- Composition  `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Composition.page.md`
         |- Device  `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Device.page.md`
         |- DiagnosticReport  `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/DiagnosticReport.page.md`
         |- ImagingProcedure  `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingProcedure.page.md`
         |- Constrast MedicationAdministration  `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ContrastAdministration.page.md`
         |- ReadProcedure  `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ReadProcedure.page.md`
         |- ServiceRequest  `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ServiceRequest.page.md`
         |- TNMRadiologicalReadProcedure  `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/TNMRadiologicalReadProcedure.page.md`
         |- ImagingStudy  `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Index.page.md`
         |  |- Extension Bildgebungsgrund  `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Extension-ImagingReason.page.md`
         |  |- Extension Größe  `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Extension-Height.page.md`
         |  |- Extension Gewicht  `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Extension-Weight.page.md`
         |  |- Extension Modalität CT  `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Extension-CT.page.md`
         |  |- Extension Modalität MG CR DX  `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Extension-MG_CR_DX.page.md`
         |  |- Extension Modalität MR  `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Extension-MR.page.md`
         |  |- Extension Modalität PT  `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Extension-PT.page.md`
         |  |- Extension Modalität NM  `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Extension-NM.page.md`
         |  |- Extension Modalität US  `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Extension-US.page.md`
         |  |- Extension Kontrastmittelgabe  `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Extension-series-contrast.page.md`
         |  |- Extension Schichtdicke  `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Extension-series-sliceThickness.page.md`
         |  `- Extension Instanzdetails  `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Extension-instance-details.page.md`
         |- Observation  `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Observation/Index.page.md`
         |  |- Extension Serien UID  `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Observation/Extension-SeriesUID.page.md`
         |  `- Extension SOP Instance UID  `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Observation/Extension-SOPInstanceUID.page.md`
         |- Extension-SOPInstanceUID  `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Messung/Extension-SOPInstanceUID.page.md`
         |- Extension-SeriesUID  `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Messung/Extension-SeriesUID.page.md`
         `- Index  `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Messung/Index.page.md`
```

## 2. Target page measurements

Words = whitespace tokens after removing HTML comments, table separator rows and the markup characters `>`, `|`, `*`, `_`, `` ` ``. Headings, list items, table cells and fenced code all count: the gate measures what the reader has to traverse. Repeated titles are compared case-sensitively; each repeat costs one publisher-appended anchor (`-2`, `-3`, ...). Merged sources are the distinct `<!-- source: X.md -->` section markers the migration itself left behind.

| Page | Words | h2 | h3 | h4 | other h | Repeated titles | Anchor collisions | Merged sources | Size gate |
| --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | --- |
| `ImplementationGuide-mii-ig-bildgebung.md` | 286 | 0 | 5 | 0 | 0 | 0 | 0 | 0 | ok |
| `capability-statements.md` | 31 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `changes.md` | 560 | 0 | 1 | 1 | 1 | 0 | 0 | 0 | ok |
| `code-systems.md` | 148 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `downloads.md` | 325 | 0 | 0 | 7 | 0 | 0 | 0 | 0 | ok |
| `examples.md` | 43 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | ok |
| `extensions.md` | 121 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `guidance.md` | 130 | 0 | 2 | 0 | 0 | 0 | 0 | 0 | ok |
| `implementer-guidance.md` | 32 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | ok |
| `index.md` | 477 | 0 | 9 | 0 | 0 | 0 | 0 | 0 | ok |
| `logical-models.md` | 33 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `metadata.md` | 2198 | 0 | 1 | 7 | 1 | 0 | 0 | 0 | ok |
| `profiles.md` | 77 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | ok |
| `researcher-guidance.md` | 111 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `security-and-privacy.md` | 444 | 0 | 0 | 3 | 0 | 0 | 0 | 0 | ok |
| `translationinfo.md` | 80 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | ok |
| `uml-diagrams.md` | 42 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | ok |
| `value-sets.md` | 178 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `version-history.md` | 548 | 0 | 0 | 6 | 0 | 0 | 0 | 0 | ok |

## 3. Menu budget

Clickable entries are the menu's real destinations: every `<li><a>` except the dropdown toggles, which only repeat their first child's href.

| Metric | Measured | Contract limit | Headroom |
| --- | ---: | ---: | ---: |
| total clickable entries | 26 | 33 | 7 |
| widest dropdown (Artifacts) | 11 | 10 | -1 |
| top-level entries | 7 | 8 | 1 |
| menu depth used | 2 | 2 | 0 |

| Dropdown | Children | Free (of 10) |
| --- | ---: | ---: |
| Guidance | 5 | 5 |
| Conformance | 5 | 5 |
| Artifacts | 11 | -1 |
| Metadata | 2 | 8 |

After the proposals in section 4: total 7 free, top level 1 free, freest dropdown Metadata (8 free).

## 4. Routing proposal (spec 9d/9e)

One row per source page. The branch number is the spec's; the measurement column is the number that forced it. Branch-4 rows state the presentation (4a) and the visibility (4b), and, where a menu entry fits, the remaining budget after it. `Words` is the source page's own size, counted the same way as the target pages in section 2.

| # | Source page | Lvl | Children | Words | Branch | Proposed destination | Measurement |
| ---: | --- | ---: | ---: | ---: | --- | --- | --- |
| 1 | `MIIIGModulBildgebung/Index.page.md` | 1 | 6 | 360 | 3 merge into agreed page | index.md | agreed page named 'index' exists in the target |
| 2 | `MIIIGModulBildgebung/Release-Notes.page.md` | 1 | 0 | 495 | 3 merge into agreed page | changes.md | semantic match 'releasenotes' -> changes (routing-table) |
| 3 | `MIIIGModulBildgebung/BeschreibungModul.page.md` | 1 | 0 | 655 | 3 merge into agreed page | index.md | semantic match 'beschreibungmodul' -> index (routing-table) |
| 4 | `MIIIGModulBildgebung/KontextimGesamtprojektBezgezuanderenModulen.page.md` | 1 | 0 | 424 | 3 merge into agreed page | implementer-guidance.md | semantic match 'kontextimgesamtprojekt' -> implementer-guidance (routing-table) |
| 5 | `MIIIGModulBildgebung/Referenzen.page.md` | 1 | 0 | 163 | 3 merge into agreed page | implementer-guidance.md | semantic match 'referenzen' -> implementer-guidance (routing-table) |
| 6 | `MIIIGModulBildgebung/AnwendungsflleInformationsmodell/Index.page.md` | 2 | 3 | 13 | 4 own page | own page (HUB), pages:-NESTED under MIIIGModulBildgebung/Index.page.md (its host has no menu entry) <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | no artefact anchor; no agreed page; 3 child page(s) |
| 7 | `MIIIGModulBildgebung/AnwendungsflleInformationsmodell/BeschreibungvonSzenarienfrdieAnwendungderModule.page.md` | 2 | 0 | 129 | 3 merge into agreed page | guidance.md | semantic match 'szenarien' -> guidance (routing-table) |
| 8 | `MIIIGModulBildgebung/AnwendungsflleInformationsmodell/Datensaetze_inkl._Beschreibungen.page.md` | 2 | 0 | 112 | 3 merge into agreed page | logical-models.md | semantic match 'datensaetze' -> logical-models (routing-table) |
| 9 | `MIIIGModulBildgebung/AnwendungsflleInformationsmodell/UML/Index.page.md` | 3 | 2 | 196 | 4 own page | own page (merged page), pages:-NESTED under MIIIGModulBildgebung/AnwendungsflleInformationsmodell/Index.page.md (its host has no menu entry) <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | no artefact anchor; no agreed page; 2 child page(s) |
| 10 | `MIIIGModulBildgebung/AnwendungsflleInformationsmodell/UML/UML_Meta.page.md` | 3 | 0 | 68 | 3 merge into agreed page | uml-diagrams.md | semantic match 'uml' -> uml-diagrams (routing-table) |
| 11 | `MIIIGModulBildgebung/AnwendungsflleInformationsmodell/UML/UML_Befund.page.md` | 3 | 0 | 124 | 3 merge into agreed page | uml-diagrams.md | semantic match 'uml' -> uml-diagrams (routing-table) |
| 12 | `MIIIGModulBildgebung/TechnischeImplementierung/Index.page.md` | 2 | 4 | 12 | 4 own page | own page (HUB), pages:-NESTED under MIIIGModulBildgebung/Index.page.md (its host has no menu entry) <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | no artefact anchor; no agreed page; 4 child page(s) |
| 13 | `MIIIGModulBildgebung/TechnischeImplementierung/Terminologien.page.md` | 2 | 0 | 346 | 3 merge into agreed page | code-systems.md | semantic match 'terminologien' -> code-systems (routing-table) |
| 14 | `MIIIGModulBildgebung/TechnischeImplementierung/CapabilityStatement.page.md` | 2 | 0 | 85 | 3 merge into agreed page | capability-statements.md | semantic match 'capabilitystatement' -> capability-statements (routing-table) |
| 15 | `MIIIGModulBildgebung/TechnischeImplementierung/Conformance.page.md` | 2 | 0 | 467 | 4 own page | own page (merged page), pages:-NESTED under MIIIGModulBildgebung/TechnischeImplementierung/Index.page.md (its host has no menu entry) | no artefact anchor; no agreed page; 0 child page(s) |
| 16 | `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Index.page.md` | 3 | 15 | 610 | 2 section on index page | h3/h4 section on value-sets.md <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | 15 children, 3 anchoring distinct artefacts (ValueSet) |
| 17 | `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/BodyStructure.page.md` | 3 | 0 | 187 | 2 section on index page | h3/h4 section on value-sets.md | child of family overview MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Index.page.md (no anchor of its own) |
| 18 | `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/CarePlan.page.md` | 3 | 0 | 147 | 2 section on index page | h3/h4 section on value-sets.md | child of family overview MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Index.page.md (no anchor of its own) |
| 19 | `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Composition.page.md` | 3 | 0 | 172 | 2 section on index page | h3/h4 section on value-sets.md | child of family overview MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Index.page.md (no anchor of its own) |
| 20 | `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Device.page.md` | 3 | 0 | 145 | 2 section on index page | h3/h4 section on value-sets.md | child of family overview MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Index.page.md (no anchor of its own) |
| 21 | `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/DiagnosticReport.page.md` | 3 | 0 | 451 | 1 intro-note | input/intro-notes/ValueSet-mii-vs-bildgebung-diagnostic-report-code-lnc-intro.md | compact match on mii-vs-bildgebung-diagnostic-report-code-lnc (2 candidate artefacts) |
| 22 | `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingProcedure.page.md` | 3 | 0 | 165 | 1 intro-note | input/intro-notes/ValueSet-mii-vs-bildgebung-imaging-procedure-code-sct-intro.md | compact match on mii-vs-bildgebung-imaging-procedure-code-sct (1 candidate artefact) |
| 23 | `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ContrastAdministration.page.md` | 3 | 0 | 167 | 2 section on index page | h3/h4 section on value-sets.md | child of family overview MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Index.page.md (no anchor of its own) |
| 24 | `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ReadProcedure.page.md` | 3 | 0 | 160 | 2 section on index page | h3/h4 section on value-sets.md | child of family overview MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Index.page.md (no anchor of its own) |
| 25 | `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ServiceRequest.page.md` | 3 | 0 | 157 | 1 intro-note | input/intro-notes/ValueSet-mii-vs-bildgebung-service-request-code-sct-intro.md | compact match on mii-vs-bildgebung-service-request-code-sct (1 candidate artefact) |
| 26 | `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/TNMRadiologicalReadProcedure.page.md` | 3 | 0 | 151 | 2 section on index page | h3/h4 section on value-sets.md <br>_(on disk but not listed in MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/toc.yaml)_ | child of family overview MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Index.page.md (no anchor of its own) |
| 27 | `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Index.page.md` | 4 | 12 | 435 | 2 section on index page | h3/h4 section on value-sets.md <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | child of family overview MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Index.page.md (no anchor of its own) |
| 28 | `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Extension-ImagingReason.page.md` | 4 | 0 | 211 | 2 section on index page | h3/h4 section on value-sets.md | child of family overview MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Index.page.md (no anchor of its own) |
| 29 | `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Extension-Height.page.md` | 4 | 0 | 192 | 2 section on index page | h3/h4 section on value-sets.md | child of family overview MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Index.page.md (no anchor of its own) |
| 30 | `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Extension-Weight.page.md` | 4 | 0 | 191 | 2 section on index page | h3/h4 section on value-sets.md | child of family overview MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Index.page.md (no anchor of its own) |
| 31 | `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Extension-CT.page.md` | 4 | 0 | 260 | 2 section on index page | h3/h4 section on value-sets.md | child of family overview MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Index.page.md (no anchor of its own) |
| 32 | `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Extension-MG_CR_DX.page.md` | 4 | 0 | 268 | 2 section on index page | h3/h4 section on value-sets.md | child of family overview MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Index.page.md (no anchor of its own) |
| 33 | `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Extension-MR.page.md` | 4 | 0 | 267 | 2 section on index page | h3/h4 section on value-sets.md | child of family overview MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Index.page.md (no anchor of its own) |
| 34 | `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Extension-PT.page.md` | 4 | 0 | 465 | 2 section on index page | h3/h4 section on value-sets.md | child of family overview MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Index.page.md (no anchor of its own) |
| 35 | `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Extension-NM.page.md` | 4 | 0 | 461 | 2 section on index page | h3/h4 section on value-sets.md | child of family overview MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Index.page.md (no anchor of its own) |
| 36 | `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Extension-US.page.md` | 4 | 0 | 248 | 2 section on index page | h3/h4 section on value-sets.md | child of family overview MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Index.page.md (no anchor of its own) |
| 37 | `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Extension-series-contrast.page.md` | 4 | 0 | 207 | 2 section on index page | h3/h4 section on value-sets.md | child of family overview MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Index.page.md (no anchor of its own) |
| 38 | `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Extension-series-sliceThickness.page.md` | 4 | 0 | 245 | 2 section on index page | h3/h4 section on value-sets.md | child of family overview MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Index.page.md (no anchor of its own) |
| 39 | `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Extension-instance-details.page.md` | 4 | 0 | 306 | 2 section on index page | h3/h4 section on value-sets.md | child of family overview MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Index.page.md (no anchor of its own) |
| 40 | `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Observation/Index.page.md` | 4 | 2 | 220 | 2 section on index page | h3/h4 section on value-sets.md <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | child of family overview MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Index.page.md (no anchor of its own) |
| 41 | `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Observation/Extension-SeriesUID.page.md` | 4 | 0 | 114 | 2 section on index page | h3/h4 section on value-sets.md | child of family overview MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Observation/Index.page.md (no anchor of its own) |
| 42 | `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Observation/Extension-SOPInstanceUID.page.md` | 4 | 0 | 116 | 2 section on index page | h3/h4 section on value-sets.md | child of family overview MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Observation/Index.page.md (no anchor of its own) |
| 43 | `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Messung/Extension-SOPInstanceUID.page.md` | 4 | 0 | 116 | 2 section on index page | h3/h4 section on value-sets.md <br>_(directory is reached by no toc.yaml - placed by directory nesting)_ | child of family overview MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Index.page.md (no anchor of its own) |
| 44 | `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Messung/Extension-SeriesUID.page.md` | 4 | 0 | 114 | 2 section on index page | h3/h4 section on value-sets.md <br>_(directory is reached by no toc.yaml - placed by directory nesting)_ | child of family overview MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Index.page.md (no anchor of its own) |
| 45 | `MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Messung/Index.page.md` | 4 | 0 | 225 | 2 section on index page | h3/h4 section on value-sets.md <br>_(directory is reached by no toc.yaml - placed by directory nesting; folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | child of family overview MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Index.page.md (no anchor of its own) |

Branch totals: 1 intro-note = 3, 2 section on index page = 27, 3 merge into agreed page = 11, 4 own page = 4.

## 5. Report queue 1 items

The menu budget forced a ToC-nesting where a menu entry was otherwise warranted. Allocation below is first-come-first-served in source document order; the human may spend the budget differently.

- MIIIGModulBildgebung/AnwendungsflleInformationsmodell/Index.page.md - nested under MIIIGModulBildgebung/Index.page.md because that host got no menu entry of its own; giving this page one directly would put it at menu depth 3 > 2, so it only becomes visible if the human buys the host a top-level entry first.
- MIIIGModulBildgebung/AnwendungsflleInformationsmodell/UML/Index.page.md - nested under MIIIGModulBildgebung/AnwendungsflleInformationsmodell/Index.page.md because that host got no menu entry of its own; giving this page one directly would put it at menu depth 3 > 2, so it only becomes visible if the human buys the host a top-level entry first.
- MIIIGModulBildgebung/TechnischeImplementierung/Index.page.md - nested under MIIIGModulBildgebung/Index.page.md because that host got no menu entry of its own; giving this page one directly would put it at menu depth 3 > 2, so it only becomes visible if the human buys the host a top-level entry first.
- MIIIGModulBildgebung/TechnischeImplementierung/Conformance.page.md - nested under MIIIGModulBildgebung/TechnischeImplementierung/Index.page.md because that host got no menu entry of its own; giving this page one directly would put it at menu depth 3 > 2, so it only becomes visible if the human buys the host a top-level entry first.

## 6. Suggested `5.4c page-routing` run-log lines

One per source page (union pages included), ready for the migration run log. The `5.4c page-routing` step IS the advice run that GENERATES the page map (`--map`) - the map is machine-written, never hand-written; these lines are only its run-log form.

```
5.4c page-routing	MIIIGModulBildgebung/Index.page.md	branch=3	index.md	agreed page named 'index' exists in the target
5.4c page-routing	MIIIGModulBildgebung/Release-Notes.page.md	branch=3	changes.md	semantic match 'releasenotes' -> changes (routing-table)
5.4c page-routing	MIIIGModulBildgebung/BeschreibungModul.page.md	branch=3	index.md	semantic match 'beschreibungmodul' -> index (routing-table)
5.4c page-routing	MIIIGModulBildgebung/KontextimGesamtprojektBezgezuanderenModulen.page.md	branch=3	implementer-guidance.md	semantic match 'kontextimgesamtprojekt' -> implementer-guidance (routing-table)
5.4c page-routing	MIIIGModulBildgebung/Referenzen.page.md	branch=3	implementer-guidance.md	semantic match 'referenzen' -> implementer-guidance (routing-table)
5.4c page-routing	MIIIGModulBildgebung/AnwendungsflleInformationsmodell/Index.page.md	branch=4	own page (HUB), pages:-NESTED under MIIIGModulBildgebung/Index.page.md (its host has no menu entry)	no artefact anchor; no agreed page; 3 child page(s)
5.4c page-routing	MIIIGModulBildgebung/AnwendungsflleInformationsmodell/BeschreibungvonSzenarienfrdieAnwendungderModule.page.md	branch=3	guidance.md	semantic match 'szenarien' -> guidance (routing-table)
5.4c page-routing	MIIIGModulBildgebung/AnwendungsflleInformationsmodell/Datensaetze_inkl._Beschreibungen.page.md	branch=3	logical-models.md	semantic match 'datensaetze' -> logical-models (routing-table)
5.4c page-routing	MIIIGModulBildgebung/AnwendungsflleInformationsmodell/UML/Index.page.md	branch=4	own page (merged page), pages:-NESTED under MIIIGModulBildgebung/AnwendungsflleInformationsmodell/Index.page.md (its host has no menu entry)	no artefact anchor; no agreed page; 2 child page(s)
5.4c page-routing	MIIIGModulBildgebung/AnwendungsflleInformationsmodell/UML/UML_Meta.page.md	branch=3	uml-diagrams.md	semantic match 'uml' -> uml-diagrams (routing-table)
5.4c page-routing	MIIIGModulBildgebung/AnwendungsflleInformationsmodell/UML/UML_Befund.page.md	branch=3	uml-diagrams.md	semantic match 'uml' -> uml-diagrams (routing-table)
5.4c page-routing	MIIIGModulBildgebung/TechnischeImplementierung/Index.page.md	branch=4	own page (HUB), pages:-NESTED under MIIIGModulBildgebung/Index.page.md (its host has no menu entry)	no artefact anchor; no agreed page; 4 child page(s)
5.4c page-routing	MIIIGModulBildgebung/TechnischeImplementierung/Terminologien.page.md	branch=3	code-systems.md	semantic match 'terminologien' -> code-systems (routing-table)
5.4c page-routing	MIIIGModulBildgebung/TechnischeImplementierung/CapabilityStatement.page.md	branch=3	capability-statements.md	semantic match 'capabilitystatement' -> capability-statements (routing-table)
5.4c page-routing	MIIIGModulBildgebung/TechnischeImplementierung/Conformance.page.md	branch=4	own page (merged page), pages:-NESTED under MIIIGModulBildgebung/TechnischeImplementierung/Index.page.md (its host has no menu entry)	no artefact anchor; no agreed page; 0 child page(s)
5.4c page-routing	MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Index.page.md	branch=2	h3/h4 section on value-sets.md	15 children, 3 anchoring distinct artefacts (ValueSet)
5.4c page-routing	MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/BodyStructure.page.md	branch=2	h3/h4 section on value-sets.md	child of family overview MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/CarePlan.page.md	branch=2	h3/h4 section on value-sets.md	child of family overview MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Composition.page.md	branch=2	h3/h4 section on value-sets.md	child of family overview MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Device.page.md	branch=2	h3/h4 section on value-sets.md	child of family overview MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/DiagnosticReport.page.md	branch=1	input/intro-notes/ValueSet-mii-vs-bildgebung-diagnostic-report-code-lnc-intro.md	compact match on mii-vs-bildgebung-diagnostic-report-code-lnc (2 candidate artefacts)
5.4c page-routing	MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingProcedure.page.md	branch=1	input/intro-notes/ValueSet-mii-vs-bildgebung-imaging-procedure-code-sct-intro.md	compact match on mii-vs-bildgebung-imaging-procedure-code-sct (1 candidate artefact)
5.4c page-routing	MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ContrastAdministration.page.md	branch=2	h3/h4 section on value-sets.md	child of family overview MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ReadProcedure.page.md	branch=2	h3/h4 section on value-sets.md	child of family overview MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ServiceRequest.page.md	branch=1	input/intro-notes/ValueSet-mii-vs-bildgebung-service-request-code-sct-intro.md	compact match on mii-vs-bildgebung-service-request-code-sct (1 candidate artefact)
5.4c page-routing	MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/TNMRadiologicalReadProcedure.page.md	branch=2	h3/h4 section on value-sets.md	child of family overview MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Index.page.md	branch=2	h3/h4 section on value-sets.md	child of family overview MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Extension-ImagingReason.page.md	branch=2	h3/h4 section on value-sets.md	child of family overview MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Extension-Height.page.md	branch=2	h3/h4 section on value-sets.md	child of family overview MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Extension-Weight.page.md	branch=2	h3/h4 section on value-sets.md	child of family overview MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Extension-CT.page.md	branch=2	h3/h4 section on value-sets.md	child of family overview MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Extension-MG_CR_DX.page.md	branch=2	h3/h4 section on value-sets.md	child of family overview MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Extension-MR.page.md	branch=2	h3/h4 section on value-sets.md	child of family overview MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Extension-PT.page.md	branch=2	h3/h4 section on value-sets.md	child of family overview MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Extension-NM.page.md	branch=2	h3/h4 section on value-sets.md	child of family overview MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Extension-US.page.md	branch=2	h3/h4 section on value-sets.md	child of family overview MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Extension-series-contrast.page.md	branch=2	h3/h4 section on value-sets.md	child of family overview MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Extension-series-sliceThickness.page.md	branch=2	h3/h4 section on value-sets.md	child of family overview MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Extension-instance-details.page.md	branch=2	h3/h4 section on value-sets.md	child of family overview MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Observation/Index.page.md	branch=2	h3/h4 section on value-sets.md	child of family overview MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Observation/Extension-SeriesUID.page.md	branch=2	h3/h4 section on value-sets.md	child of family overview MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Observation/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Observation/Extension-SOPInstanceUID.page.md	branch=2	h3/h4 section on value-sets.md	child of family overview MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Observation/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Messung/Extension-SOPInstanceUID.page.md	branch=2	h3/h4 section on value-sets.md	child of family overview MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Messung/Extension-SeriesUID.page.md	branch=2	h3/h4 section on value-sets.md	child of family overview MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Messung/Index.page.md	branch=2	h3/h4 section on value-sets.md	child of family overview MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Index.page.md (no anchor of its own)
5.4c page-routing	map rows=48 retired=3 coverage=ok	map=migration-log/page-map.tsv
```

## 7. Page map (v2) and coverage

The page map is the CONTRACT of the narrative migration: this run generates and validates it, step 5 consumes ONLY it, step 8 checks against it. Columns: `source_page`, `target` (repo-relative path or `RETIRED`), `reason`, `branch` (spec 9e 1-4; 5 = RETIRED), `measure`. One row per page of the source page universe - the authoritative guide tree UNION `input/pagecontent` UNION on-disk pages no toc lists.

Rows: **48** total - 45 routed source pages (45 from the primary tree, 0 union pages outside it) and 3 RETIRED guide-tree summary row(s).

### 7.2 RETIRED guide trees

| Tree | Reason |
| --- | --- |
| `ImplementationGuide-Common/**` | unrecognized directory - needs a retain/retire proposal (5.1a #4) |
| `mii-ig-bildgebung-de-v2025/**` | historical version tree - retain unchanged, Gate-D retirement set (5.1a #3) |
| `mii-ig-bildgebung-de-v2026/**` | historical version tree - retain unchanged, Gate-D retirement set (5.1a #3) |

### 7.3 Coverage validation

Universe re-derived from disk: **45** page(s). Every one needs a row with a non-empty target; every RETIRED row needs a reason. The exit code reports the result (0 covered, 1 not).

**Covered.** All 45 universe pages have a target row; every RETIRED row carries a reason.

## 8. M9 optional-page / other-bucket proposal (Gate 0 census)

Counts: generated_crosscheck.counts (fsh-generated/resources). Rule (spec 9a): count 0 -> REMOVE the optional page, count > 0 -> KEEP and fill it; artefacts are never deleted to force a removal. Each proposal is a `5.4a` run-log line and a HUMAN decision - this table only measures.

| Optional page | Census key | Count | Proposal |
| --- | --- | ---: | --- |
| `extensions.md` | `extensions` | 14 | **KEEP** (fill it, delete the banner + OPTIONAL-PAGE marker in both languages) |
| `search-parameters.md` | `searchparameters` | 0 | **REMOVE** per the template's docs/optional-pages.md procedure |
| `operations.md` | `operations` | 0 | **REMOVE** per the template's docs/optional-pages.md procedure |
| `value-sets.md` | `valuesets` | 21 | **KEEP** (fill it, delete the banner + OPTIONAL-PAGE marker in both languages) |
| `code-systems.md` | `codesystems` | 5 | **KEEP** (fill it, delete the banner + OPTIONAL-PAGE marker in both languages) |
| `researcher-guidance.md` | - | - | no artefact count decides it - source narrative does (human decision) |
| `metadata.md` | - | - | no artefact count decides it - source narrative does (human decision) |

_The census reports no `other`-bucket artefact types._


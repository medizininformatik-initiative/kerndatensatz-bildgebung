---
name: fhir-ig-translation
description: Sets up the translation supplements an IG-Publisher-based FHIR Implementation Guide
  needs for its non-default languages, putting each one exactly where the publisher reads it —
  either by translating from the default-language source or by harvesting an already-published
  rendering in the target language. The default language stays authoritative and every machine
  translation needs a bilingual human review. Use this skill when a guide builds green and an
  additional language rendering is wanted, when the /<lang>/ pages show the default language
  instead of the translation, when deciding where a .po supplement or a translated page belongs,
  or when the user mentions Übersetzung, translation supplement, input/translations, po file,
  i18n-lang or i18n-default-lang. Do not use for measuring or comparing guides, for migrating one
  onto the MII KDS module template, or for a template package's own language mechanism; see
  fhir-ig-analysis and mii-ig-migration.
license: CC-BY-4.0
allowed-tools: Read Grep Glob Edit Write Bash(python3:*) Bash(bash:*)
metadata:
  fgdh.tier: "domain"
  fgdh.domain: "fhir-ig"
  fgdh.owner: "@msusky"
  fgdh.language: "en"
  fgdh.status: "experimental"
---

# Translating a FHIR Implementation Guide

> **Experimental.** This skill has not been verified against a real task since its last change. Verify its output before relying on it.

Produces the translation *supplements* of an IG-Publisher-based guide and puts them exactly where
the publisher looks for them. The guide's own configuration decides which language is the source and
which are the translations — this skill reads that rather than assuming it.

## Preconditions

1. **Locate the guide.** From the working directory, expect `input/pagecontent/` together with a
   `sushi-config.yaml` or an `ig.ini`. `scripts/ig-translate.sh` checks this itself and exits 2 with
   a message if the directory is not an IG project — it deliberately does **not** report "nothing to
   translate", which is what a silent failure here looks like.

2. **Derive the language pair — never assume it.** Read the guide's own `sushi-config.yaml`:

   ```yaml
   parameters:
     i18n-default-lang: en        # the SOURCE language
     i18n-lang:
       - de                       # the TARGET language(s)
     translation-sources:
       - input/translations/de
   ```

   - `i18n-default-lang` is the **source**: the language `input/pagecontent/` is written in, and the
     authoritative text.
   - each `i18n-lang` entry is a **target**: a language that gets a rendering under `/<lang>/`.
   - If `i18n-default-lang` is absent, the publisher's default applies and the source language is
     not declared. Report that and ask rather than guessing — a guess here puts every file in the
     wrong place.
   - If no `i18n-lang` is configured, there is no target language yet. Adding one is a change to the
     guide's configuration and a decision for its maintainer, not for this skill.

   **This is the step that must not be skipped.** The MII reversed its own default from German to
   English once; a skill that had hard-coded the old direction would have placed every file wrongly
   while reporting success.

3. **Build first.** Resource supplements need generated resources: the publisher writes
   `fsh-generated/resources/` and generates supplement templates per resource on each build.
   Translating before a green build means inventing `msgid` values, which is fabrication.

4. **Check whether this is the guide's problem or the template's.** Language support is usually
   split between an IG and the template package it renders with, and the split is about
   *responsibility*, not paths:
   - **This skill** covers the guide's own content: supplements and translated pages under
     `input/translations/<lang>/`.
   - **A template package** owns the language *mechanism* and *policy* — language-neutral
     header/footer/CSS, inherited UI-string catalogues, and the choice of default language.

   For the MII KDS module template that template package is
   <https://github.com/forschungsgruppe-digital-health/ig-template-mii-kds>, which carries its own
   skill for those obligations. If the task is "keep the template's overrides language-neutral",
   that is the template's problem, not this one.

## Procedure

**Output language: the target language derived in Preconditions 2.** These instructions are English;
what this skill produces is prose in the target language. Neither follows from the other, so it is
stated. The examples below use `de` as the target because that is the common case here; substitute
the language you actually derived.


> **Resolve the script path first.** The commands below name the tool relative to **this skill's
> own directory**, not to your working directory — which is the project you are operating on. Set
> `SKILL_DIR` to the directory containing this `SKILL.md` (you just read it, so you know where it
> is) and use it in every invocation:
>
> ```bash
> SKILL_DIR=<the directory containing this SKILL.md>   # e.g. .claude/skills/fhir-ig-translation
> ```
>
> Running a bare `scripts/...` from the project root does not merely fail — if the project happens
> to have its own `scripts/` directory with a same-named file, it silently runs **that** instead.

1. **Scan** to get the target path for every page and resource:

   ```bash
   bash "$SKILL_DIR/scripts/ig-translate.sh" --scan <lang>              # cwd = the guide's root
   bash "$SKILL_DIR/scripts/ig-translate.sh" --scan <lang> path/to/ig   # or point at it
   ```

   The language argument is **required** — the script refuses to default it, so no run can silently
   translate into a language nobody chose.

2. **Resource supplements.** One file per StructureDefinition, CodeSystem or Questionnaire at
   `input/translations/<lang>/<Type>-<id>.po`, where `msgid` is the **exact** source text from
   `fsh-generated/resources/<Type>-<id>.json` and `msgstr` is the translation. Copy the publisher's
   generated template rather than hand-writing the `msgid`.

3. **Narrative pages.** One translation per page at
   `input/translations/<lang>/pagecontent/<same-filename>.md` — the *same* file name, the same
   structure, the same links, FHIR identifiers unchanged. **Never** a `<name>-<lang>.md` sibling in
   `input/pagecontent/`: the toolchain renders that as a separate page, not as a translation.

4. **Menu**, if the guide has one: `input/translations/<lang>/includes/menu.xml`, mirroring
   `input/includes/menu.xml`. A `menu:` property in `sushi-config.yaml` generates one untranslatable
   menu and competes with this — it must not be used alongside.

5. **The IG-level catalogue** `input/translations/<lang>/ImplementationGuide-<ig-id>.po`. Not a
   resource supplement and not optional: without it the `pages:`-tree page titles stay in the
   default language, so `/<lang>/` renders localized page *bodies* under default-language
   breadcrumbs. `<ig-id>` is the `id` of `fsh-generated/resources/ImplementationGuide-<id>.json`;
   build the unit set from that file's `definition.page` tree — the authoritative page set — using
   `input/includes/menu.xml` only as a wording seed, and emit an **empty `msgstr`** plus a review
   flag for every title left untranslated.

   The sibling `mii-ig-migration` skill bundles a generator for exactly this file. It is a
   **precondition, not an assumption**: a consumer may have installed this skill alone, in which
   case the sibling path does not exist. Check first, and when it is absent either install it with
   the pinned command below or write the units by hand — never proceed on a path that does not
   resolve. Invoke it through a resolved `$SKILL_DIR`, never a bare `scripts/…`, which the
   project's own `scripts/` would shadow:

   ```bash
   GEN="$SKILL_DIR/../mii-ig-migration/scripts/gen-page-title-po.py"
   if [ -f "$GEN" ]; then python3 "$GEN" --help; else
     echo "gen-page-title-po.py not installed — install the sibling skill, or write the units by hand:"
     echo 'npx skills add "https://github.com/forschungsgruppe-digital-health/agent-skills/tree/v0.14.0" --skill mii-ig-migration --agent claude-code codex --yes'
   fi
   ```

   The `/tree/<ref>` form is what pins; `owner/repo@<ref>` does **not** — in that CLI `@`
   introduces a skill name and the command silently installs from the default branch.

   Read that script's header before regenerating an existing catalogue: the same file also carries
   hand-added units (the guide's `title`, per-artifact names) that the generator does not own, and
   its header states how it treats them.

6. **Validate, then build:**

   ```bash
   bash "$SKILL_DIR/scripts/ig-translate.sh" --validate <lang>
   ```

   Findings (`[WARN]`) exit 1; a run that finds **nothing to validate** says so explicitly and
   exits 0 — add `--strict` to make an empty translation set fail too, which is the right wiring
   for CI.

7. **Bilingual human review is mandatory** before the translated rendering is trusted. Mark every
   machine translation `TODO:REVIEW` until a human has signed it off.

### Harvest mode — adopting an existing rendering

When a rendering in the target language already exists somewhere, harvest it instead of
re-translating:

1. Fill in [`references/harvest-config.yaml`](references/harvest-config.yaml): the source of the
   target-language text (a parallel rendered guide for narrative; FSH `translation` extensions or
   `designation`s for resource texts) and the page/artefact mapping.
2. **Resources:** move the existing designations or translation extensions into
   `input/translations/<lang>/<Type>-<id>.po`. The page titles of the existing rendering are a
   translation seed for the IG-level catalogue (step 5), not a substitute for it.
3. **Narrative:** copy the page content into
   `input/translations/<lang>/pagecontent/<name>.md`, citing the source path per page. Invent
   nothing; mark anything unclear `TODO:REVIEW`.
4. Validate, build and review as above.

## What the toolchain actually renders

Verified with **IG Publisher 2.2.11** and `fhir2.base.template` 0.1.0 (2026-07) unless the row says
otherwise — one row rests on HL7's reference IG, whose live build was produced by publisher
**2.0.13**, and one row is explicitly unverified. Each row states its own basis; do not read the
heading as covering all of them. This is publisher behaviour and applies to any language pair.

| Content | Translatable? | Mechanism |
| --- | --- | --- |
| **Narrative pages** (`input/pagecontent/<name>.md`) | **Yes, renders** | `input/translations/<lang>/pagecontent/<same-filename>` — the whole page renders on `/<lang>/`. No file → falls back to the default-language source. |
| Resource texts of **StructureDefinition, CodeSystem, Questionnaire** (`description`, designations, element `definition`) | **Yes, renders** | Supplement `input/translations/<lang>/<Type>-<id>.{po\|xliff\|json}` |
| **Menu** (`input/includes/menu.xml`) | **Yes** | `input/translations/<lang>/includes/menu.xml` |
| **ImplementationGuide** own `title`, and per-artifact `definition.resource.name` | **Yes, renders — but observed on the 2.0.13 reference build, not on our pin** | `input/translations/<lang>/ImplementationGuide-<ig-id>.po`. Not a resource supplement — the publisher imports the IG's translations at load time (`PublisherIGLoader` → `importFromTranslations`, read from the source), so the `TRANSLATION_SUPPLEMENT_RESOURCE_TYPES` restriction does not apply. Units are keyed by FHIRPath in the `#:` comment. `es` header title + `es/artifacts.html` artifact names were seen on HL7's reference build |
| **ImplementationGuide** `description`, `publisher`, `name`, per-artifact `.description` | **Unverified** | Units for these exist in the reference catalogue and belong in the same file; **no rendering was observed** for them, on either build. `name` is FHIR's computer-friendly name, not display text — do not expect it to render at all. Add them, do not claim them |
| **Breadcrumbs & titles of `pages:`-tree pages** (breadcrumbs incl. the root label, TOC page body, browser `<title>`) | **Yes, renders** | `ImplementationGuide.definition.page.title` units in the same IG-level `.po`; the publisher feeds them into the per-language `titlelang` / `breadcrumblang` maps. Verified on **2.2.11** on a migrated MII KDS module with the breadcrumb override deleted (23 units; `temp/pages/_data/pages.json` `titlelang` differs en/de for all 23, zero before). The **left-hand navigation menu was not inspected — no claim is made for it.** Generate the units from the **`pages:` tree** of the generated `ImplementationGuide-<id>.json` (the authoritative set), using the menus only as a wording seed, and emit an empty `msgstr` + a review flag for any title left untranslated. HL7's [`FHIR/multi-lang-test-ig`](https://github.com/FHIR/multi-lang-test-ig) ships such a file and renders `es`/`nl` breadcrumbs from it; both MII template repos already ship one on their `dev` branch. This **retires** the breadcrumb override (`fragment-pagebegin.html` + `input/includes/breadcrumb-titles-de.txt`), which shipped in **exactly one release, template v0.5.0** — never in v0.4.0 or earlier, never on `dev`. A module generated from v0.5.0 should gain this `.po` and drop the override. Never work around it with sibling pages or menu tricks |
| **ValueSet**, `concept.display` / `concept.definition` | **Partial / No — unresolved** | Not applied from a plain `.po` supplement on this toolchain. **Conflict, deliberately left open:** [`references/translate-spec.md`](references/translate-spec.md) § 1 lists `concept.display`/`concept.definition` among the fields a *supported* CodeSystem supplement does translate. Neither claim has a build behind it; the next run that touches a CodeSystem supplement must test it and replace both |
| A language in `i18n-lang` but **absent from `translation-sources`** | **No — silently** | Its `.po` files are ignored without error or warning and the default language renders. Check this pairing before concluding a mechanism is unsupported |

Treat this table as ground truth, and **re-verify it whenever the pinned IG Publisher or base
template version changes.** Read the pins from the guide's own build workflow, not from this file.

Obsolete claims, recorded so they are not reintroduced:

- An earlier version of this skill used a `<name>-<lang>.md` sibling for pages and stated that
  narrative pages were "not yet" renderable. Both were wrong. The correct mechanism is a
  translation-source folder, as HL7's own
  [`FHIR/multi-lang-test-ig`](https://github.com/FHIR/multi-lang-test-ig) demonstrates.
- This skill claimed that `ImplementationGuide-<id>.po` is "ignored by the Publisher", that there is
  "no supplement mechanism" for the IG title, and that default-language breadcrumbs on `pages:`-tree
  pages are "a toolchain limitation, not a defect" requiring the MII template's
  `breadcrumb-titles-de.txt` workaround. All wrong: it generalized
  `TRANSLATION_SUPPLEMENT_RESOURCE_TYPES` — which really does restrict *resource supplements* — to the
  IG resource, which is translated by a **separate load-time import**. The page-title mechanism was
  verified on **2.2.11** (our pin) against an MII KDS module with the template's breadcrumb override
  deleted; HL7's reference IG ships such a `.po` and its live build — produced by **2.0.13** —
  renders `es`/`nl` breadcrumbs from it. That says nothing about *since when* the publisher supports
  this: no support floor is claimed, and none should be inferred from those two version numbers. The
  real cause of "translations do not apply" is usually the `translation-sources` footgun in the table
  above.

## Verification

```bash
bash "$SKILL_DIR/scripts/ig-translate.sh" --validate <lang>          # --strict: empty set fails too
```

- Exit 2 with a clear message when run outside an IG, or when the language argument is missing — a
  silent empty scan is the failure mode this guards against.
- `--validate` reports `[OK]` per supplement and per page, and no `[WARN]`; any `[WARN]` exits 1,
  and its summary line states how many supplements and pages were actually checked. "Checked: 0"
  with exit 0 is an explicit *nothing to validate*, never a claim that translations are valid
  (`--strict` turns it into a failure).
- The script WARNs when `<lang>` is not among the guide's `i18n-lang` targets or when
  `i18n-default-lang` is undeclared — a best-effort echo of Preconditions 2, not a substitute
  for it.
- Every `.po` filename is `<Type>-<id>` and matches a real `fsh-generated/resources/<Type>-<id>.json`
  — including `ImplementationGuide-<ig-id>.po`, which is a legitimate file, not a naming error.
- No supplement exists for an unsupported type, and no `menu.po` exists — the publisher ignores both.
- Every `i18n-lang` entry has a matching `translation-sources` entry; otherwise that language's `.po`
  files are ignored silently.
- Every translated page has a source page of the same name under `input/pagecontent/`.
- After a build, `/<lang>/` artefact pages show the translated element texts and `/<lang>/` narrative
  pages render in the target language.
- After a build with an IG-level `.po`, `/<lang>/` breadcrumbs, the TOC page body and the browser
  `<title>` are in the target language, and `temp/pages/_data/pages.json` carries a `titlelang` that
  differs from the default-language title for every page in the `pages:` tree. A page whose
  `titlelang` still equals the source title has no unit, or an empty `msgstr`, or the language is
  missing from `translation-sources`.
- The default-language `input/pagecontent/` and the FSH sources are **unchanged** — `git diff` on
  them is empty.

## Guardrails

- **The default-language source stays leading and binding.** A translation is a rendering aid, never
  the normative text. Which language that is comes from `i18n-default-lang`, not from this file.
- **Never change the source.** Translations are additive under `input/translations/<lang>/`.
- **FHIR identifiers stay untranslated** — `name`, `id`, codes and canonical URLs are not language.
- **No invention.** Mark every machine translation `TODO:REVIEW`; bilingual human review is
  mandatory.
- **Only on confirmation.** The default is a dry-run scan.
- **Propose, do not merge.** Deliver changes as a pull request, and **determine the target branch
  from the repository's own convention** — do not assume one. An earlier version of this skill
  hard-coded `dev`, which is one repository's convention and wrong everywhere else.

## Scope and delimitation

Covers **producing and placing a guide's translation supplements**, in both directions of
provenance: translating the default-language source, or harvesting an existing rendering.

Deliberately not covered:

- **Measuring or comparing guides** — see `fhir-ig-analysis`.
- **Migrating a guide onto the MII KDS module template** — see `mii-ig-migration`, which sets
  translation up as one step of a migration and then hands over here.
- **A template package's language mechanism and policy** — a different repository's concern; see
  Preconditions 4.
- **Choosing the guide's languages.** Adding an `i18n-lang` entry changes the guide's configuration
  and is its maintainer's decision.
- **Judging whether a translation is good.** That is the mandatory human review, not this skill.

If a skill of this name is provided both by this catalog and locally, the local one wins.

## References

- [`references/translate-spec.md`](references/translate-spec.md) — the full mechanics, file
  conventions and formats.
- [`references/harvest-config.yaml`](references/harvest-config.yaml) — configuration schema for
  harvest mode.
- [`references/triggers.md`](references/triggers.md) — the Gate 3 prompt set.
- [`scripts/ig-translate.sh`](scripts/ig-translate.sh) — scan and validate; dry-run by design, it
  writes nothing. It scans for the IG-level catalogue alongside the resource supplements and accepts
  it in `--validate`; genuinely unsupported types still WARN. Validation findings exit 1; `--strict`
  also fails an empty translation set.

## Provenance

Derived from `skills/ig-translate` in
`forschungsgruppe-digital-health/mii-kds-module-template` at commit
`b5beedb17a66a4397d597429668c7b6d54202c62`, which in turn adapted the `ig-translate` skill of
`forschungsgruppe-digital-health/mii-kds-sample-ig-inoffiziell` (CC-BY-4.0) and refocused it on the
module side. Both steps of that lineage are recorded deliberately.

Reworked on 2026-07-31 for this catalog. Beyond the catalog contract, four substantive changes:

- The helper now ships **with** the skill. It previously lived in the source repository's `scripts/`
  and was referenced by parent traversal.
- `scripts/ig-translate.sh` operates on the **current working directory** and detects whether it is
  an IG project. It previously did `cd "$(dirname "$0")/.."`, assuming it sat in
  `<module-repo>/scripts/`; installed as part of a skill that `cd` reaches the skill directory, and
  the scan would have reported every page as missing.
- The `dev` branch target was removed from the description and the guardrails, and replaced by
  discovering the repository's own convention.
- **The language pair is derived, not assumed.** The inherited skill was written for one direction
  (`en` → `de`) and for MII KDS modules specifically, which made a `fhir-` prefix on its name an
  overclaim. It now reads `i18n-default-lang` and `i18n-lang` from the guide being worked on, the
  script requires an explicit language argument instead of defaulting to `de`, and the mechanics are
  stated for any language pair. That is what earns the prefix.

Revised on 2026-08-01 after the skill's first real-task exercise (a dry run against
`kerndatensatz-dokument`): `--validate` findings now exit 1 and an empty translation set is
reported explicitly (and fails under `--strict`) instead of an unconditional exit 0; the script
cross-checks `<lang>` against the guide's i18n parameters with best-effort warnings; the harvest
config's `page_map` example now covers non-English source page names; and the `allowed-tools`
grant covers executing the bundled bash script. The dry-run findings live in the
`mii-kds-dokument-ig-inoffiziell` sandbox under `docs/reports/dry-run-2026-07-31/`.

Revised on 2026-08-05 to retire a documented false claim: that the publisher cannot localize the
titles of `pages:`-tree pages and that an `ImplementationGuide-<id>.po` is ignored. Evidence, and
nothing beyond it:

- **Our own build on our own pin (IG Publisher 2.2.11)** — the migrated MII KDS Dokument guide with
  the template's breadcrumb override deleted and 23 `page.title` units supplied: `/de/` breadcrumbs
  German including the root label "Inhaltsverzeichnis", the TOC page body German, the browser
  `<title>` German, and `temp/pages/_data/pages.json` `titlelang` differing en/de for all 23 pages
  (zero before). Build health unchanged (sushi 0 errors, QA err=7 = the established baseline). The
  left-hand nav, `IG.description`, `IG.publisher`, `IG.name` and artifact names were **not** observed
  on 2.2.11 and are not claimed for it.
- **HL7's reference IG `FHIR/multi-lang-test-ig`**, live build produced by publisher **2.0.13** —
  localized `es`/`nl` breadcrumbs, a translated IG title in the `/es/` header, translated artifact
  names on `/es/artifacts.html`, and `fr` (in `i18n-lang`, absent from `translation-sources`) as a
  controlled negative. A different publisher version from ours; kept separable in the tables.
- **Prior art in our own organisation:** both MII template repos already carry a correct catalogue on
  their `dev` branch, and `ig-template-mii-kds` records the same mechanism in the MII's own
  `kerndatensatz-basis` module, "verified 2026-07-30".

Consequences here: the rendering table attributes every row to the build that supports it and marks
the unobserved fields unverified; the breadcrumb override is recorded as shipping in **exactly one
release, template v0.5.0** (never v0.4.0 or earlier, never on `dev`), as a misdiagnosis now being
retired; a Procedure step for the IG-level catalogue was added, pointing at the generator bundled
with `mii-ig-migration`; the CodeSystem `concept.display`/`definition` conflict between this file and
`references/translate-spec.md` is flagged as unresolved instead of silently decided; and
`scripts/ig-translate.sh` no longer WARNs on (nor fails) an `ImplementationGuide-<id>.po` — the very
file the procedure now mandates — while genuinely unsupported types still do.

Original licence: CC-BY-4.0, as declared by both source repositories. `scripts/` is Apache-2.0,
matching this repository's code licence.

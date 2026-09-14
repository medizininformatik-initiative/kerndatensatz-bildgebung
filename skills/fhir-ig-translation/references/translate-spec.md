# Translation mechanics, file conventions, formats

As of 2026; empirically verified with IG Publisher 2.2.7/2.2.8 and re-verified on
2.2.11 with `fhir2.base.template`. The authoritative tool logic is
`scripts/ig-translate.sh`.

**Language notation used throughout.** `<lang>` is the **target** language — one of the guide's
`i18n-lang` entries. The **source** language is whatever `i18n-default-lang` declares, and
"default-language" below always means that one. Nothing here assumes a particular pair. The worked
examples use `de` as the target because it is the common case in this catalog's own work; substitute
the language the guide actually declares.

## 1. Resource texts (render today)

**Supported resource types** (Publisher constant
`TRANSLATION_SUPPLEMENT_RESOURCE_TYPES`): **StructureDefinition, CodeSystem,
Questionnaire**. Not supported: ValueSet, CapabilityStatement.

> That constant governs **resource supplements** only. The **ImplementationGuide
> resource itself is not a supplement case**: the publisher imports its
> translations at load time through a separate code path
> (`PublisherIGLoader` → `importFromTranslations(publishedIg, …)`), so
> `input/translations/<lang>/ImplementationGuide-<ig-id>.po` **is honoured** —
> see § 2.

**Placement & naming:** one translation supplement per resource under the
translation-sources folder (`translation-sources: input/translations/<lang>`):

```
input/translations/<lang>/<ResourceType>-<id>.<ext>     # ext ∈ {po, xliff, json}
```

Worked examples, target `de`, for a "Dokument" module:
- `input/translations/de/StructureDefinition-mii-pr-dokument-dokument.po`
- `input/translations/de/StructureDefinition-mii-ex-dokument-nlp-processing-status.po`
- `input/translations/de/StructureDefinition-mii-lm-dokument.po`  (Logical Model = StructureDefinition)
- `input/translations/de/CodeSystem-mii-cs-dokument-nlp-processing-status.po`
- `input/translations/de/ImplementationGuide-mii-ig-dokument.po` — not a resource
  supplement but the IG's own translation import (§ 2): carries the `pages:`-tree
  page titles (→ breadcrumbs, TOC body, browser `<title>` — the effect verified on
  our own pin), the guide's own `title`, and the per-artifact
  `definition.resource.name`/`description`. Which of those are *observed* to
  render, and on which build, is stated per row in § 2.1 — do not read this list
  as a rendering promise.

> A wrong name (for example `menu.po`, or any non-`{type}-{id}` name) is
> **ignored** by the Publisher (log: "name is not {type}-{id}.xxx" / "resource
> type … is not supported"). The menu has its own mechanism — see § 2.

**`.po` format** (preferred; case-insensitive matching, plural forms):

```po
#: StructureDefinition.description
msgid "<exact default-language source text from the generated resource>"
msgstr "<translation in <lang>>"
```

`msgid` MUST match the default-language source text of the generated resource exactly
(from `fsh-generated/resources/<Type>-<id>.json`). Translatable fields include:
`description`, element `definition`/`comment`/`requirements`, binding
descriptions, CodeSystem `concept.display`/`definition`/`designation`.

> **Unresolved conflict, deliberately left open.** This list says a *supported*
> CodeSystem supplement translates `concept.display`/`concept.definition`; the
> rendering table in `SKILL.md` says those are "not applied from a plain `.po`
> supplement". Neither statement has a build behind it in this catalog. Do not
> pick a winner from reading — the next run that touches a CodeSystem supplement
> should build the guide, look at the `/<lang>/` CodeSystem page, and replace both
> statements with the observation.

## 2. IG-level texts, menu, ValueSet

### 2.1 The IG-level `.po` (renders — page titles → breadcrumbs and TOC; and the IG title)

```
input/translations/<lang>/ImplementationGuide-<ig-id>.po
```

`<ig-id>` is the `id` of the generated `fsh-generated/resources/ImplementationGuide-<id>.json`.
This file is **not** a resource supplement — that is what a build demonstrates: with
the file in place, and nothing else changed, the `/<lang>/` rendering localizes (see
the table below).

*Read from the publisher's source, not from a build:* the import happens while
loading the guide (`PublisherIGLoader` → `importFromTranslations`), and
`PublisherGenerator.getLangTitles` reads the resulting translation extensions into
the per-language `titlelang` / `breadcrumblang` maps; the constant in § 1 therefore
does not apply to this file. Keep the two apart. Over-trusting exactly such a
source-level reading — generalizing `TRANSLATION_SUPPLEMENT_RESOURCE_TYPES` to the
IG resource — is what produced the false "the IG `.po` is ignored" claim this
section replaces. The build is the evidence; the code path is the explanation.

Units are keyed by **FHIRPath** in the `#:` comment. One worked example, `en` → `de`,
all units from the same guide (an `en`-source "Dokument" module; the values are
illustrative — every `msgid` in a real file is the **exact** text of the generated
`ImplementationGuide-<id>.json`):

```po
#: ImplementationGuide.title
msgid "Document Module Implementation Guide"
msgstr "Implementierungsleitfaden Modul Dokument"

#: ImplementationGuide.definition.page.title
msgid "Table of Contents"
msgstr "Inhaltsverzeichnis"

#: ImplementationGuide.definition.page.title
msgid "Guidance for Implementers"
msgstr "Anleitung für Implementierende"

#: ImplementationGuide.definition.page.title
msgid "Handling Missing Data"
msgstr ""

#: ImplementationGuide.definition.resource.name
msgid "Document Profile"
msgstr "Dokument-Profil"
```

The fourth unit is deliberate: an **empty `msgstr`** is gettext for *untranslated*,
so that entry is expected to render in the default language exactly as a missing
unit would. Emit it anyway rather than dropping the page: in the rendering the two
are indistinguishable, but only the empty unit is auditable — it tells the human
reviewer which titles are still open.

What it drives — **each row carries the evidence that actually supports it.** Two
different builds are cited, and they are not interchangeable:

| Unit key | Effect | Observed on |
| --- | --- | --- |
| `ImplementationGuide.definition.page.title` | **breadcrumbs (including the root label), the TOC page body and the browser `<title>`** of every page in the `pages:` tree; `temp/pages/_data/pages.json` gets a per-language `titlelang` | **our own build, IG Publisher 2.2.11** (our pin), migrated MII KDS Dokument guide, breadcrumb override deleted, 23 page-title units. The **left-hand nav was not inspected** — do not claim it |
| `ImplementationGuide.title` | the guide's title in the `/<lang>/` page header | the HL7 reference IG's **live build, publisher 2.0.13** — *not* our pin. Not re-checked on 2.2.11 |
| `ImplementationGuide.definition.resource.name` / `.description` | the artifact names on `/<lang>/artifacts.html` (`.description` untested separately) | the same **2.0.13** reference build |
| `ImplementationGuide.description` / `.publisher` / `.name` | — | **unit exists in the reference catalogue; rendering not verified.** `name` is FHIR's computer-friendly name, not display text — expect no rendering effect from it |

**Generate the unit set from the `pages:` tree, not from the menu.** The
authoritative page set is the `definition.page` tree of the SUSHI-generated
`ImplementationGuide-<id>.json`; `input/includes/menu.xml` (and its translated
sibling) is a *seed* for the wording only, and it is incomplete — pages such as
the TOC, Downloads, Translation Information and Metadata Overview exist in the
tree but are not menu entries. Emit every page title, and for any title without a
translation emit an **empty `msgstr`** and flag it for human review: gettext
treats an empty `msgstr` as untranslated and the publisher falls back to the
default language for that entry alone.

> **No gettext header entry — a deliberate, documented deviation.** A canonical
> `.po` opens with a header unit (`msgid ""` plus `"Content-Type: …"` metadata),
> and `msgfmt` refuses a catalogue without one ("*fatal: file has no header
> entry*"). HL7's reference catalogue has none, the guide built for the
> verification above had none, and the IG Publisher read both regardless: it parses
> the `#:`-keyed units itself rather than going through gettext. So the omission is
> accepted on purpose (check the generator's own header for what it emits today).
> Consequence: **do not wire `msgfmt` in as a
> validation gate** and do not "fix" a working catalogue by adding a header that
> nothing was verified against. Revisit only if a Publisher release starts
> rejecting header-less files.

The reference guide [`FHIR/multi-lang-test-ig`](https://github.com/FHIR/multi-lang-test-ig)
ships exactly such a file (`input/translations/es/ImplementationGuide-hl7.fhir.test.multi-lang.po`);
its [live build](https://build.fhir.org/ig/FHIR/multi-lang-test-ig/) — produced by
publisher **2.0.13**, not by our pin — renders Spanish and Dutch breadcrumbs from
it, while `fr`, declared in `i18n-lang` but absent from `translation-sources`,
renders untranslated (§ 2.4).

Prior art inside our own organisation: **both** MII template repositories already
carry such a catalogue on their `dev` branch — `ig-template-mii-kds`
(`input/translations/de/ImplementationGuide-de.medizininformatikinitiative.template.preview.po`,
1 title + 1 publisher + 3 page-title units) and `mii-kds-module-template`
(`input/translations/de/ImplementationGuide-mii-ig-{{MODULE_SLUG}}.po`, 1 title +
1 publisher + 24 page-title units). The former's header records the same mechanism
in the MII's own `kerndatensatz-basis` module (`ImplementationGuide-mii-ig-base.po`),
"verified 2026-07-30".

> **Retired workaround.** The breadcrumb override — `includes/fragment-pagebegin.html`
> remapping the rendered HTML from a module-supplied
> `input/includes/breadcrumb-titles-de.txt` — exists **only on the templates' `main`
> branch**, introduced by PRs that bypassed `dev`, and shipped in **exactly one
> release: template v0.5.0**. v0.4.0 and earlier never had it; `dev` never had it
> and carries the `.po` instead. It is a misdiagnosis of the mechanism above and is
> being retired. The IG-level `.po` does the same job properly, upstream of
> rendering, and for the page titles and the TOC as well. A module generated from
> **v0.5.0** should therefore gain an `ImplementationGuide-<id>.po` **and drop the
> override**; the old mapping file is a usable translation seed for that `.po`, but
> not a complete one (see the `pages:`-tree rule above).

### 2.2 Menu (renders — but not via a `.po`)

The menu has its own per-language file, `input/translations/<lang>/includes/menu.xml`
(step 4, "Menu", of the Procedure in `SKILL.md` — not a § of this file). A `menu.po`
is ignored.

### 2.3 ValueSet / CapabilityStatement (do NOT render)

No supplement mechanism verified for these in the current Publisher. Leave them
out on purpose; do not "simulate" them with wrongly named `.po` files (they would
only be ignored). Add them here once a Publisher release is verified to support
them.

### 2.4 Precondition footgun — `translation-sources` must list the language

A language that appears in `i18n-lang` but has **no matching
`translation-sources` entry** is rendered, but **all of its `.po` files are
silently ignored** — no error, no warning, just default-language output. The
reference IG demonstrates this as a controlled negative: its `fr` variant is
declared in `i18n-lang`, is not in `translation-sources`, and renders English
breadcrumbs while `es` and `nl` render translated ones. Check this pairing before
concluding that a mechanism "does not work".

## 3. Narrative pages (these DO render translated)

**Convention** (as used by the HL7 reference `FHIR/multi-lang-test-ig`): the
translated page goes in the translation-source folder, under `pagecontent/`,
with the **same file name** as the default-language page:

```
input/pagecontent/<name>.md                       # default language (the source)
input/translations/<lang>/pagecontent/<name>.md   # renders on /<lang>/<name>.html
```

Content rules:
- Copy structure/headings/links 1:1; leave internal artifact links
  (`StructureDefinition-…html` etc.) **unchanged**.
- Do not translate FHIR identifiers, code values, or canonical URLs.
- Leave embedded HTML/image references unchanged.
- Add a `TODO:REVIEW` header line on machine translation.

> Behaviour today (verified IG Publisher 2.2.11): `/<lang>/<name>.html` renders
> the translated page. A page with no translation file falls back to the
> default-language source. Do NOT use a `<name>-<lang>.md` sibling in
> `input/pagecontent/` — the toolchain would treat it as a separate page, not a
> translation.

## 4. Configuration parameters (`sushi-config.yaml`)

```yaml
parameters:
  i18n-default-lang: en             # the SOURCE language — read it, do not assume it
  i18n-lang:
    - de                            # the TARGET language(s), one folder each
  translation-sources:
    - input/translations/de         # folder holding that language's supplements
```

> **Every `i18n-lang` entry needs its own `translation-sources` entry.** A
> language listed only in `i18n-lang` is rendered, but all of its `.po` files are
> silently ignored — see § 2.4. Check this pairing first when a translation does
> not appear.

## 5. Guardrails (summary)

The default-language source leads · add to the source, never modify it · leave
FHIR identifiers untranslated · no invention, mark `TODO:REVIEW` · a bilingual
human language review is mandatory · only on confirmation, dry-run default.

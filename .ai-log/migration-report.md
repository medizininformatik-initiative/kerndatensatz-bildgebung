# Migrationsbericht — Modul Bildgebung (Simplifier → HL7 FHIR IG Publisher)

**Ansatz:** B (KI-gestützt, Marcel / forschungsgruppe-digital-health, **deutsch führend**)
**Modul:** bildgebung
**Datum:** 2026-07-23
**Arbeits-Branch:** `hl7-ig-build-2026-07-23`  ·  **Ziel-Branch (PR base):** `hl7-ig-build`
**Status:** PILOT zur Prozessvalidierung. Additiv/rückbaubar. `main`/`dev`/`master` **unberührt**.

> **Mensch-im-Loop:** Dieser IG wird **nicht** veröffentlicht. Review-Gates A–D
> (Spec §6) sind verpflichtend und noch offen. GitHub Pages muss durch einen Admin
> auf *Source = GitHub Actions* gestellt werden (Pages-Workflow ist auf den
> datierten Branch gefiltert).

---

## 1. MODULE_METADATA (aus Quelle gelesen, Bestandsschutz)

| Feld | Wert | Herkunft |
|------|------|----------|
| `id` | `mii-ig-bildgebung` | sushi-config.yaml |
| `name` | `MII_IG_Bildgebung` | sushi-config.yaml |
| `canonical` | `https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung` | sushi-config.yaml (**unverändert**) |
| `packageId` | `de.medizininformatikinitiative.kerndatensatz.bildgebung` | sushi-config.yaml / package.json |
| `version` (Ziel) | `2026.2.0` | sushi-config.yaml + Index-Seite (dominante Quelle) |
| `status` / `releaseLabel` | `active` / `ci-build` | sushi-config.yaml |
| `publisher` | Medizininformatik Initiative | sushi-config.yaml |
| `dependencies` | meta/base/medikation 2026.0.x, basisprofil.r4 1.5.x, dicom, uv.extensions 5.2.0, r4.core | sushi-config.yaml (**unverändert**) |

Alle Canonical URLs / IDs der Conformance-Ressourcen bleiben unverändert
(Guardrail 1). Die reale FSH (`input/fsh/…`) wurde **nicht** angefasst.

## 2. Quelle & Narrativ-Herkunft

- **Source-Repo:** https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung (Branch `main`).
- **Gerenderte IG-Narrative:** Anders als angenommen liegt das Narrativ **nicht nur
  auf Simplifier**, sondern als gerenderter Guide **im Repo** unter
  `implementation-guides/mii-ig-bildgebung-de-v2026/` (Simplifier-Render-Source,
  `.page.md`). Diese in-Repo-Quelle wurde als maßgeblich verwendet (vollständiger,
  versionierter, kein Web-Scraping nötig). Es existiert zusätzlich ein v2027-Entwurf
  und eine v2025-Fassung; migriert wurde **v2026** (aktuelle veröffentlichte Fassung).
- **Simplifier-Guide-URL:** vermutlich `https://simplifier.net/guide/mii-ig-modul-bildgebung`
  — **nicht verifiziert** (`TODO:REVIEW`). Für die Migration nicht benötigt, da die
  gerenderte Quelle im Repo vorliegt.

## 3. Durchgeführte Schritte

### 3.1 Skelett (additiv aus Template übernommen)
- `ig.ini` (auf `ImplementationGuide-mii-ig-bildgebung.json` gesetzt; im Modul-
  `.gitignore` gelistet → **force-add** nötig).
- `sushi-config.yaml`: MODULE_METADATA erhalten; **ergänzt**: `language: de`,
  `title`, `description`, `license`, `jurisdiction`, i18n-Parameter
  (`i18n-default-lang: de`, `i18n-lang: [en]`, `translation-sources`), `pages:` und
  deutsch geführtes `menu:`.
- `input/pagecontent/`, `input/translations/en/`, `input/images/`,
  `input/includes/` angelegt.
- Workflows `ig-validate.yml` + `ig-publish-pages.yml` (Branch-Filter auf den
  datierten Branch bzw. `hl7-ig-build` gestellt).
- `tools/fql-scan.sh`, `tools/ig-translate.sh`,
  `skills/mii-ig-migration/references/fql-rules.tsv` + `fql-crosswalk.md`.
- `_genonce.*` / `_updatePublisher.*` (im Modul nicht vorhanden → aus Template).
- **Vorlagen-Beispiele des Templates NICHT übernommen** (`input/fsh/examples.fsh`
  und Beispiel-`.po` der Vorlage) — Guardrail 8. Reale Modul-FSH unverändert.
- **Governance-/Template-Doku NICHT übernommen** (CONTRIBUTING/ROLES/DESIGN/
  SOURCES/MIGRATION etc.); Modul-`README.md` und Modul-CI (`main.yml`) unberührt.

### 3.2 Narrative migriert (deutsch) → `input/pagecontent/`
| Zielseite | Quelle (v2026) |
|-----------|----------------|
| `index.md` | Index.page.md + BeschreibungModul.page.md |
| `context.md` | KontextimGesamtprojektBezgezuanderenModulen.page.md |
| `references.md` | Referenzen.page.md |
| `use-cases.md` | AnwendungsflleInformationsmodell/BeschreibungvonSzenarien… |
| `data-sets.md` | AnwendungsflleInformationsmodell/Datensaetze… |
| `uml.md` | AnwendungsflleInformationsmodell/UML/{Index,UML_Meta,UML_Befund} |
| `conformance.md` | TechnischeImplementierung/Conformance.page.md + CapabilityStatement.page.md |
| `terminologien.md` | TechnischeImplementierung/Terminologien.page.md |
| `changes.md` | Release-Notes.page.md |
| `security-privacy.md`, `downloads.md`, `translationinfo.md` | Template-Gerüst, bildgebungsspezifisch angepasst |

**Pflichtabschnitte (Manteldokument) vorhanden:** Beschreibung, Bezüge zu anderen
Modulen, Referenzen, Anwendungsfälle/Szenarien, Datensätze + Model-to-Profile-
Mapping, UML/Informationsmodell, Konformität (Must Support / fehlende Daten /
Such-API), Sicherheit & Datenschutz.

### 3.3 Artefakt-Prosa (Profile/Extensions) → `-intro.md`-Fragmente
Die 42 pro-Artefakt-`.page.md` des Quell-Guides (FHIR-Profile-Unterseiten) sind
weitgehend FQL-/Render-Direktiven, deren Baum/XML/JSON/Tabs der IG Publisher
**automatisch generiert**. Ihre **fachliche Prosa** (z. B. DiagnosticReport
4-Stufen-Modell, DICOM-Tag-Erklärungen je Modalität) wurde als
`input/pagecontent/StructureDefinition-<id>-intro.md` erhalten — der IG Publisher
rendert diese Fragmente **über** der generierten Artefaktseite. **24 Intro-Fragmente**
erzeugt; `subject:`-Canonical → Artefakt-`id` deterministisch gemappt.

### 3.4 FQL-/Simplifier-Direktiven (Crosswalk)
Angewandt gemäß `fql-rules.tsv` / `fql-crosswalk.md`:
| Direktive | Behandlung |
|-----------|-----------|
| `{{index:root}}`, `{{page-title}}` | entfernt (Nav/Titel erzeugt Template/Config) |
| `{{tree:MII_LM_Bildgebung}}` | `{%(space)include StructureDefinition-mii-lm-bildgebung-snapshot.xhtml%(space)}` in `data-sets.md` |
| `{{render:…UML_*.png}}` | Bilder nach `input/images/` kopiert + `<img>` |
| `{{render:…Warning.jpg}}` | Bild kopiert + `<img>` (Terminologien), sonst verwaiste Note-Tabelle entfernt |
| `{{render:<CapabilityStatement-canonical>}}` | Link auf generierte Artefaktseite |
| `@``` <fql> ```, `<tabs>/<tab>`, `{{xml}}`, `{{json}}`, `{{link}}` | entfernt (Publisher generiert Darstellung/Beispiele) |

**`tools/fql-scan.sh input/pagecontent` (final): 0 zugeordnete, 0 unbekannte, 0
verbliebene Direktiven.** Keine `{% %}`/`{{ }}`-Literale in Kommentaren
(Build-Leitplanke eingehalten).

### 3.5 Mehrsprachigkeit
Deutsch führend; Englisch optional vorbereitet (i18n-Parameter gesetzt,
`input/translations/en/` angelegt). **Keine** `.po`-Supplements erzeugt (optional,
außerhalb Pilot-Kern). Hinweisseite `translationinfo.md` vorhanden.

### 3.6 Sprach-Mismatch de-DE vs. de
Die reale FSH führt Translation-Extensions mit Subtag `de-DE`
(`input/fsh/rulesets/translation.fsh`), der IG ist auf `de` konfiguriert. Die
kosmetische Publisher-Warnung ist in `input/ignoreWarnings.txt` als Glob
`%(de-DE)%` mit Begründung ergänzt (FSH unverändert, Guardrail 1/2).

## 4. Build / QA

- **`sushi .`:** **3 Errors, 0 Warnings.**
- **Die 3 Errors sind PRE-EXISTING in der Quelle** (auf `main` identisch
  reproduzierbar, unabhängig von der Migration) und betreffen ausschließlich
  reale FSH:
  - `MII_PR_Bildgebung_Bildgebungsprozedur` — multiple choice value assignments for `StructureDefinition.extension.value[x]`
  - `MII_PR_Bildgebung_Radiologische_Befundungsprozedur` — dito
  - `MII_PR_Bildgebung_TNM_Radiologische_Befundungsprozedur` — dito
  Behebung erfordert FSH-Änderung → durch Guardrail 1 (Bestandsschutz) & 4 (keine
  Erfindung) **außerhalb** des Migrationsauftrags. `TODO:REVIEW` an das Kümmererteam.
- **Migration selbst fügt 0 Errors / 0 Warnings hinzu.**
- **Voller IG-Publisher-Build** (Docker/Zertifikate) hier nicht ausgeführt — laut
  Auftrag zulässig; via CI-Workflow `ig-validate.yml` auf dem Branch vorgesehen.

## 5. TODO:REVIEW (gesammelt)

1. **Versions-Inkonsistenz der Quelle:** `sushi-config.yaml`/Index = `2026.2.0`;
   `package.json`/`input/fsh/rulesets/version.fsh` = `2026.1.0`. Ziel auf `2026.2.0`
   gesetzt (dominante, den IG-Build treibende Quelle). Kümmererteam muss die
   Zielversion bestätigen und die Quelle konsolidieren.
2. **3 pre-existing SUSHI-Errors** (choice value[x] in den 3 Prozedur-Profilen) —
   Quelle-Datenqualität, FSH-Fix nötig (nicht Teil der Migration).
3. **Floating Dependency-Pins** (`…2026.0.x`, `1.5.x`) laut Spec §2.1 auf konkrete
   Versionen festzulegen — Release-Entscheidung, hier bewusst unverändert.
4. **Simplifier-Guide-URL** nicht verifiziert (Narrativ kam aus dem Repo).
5. **Intro-Fragmente inhaltlich prüfen** (Gate B): 24 KI-migrierte
   `StructureDefinition-*-intro.md` — Prosa 1:1 aus v2026 übernommen, aber
   Direktiven maschinell entfernt; Fachprüfung auf Vollständigkeit empfohlen.
6. **Übersetzung (EN)** optional noch nicht erzeugt (Deutsch führend, erwartet).

## 6. Guardrail-Konformität

| Guardrail | Status |
|-----------|--------|
| 1 URL-/ID-Bestandsschutz | ✅ FSH & Canonicals unverändert |
| 2 Sprachführung `de` (nicht `de-DE`) | ✅ `language: de`, i18n de-default; de-DE-Warnung supprimiert |
| 3 FHIR R4 (4.0.1) | ✅ |
| 4 Keine Fakten-Erfindung | ✅ Unklarheiten als `TODO:REVIEW` |
| 5 Pflichtabschnitte vollständig | ✅ |
| 6 Mensch-im-Loop, keine Publikation | ✅ Gates offen, nichts publiziert |
| 7 Nachvollziehbarkeit | ✅ dieser Bericht + `source-inventory.json` |
| 8 Vorlagen-Beispiele entfernt | ✅ nicht übernommen |
| 9 Default-Branch-Schutz | ✅ nur `hl7-ig-build*`; PR-Ziel `hl7-ig-build` |

# ig-analyze — Metrik-Katalog (erweiterbare SSOT)

Parameter für die IG-Statistik. **Nutzen:** V = objektiver Vergleich · A =
offener Arbeitsbedarf/Risiko. **Quelle:** woraus die Metrik gelesen wird.
**Modus:** *static* (ohne Build) oder *build* (braucht IG-Publisher-`qa.json`/`_data`).

> **Gemessen wird, nicht geschätzt.** Der Katalog enthält keine Aufwands-,
> Personentage- oder Terminprognose; die frühere Schätzschicht wurde entfernt.

> **Per Hand erweiterbar:** Neue Zeile mit eindeutiger `metric_id` ergänzen; wenn
> die Metrik im Tool erhoben werden soll, in `scripts/ig-stats.py` ein Feld mit dem
> gleichen `metric_id` befüllen und im JSON-Schema ergänzen. Nicht implementierte
> Metriken bleiben dokumentiert (Roadmap), liefern aber `null`.

## Report-Aufbau
Der `report`-Modus erzeugt: **Kennzahlen-Überblick** mit Mermaid-Charts **und**
Tabellen · Reife, Strategie, Risiko · **Empfehlungen** je Themenbereich · eine
**Detailaufschlüsselung (Single Source of Truth)** mit Herkunft/Pfad je Eintrag
(Identität, Dependencies, Artefakte mit Quelldatei:Zeile, Narrative-Seiten,
Direktiven-Fundstellen, definierte QC-Regeln, Mehrsprachigkeit).
Provenienz-Arrays in der `ig-stats.json`:
`artifacts_detail`, `narrative.files`, `directives.occurrences`, `quality.qc_rules`,
`i18n.supplement_files`/`fsh_translation_files`.

> **Artefakt-Zählung:** `artifacts.total` = nur **publizierte** Artefakte
> (Profile/Extensions/VS/CS/Logical/CapabilityStatement/Questionnaire/SearchParameter/
> Operation/Beispiele). RuleSets, Invarianten und Mappings sind interne
> FSH-Konstrukte und werden separat geführt (nicht im Vergleichs-`total`).
> **Direktiven** werden anhand der Muster in
> `references/report-content.json` (`directive_patterns`) und des Auffangmusters
> `GENERIC_DIRECTIVE` in `scripts/ig-stats.py` erkannt; nicht abgedeckte →
> `UNBEKANNT` (im Report mit Fundstelle gelistet).

## A. Identität & Scope
| metric_id | Misst | Quelle | Modus | Nutzen |
|---|---|---|---|---|
| `id`,`canonical`,`packageId`,`version` | Identität | sushi-config/package.json | static | V |
| `calver` | Version folgt CalVer `YYYY.MINOR.PATCH`? | version-Regex | static | V |
| `status`,`fhirVersion`,`license`,`publisher` | Reifegrad/Recht/Basis | sushi-config | static | V |

## B. Artefakt-Umfang & -Komplexität
| metric_id | Misst | Quelle | Modus | Nutzen |
|---|---|---|---|---|
| `profiles`,`extensions`,`valuesets`,`codesystems`,`logicals`,`capabilitystatements`,`questionnaires`,`searchparameters`,`operations`,`examples`,`mappings`,`invariants`,`rulesets`,`artifacts_total` | Größe/Scope | FSH-Zählung + `fsh-generated/*.json` | static | V·A |
| `diff_elements_avg`/`_max`,`slices`,`must_support`,`constraints` | Profil-Komplexität | `fsh-generated` (Differential/Snapshot) | static* | V·A |
| `extensions_defined_vs_used` | Modellierungstiefe | FSH | static* | V |
| `cardinality_restrictions` | Restriktivität (`0..0`/`1..1`) | FSH | static* | A |

\* in der ersten Tool-Ausbaustufe als Roadmap (`null`), sobald differential-Parsing aktiv.

## C. Terminologie
| metric_id | Misst | Quelle | Modus | Nutzen |
|---|---|---|---|---|
| `local_codesystems`,`local_valuesets` | eigene Terminologie | FSH | static | V·A |
| `external_bindings`,`binding_strengths` | Bindungs-Last & -Stärke (required/extensible/preferred/example) | `fsh-generated` | build/static* | V·A |
| `terminology_systems` | SNOMED/LOINC/ICD/eigene | FSH/Bindings | static* | V·A |
| `unresolvable_valuesets` | nicht auflösbare VS | `qa.json` | build | A |

## D. Abhängigkeiten & Konformität
| metric_id | Misst | Quelle | Modus | Nutzen |
|---|---|---|---|---|
| `dependencies_count`,`deps_pinned`,`deps_floating`,`deps_items` | Abhängigkeiten, **gepinnt vs. floating (`.x`)** | sushi-config | static | V·A |
| `base_profiles` | de.basisprofil/IPS/EU-Schichtung | dependencies | static | V |

## E. Narrative & Doku
| metric_id | Misst | Quelle | Modus | Nutzen |
|---|---|---|---|---|
| `narrative_pages`,`narrative_words`,`images` | Doku-Umfang | `input/pagecontent/**`, `implementation-guides/**`, `input/images` | static | V·A |
| `mandatory_pages_present`/`_missing` | Pflichtabschnitte | Seitenliste vs. Soll-Set | static | V·A |
| `simplifier_directives_total`,`_by_label`,`_unknown` | Simplifier-/FQL-Direktiven (Narrativ-Nacharbeit) | `references/report-content.json` + `scripts/ig-stats.py` | static | A |

## F. Mehrsprachigkeit
| metric_id | Misst | Quelle | Modus | Nutzen |
|---|---|---|---|---|
| `i18n_default_lang`,`languages` | Sprachkonfiguration | sushi-config | static | V·A |
| `translation_supplements`,`translated_pages`,`fsh_translation_ext` | Übersetzungs-Abdeckung / Harvest-Potenzial | `input/translations`, `*-<lang>.md`, FSH | static | A |

## G. Qualität & Gesundheit (Build)
| metric_id | Misst | Quelle | Modus | Nutzen |
|---|---|---|---|---|
| `qa_errors`,`qa_warnings`,`qa_hints`,`broken_links` | Build-Gesundheit | `qa.json`/`qa.txt` | build | V·A |
| `qa_categories` | Fehler je Kategorie (Terminologie, Referenz, **id/url-Mismatch**, …) | `qa.json` | build | A |
| `examples_valid_ratio` | Beispiel-Validierungsquote | `qa.json` | build | V·A |
| `qc_rules_defined`,`qc_violations` | formalisierte QC-Regeln (`qc/custom.rules.yaml`) | QC-Lauf (Firely Terminal) | static/build | V·A |
| `suppressed_messages` | unterdrückte Meldungen | `ignoreWarnings.txt`/`advisor.json` | static | A |

## H. Prozess / Tooling / Governance
| metric_id | Misst | Quelle | Modus | Nutzen |
|---|---|---|---|---|
| `build_toolchain`,`ci_workflows`,`devcontainer`,`template_based` | Reife der Toolchain | Repo-Dateien | static | V |
| `fsh_present` | FSH-Quelle vorhanden (sonst GoFSH nötig) | `input/fsh` | static | A |

## I. Offener Arbeitsbedarf & Risiko (Treiber, Ziel A)
| metric_id | Misst | Quelle | Modus | Nutzen |
|---|---|---|---|---|
| `driver_gofsh` | GoFSH nötig? (keine FSH) | `fsh_present` | static | A |
| `driver_directives` | # Simplifier-/FQL-Direktiven | E | static | A |
| `driver_pages` | # zu migrierende Narrative-Seiten | E | static | A |
| `driver_idurl_mismatch` | # id/url-Mismatch (`special-url`) | `qa.json` | build | A |
| `driver_floating_pins` | # floating Dependencies | D | static | A |
| `driver_qc_violations` | # QC-/Naming-Verletzungen | G | static/build | A |
| `driver_source_errors` | quell-intrinsische Validierungsfehler | `qa.json` (Diff Quelle↔migriert) | build | A |
| `heterogeneity` | Naming-Varianz, gemischte Sprachen, Strukturabweichung | abgeleitet | static* | A |

> Die Treiber-Zeilen benennen zählbare Größen; das Tool gibt sie in den Gruppen
> aus, die in der Spalte *Quelle* stehen (D, E, G). Ein daraus abgeleitetes
> Aufwandsmodell gibt es bewusst nicht mehr.

## J. Linguistik & Repo-Hygiene

| metric_id | Misst | Quelle | Modus | Nutzen |
|---|---|---|---|---|
| `linguistics.words_avg`,`_median`,`_min`,`_max`,`longest_page`,`shortest_page`,`per_page` | Textumfang je Seite (Ø/Median/Extremwerte) zur Umfangseinschätzung | Narrative-Seiten | static | V·A |
| `duplication.duplicate_block_count`,`duplicate_blocks` | inhaltliche Dopplungen (identische Absätze ≥ 12 Wörter, mit Fundstellen) | Narrative-Absätze (Hash) | static | A |
| `duplication.duplicate_file_groups` | identische Seiten (Datei-Dubletten) | Narrative-Dateien (Hash) | static | A |
| `hygiene.unreferenced_images` | Bilder, die in keiner Erklärseite referenziert werden (Dead-Code-Analogie) | Bilddateien vs. Seitentext | static | A |
| `hygiene.examples_not_in_narrative` | Beispiele, die in keiner Erklärseite eingebunden sind (heuristisch) | Beispiel-Namen vs. Seitentext | static | A |

---

> **Entscheidungs-Gruppen K–N** (Nutzen zusätzlich: **S**=Strategie ·
> **R**=Risiko). Heuristiken sind klar als solche markiert.

## K. Reife-Komponenten

| metric_id | Misst | Quelle | Modus | Nutzen |
|---|---|---|---|---|
| `maturity.components` | Reife-Komponenten (Status, Doku, Beispiele, Governance) **nebeneinander — bewusst kein verdichteter Score**: das frühere `score`/`band` war ein Freigabe-Indikator, den der Skill-Scope ausschließt (seit Schema 1.4 entfernt) | gezählt/abgeleitet | static | S·R |
| `maturity.doc_health_pct` | Anteil substanzieller Inhalts-Seiten (ohne Stubs) | Narrative | static | S |
| `maturity.example_coverage` (`coverage_pct`,`uncovered`) | Profile mit ≥ 1 Beispiel; Profile ohne Beispiel | `artifacts_detail` (InstanceOf) | static | S·R |
| `maturity.governance` (`ci_workflows`,`publication_request`,`ig_ini`,`devcontainer`,`governance_score`) | Governance-/Freigabe-Reife | Repo-Dateien | static | S·R |

## L. Strategie: Wiederverwendung, Lock-in & Zukunftssicherheit

| metric_id | Misst | Quelle | Modus | Nutzen |
|---|---|---|---|---|
| `portfolio.vendor_lockin_score`,`_band`,`directives_per_page` | Bindung an die Quellplattform (proprietäre Direktiven) | Direktiven/Seiten | static | S |
| `portfolio.terminology_standard_share_pct`,`terminology_standard_systems` | Anteil Standard- vs. Eigen-Terminologie | FSH | static | S·R |
| `portfolio.canonical_reuse_ratio_pct`,`external_parents` | Wiederverwendung externer Basis-Profile | FSH `Parent:` | static | S |
| `portfolio.fhir_version_label`,`_note` | FHIR-Versions-Aktualität (R4/R4B/R5) | sushi-config | static | S |
| `portfolio.dependency_stale_count`,`dependency_stale` | veraltete Dependencies (CalVer-Heuristik; exakt extern) | deps-Versionen | static* | S·R |
| `portfolio.release_cadence_per_year`,`days_since_last_commit`,`tags` · `git.*` | Pflege-/Aktivitäts-Kadenz, Contributor-Verteilung. **Erfordert vollständige Git-Historie**: bei einem shallow clone (`.git/shallow`; jeder URL-Input wird shallow geklont) `null` + `git.history_complete=false` — null ist nicht 0 | Git-Historie | static | S·R |
| `compare`: Cross-IG-Overlap, Konsolidierungs-/Skaleneffekt | Schnittmengen-Reuse & Programm-Skaleneffekt über mehrere IGs | `artifacts_detail` über IGs | static | S |
| `compare` Same-Module-Verifikation (gleiche packageId) | Migrations-/Zustandstreue: Identitätsfelder, publizierter Artefakt-Satz, Canonical-URLs, Narrative je Sprach-Ebene inkl. Wort-Abdeckung | identity/artifacts_detail/narrative + fsh-generated (URLs, opportunistisch) | static | S·R |

## N. Risiko & Compliance

| metric_id | Misst | Quelle | Modus | Nutzen |
|---|---|---|---|---|
| `risk.terminology_license_flags`,`terminology_license_risk` | Lizenz-/IP-Risiko gebundener Terminologien (SNOMED etc.) | FSH/Bindings | static | R |
| `risk.suppressed_total`,`suppressed_broad`,`suppressed_warning_risk` | Risiko-Klassifikation unterdrückter Warnungen (breit vs. eng) | ignoreWarnings.txt | static | R |
| `risk.privacy_page_substantial`,`examples_contain_pii_like` | Datenschutz-Substanz + PII-Heuristik in Beispielen | Narrative/FSH | static | R |
| `risk.bus_factor_top_author_pct`,`bus_factor_risk` | Wissenskonzentration (Schlüsselpersonen-Risiko). **Erfordert vollständige Git-Historie** — bei einem shallow clone `null` statt eines fiktiven „100 % Top-Autor" | Git-Historie | static | R |
| `risk.breaking_change_risk` | Kompatibilitätsbruch ggü. Vorversion | Vorversions-Diff | build | R |

# Migrationsreport — MII KDS-Modul Bildgebung → MII-KDS-Modul-Template

**Modul:** Kerndatensatzmodul Bildgebung · **Report-Autor:** Agent (Claude) + Skill `mii-ig-migration` v0.23.0 · **Report-Datum:** 2026-08-27
**Geschrieben für:** Modul-Maintainer Bildgebung, TF KDS, Reviewer der Gates A–D · **Entscheidung erbeten bis:** 2026-09-10
**Erbetene Entscheidung:** approve mit den gelisteten Bedingungen (Gates A–C sind OFFEN — autonomer Lauf ohne interaktive Gate-Abnahme)
**Stand:** vollständig durch Build und Verifikation (Skill-Schritte 1–8); Gates A/B/C nicht abgenommen
**Publiziert?** Kein Paket wurde in eine FHIR-Package-Registry released. Das gerenderte Preview ist live
(Template-CI rendert jeden nicht-main-Branch nach `gh-pages` unter `branches/migration/2026.0.0-template-v0.11.3/`).
**Empfehlung:** Die Migration ist technisch vollständig und baut grün (SUSHI 0/0, Publisher-Build erfolgreich); die 43 QA-Fehler sind
fast vollständig quell-autorisiert. Vor dem Merge müssen die ①-Entscheidungen (v. a. Lizenz, Titel, Autor-E-Mail, NCI-Topic)
getroffen und die Maschinenübersetzungen (Gate C) geprüft werden. **Merge = Publikation des Previews, nicht des Pakets.**

## Zusammenfassung — zuerst lesen

Das Kerndatensatzmodul Bildgebung (12 Profile, 14 Extensions, 21 ValueSets, 5 CodeSysteme, 1 LogicalModel,
1 CapabilityStatement, 18+1 Beispiele) wurde vom Simplifier-/SUSHI-Hybrid-Setup auf das MII-KDS-Modul-Template
migriert: FSH unverändert an Ort und Stelle, Narrativ aus dem repo-eigenen Guide-Baum `mii-ig-bildgebung-de-v2027`
in das zweisprachige Template-Seitenset überführt (Deutsch = Quelle, Englisch = Maschinenübersetzung mit Review-Bannern).

- **Quelle:** `medizininformatik-initiative/kerndatensatz-bildgebung` @ `eaeed9a` (main, 2027.0.0-ballot), Shape A
  (SUSHI-Projekt mit FSH im Baum), hybrid; Narrativ aus dem repo-eigenen `implementation-guides/mii-ig-bildgebung-de-v2027`
  (45 Seiten) — Rendered-Guide-Harvest entfiel per Entscheid analog Onkologie (die Guide-Bäume sind frischer als der
  publizierte 2026er-Guide).
- **Gerendertes Preview:** nach Push/CI unter `https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/`
  — Default-Sprache EN, DE unter `.../de/`.
- **Build:** SUSHI (FSH→FHIR-Compiler) **0 Fehler / 0 Warnungen**; der IG Publisher (separates QA) meldet
  **43 Errors / 755 Warnings / 5 Broken Links** (von anfangs 879 — 874 waren EIN Menüeintrag der gelöschten Demo-Seite).
  Zwei Werkzeuge, zwei Zählungen — QA-Fehler brechen den Build nicht.
- **QA-Messlatte:** nicht schlechter als die unmigrierte Quelle. Die Quelle ist ohne IG-Publisher-Setup nicht baubar;
  die CI-Baseline der Quelle (2 Fehler, beide externes THO-Problem) ist durch den THO-7.3.0-Pin **behoben**. Die 43
  Publisher-QA-Fehler sind ③-triagiert: ~29 hängende Beispiel-Referenzen der Quelle, 8 id↔url-Altlasten, 2 Quell-Sprachcode-Bugs,
  4 TX-Umgebung/Pedanterie.
- **Verifikation:** **141 IDENTISCH · 27 DIVERGIERT · 80 NICHT PRÜFBAR** — Check lief und stimmt · lief und fand eine
  benannte Differenz · konnte nicht laufen (KEIN Pass). Jede Zeile mit Next-Action in `migration-log/verification.md`.
  Alle 27 DIVERGIERT sind unten einzeln erklärt (Textrun-Reflow/bewusste Drops, Pin-Entscheidungen, 1 Template-Artefakt).
- **Offen für Menschen:** 12 Entscheidungen (①), 6 Reviews (②), 6 QA-Gruppen (③); **DEC-1 bis DEC-4 blockieren die
  Publikation** (Lizenz, Titel, Autor-E-Mail, Approval-Datum) — siehe Sign-off.
- **Nicht geprüft durch diese Migration:** fachliche Korrektheit der radiologischen Prosa, DICOM-Tag-Korrektheit,
  SNOMED/LOINC-Lizenzlage der Terminologie-Nutzung. Unverändert aus der Quelle übernommen.

## Wo die Evidenz liegt

Alles Zitierte liegt mit dem Branch committed unter `migration-log/`:

| Datei | Was es ist |
|---|---|
| `run.log` | append-only Protokoll jedes Schritts (Kommando, Messwerte, Exit-Status) — die Protokoll-Sektion unten ist DARAUS generiert |
| `verification.md` / `verification-findings.tsv` | die Verifier-Ergebnisse, human/machine-readable, mit Next-Action je Divergenz |
| `page-map.tsv` / `page-structure-advice.md` | der Seiten-Routing-Vertrag (v2), generiert + agent-reviewed (Gate B prüft) |
| `preflight-analysis.json` / `postflight-analysis.json` | dieselbe ig-stats-Messung vor/nach der Migration |
| `prepost-delta.md` / `.tsv` | Property-für-Property-Diff (2 erklärte REGRESSION-Zeilen, s. ③) |
| `derived-content.tsv` | jede von der Migration GESCHRIEBENE Passage (2 Marker) |
| `identity-claims.md` / `.tsv` | Herkunft jedes Identitätswerts, mit Tier und Widerspruchs-Flag |
| `qa-checklist.md` | die per-Gate-Checkliste (GENERIERT), unten in Sign-off eingebettet |
| `comparison-table.md` | die Page-Map als klickbare Quell↔Ziel-Ansicht (GENERIERT) |
| `source-inventory.json` | Quellbäume mit Rolle (authoritative/retained/shared-assets) + QA-Baseline |
| `ig-publisher.log`, `sushi-*.log` | Roh-Output hinter jeder Build-Zahl |

**Zitierformat:** `run.log <step> <action>` = eine Zeile im Run-Log — `grep -F '<action>' migration-log/run.log`.

## Wie alles nachlaufbar ist

| Was | Kommando | Erwartet |
|---|---|---|
| FSH kompilieren | `npx --yes fsh-sushi@3.20.0 .` | 0 Errors |
| Guide rendern + validieren | `java -Xmx6g -Djava.net.preferIPv4Stack=true -jar publisher.jar -ig ig.ini -tx https://tx.fhir.org/r4` (Publisher 2.3.2, SHA-Pin im Workflow-env) | qa.txt mit 43 Errors (③-triagiert) |
| Template-Release-Checks M1–M11 | `node scripts/convention-check.mjs` | M-Checks; M9/M11 sind entschieden (run.log 5.4a/5.4b) |
| Migrations-Verifier | `python3 <skill>/scripts/verify-migration.py --target . --source <unmigrated> --rendered output --source-lang de --template-latest v0.11.3` | exit 1 (27 benannte Divergenzen, s. Verifikation) |
| Derived-Scan | `python3 <skill>/scripts/derived-scan.py --target .` | 2 Marker, 0 Findings |
| Page-Routing-Generator | `python3 <skill>/scripts/page-structure-advice.py --source <unmigrated> --target . --guide-tree mii-ig-bildgebung-de-v2027 --map migration-log/page-map.tsv` | volle Abdeckung; ÜBERSCHREIBT die reviewte Map — Reviews danach erneut anwenden |
| Pre/Post-Delta | `python3 <skill>/scripts/prepost-delta.py --pre ... --post ...` | exit 1: 2 REGRESSION-Zeilen, beide unten erklärt |

Der Verifier ist NICHT in diesem Repo vendored — er gehört zum Skill `mii-ig-migration` (Katalog
`forschungsgruppe-digital-health/agent-skills`, konsumiert v0.23.0, lokal unter `kerndatensatzmodul-onkologie/.claude/skills/`).

## Codes, Gates und Begriffe

**Item-Ids:** `DEC-n` = ①-Entscheidung · `REV-n` = ②-Review · `QA-n` = ③-Triage · `FIX-n` = angewandter, revertierbarer Fix.
**Verdikte:** **IDENTISCH** Check lief und stimmt · **DIVERGIERT** benannte Differenz · **NICHT PRÜFBAR** konnte nicht
laufen — KEIN Pass, jede Zeile schuldet einer benannten Rolle eine Aktion.
**M1–M11:** die Release-Checks des Templates (`scripts/convention-check.mjs`): u. a. M7 kein floating Pin · M8 Demo-Seite
weg · M9 jede optionale Seite entschieden (gemessen: Artefaktzahl 0 → weg) · M10 kein Titel als Erstüberschrift ·
M11 Security-Privacy-Stufe-3 entschieden.
**C/F/P/R/L:** die Verifier-Ebenen — Conservation (kam alles an) · Fidelity (ist das Modul noch es selbst) ·
Provenance (gebaut mit den behaupteten Versionen) · Rendering (rendert die Site) · Log (Run-Log gegen Baum).

| Gate | Entscheidet | Rolle | Status |
|---|---|---|---|
| **A** | Identität, Lizenz, Pins, Artefakt-Vollständigkeit | Modul-Maintainer + TF KDS | **OFFEN** (run.log gate-A open) |
| **B** | Narrativ: Page-Map, RETIRED-Drops, Intro-Note-Transformation | fachliche/technische Autoren des Moduls | **OFFEN** |
| **C** | Sprache: alle Maschinenübersetzungen, Menü, .po | DE/EN-kompetenter Domain-Reviewer | **OFFEN** |
| **D** | Release per KDS-Governance; **Merge publiziert das Preview** | TF KDS / AG IOP / NSG | offen (nach A–C) |

## Bereits angewendete Fixes (bestätigen oder zurückrollen)

Merge akzeptiert alle. Revert einzeln auf Branch `migration/2026.0.0-template-v0.11.3`, **neueste zuerst**.

| # | Fix | Commit | Berührt außerdem | Wenn revertiert | Unabhängig? |
|---|---|---|---|---|---|
| FIX-1 | `hl7.fhir.r4.core` aus dependencies entfernt (Publisher 2.3.2 fügt Core selbst hinzu, Duplikat = Abbruch) | in `4e0a34f` | sushi-config (license, .po, Menü-M9) | Build bricht sofort ("Name hl7.fhir.r4.core already exists") | nein — Commit bündelt FIX-1/2/5 |
| FIX-2 | `license: CC-BY-4.0` gesetzt (Tier-R-Evidenz Quell-Impressum; NIE Template-Default) | in `4e0a34f` | s. o. | Lizenzfeld fehlt; Paket ohne SPDX-Deklaration | nein (s. o.) |
| FIX-3 | STAND-IN Patient-Beispiel `PatExample` (Publisher-NPE bei nicht auflösbarem DiagnosticReport.subject) | in `9701229` | Ledger-Commit bündelt FIX-3/4/6 + no-narrative-Entfernung (git-add-Staging trotz Ignore-Hinweis) | Build bricht mit Renderer-NPE | nein — selektiv: `git checkout <sha>^ -- <pfad>` |
| FIX-4 | Menüeintrag der gelöschten rendering-artifacts-Demo entfernt | in `9701229` | s. FIX-3 | 874 Broken Links kehren zurück | nein (s. FIX-3) |
| FIX-5 | Publisher-.po-Unit NUM-DIZ→"Medizininformatik Initiative" (konsistent zum Quell-Publisher) | in `4e0a34f` | s. o. | Footer-©-Zeile zeigt NUM-DIZ bei Publisher MII | nein (s. o.) |
| FIX-6 | SPDX-Kennung im Index-Lizenztext + Publisher-Nebenprodukte ignoriert | in `9701229` | s. FIX-3 | Lizenz-Parser meldet weiter 2 Werte | nein (s. FIX-3) |
| FIX-7 | `ig.ini` + `fsh-generated/` wieder trackbar (Quell-/Template-Ignore-Kollision) | `ce7656d` | .gitignore | CI kann den Guide nicht bauen (ig.ini fehlt im Repo) | ja |

**Pflicht, nicht optional:** FIX-1, FIX-3, FIX-7 — Revert reproduziert nur einen Build-/CI-Bruch.
*(Hinweis Revert-Granularität: FIX-3/4/6 liegen entgegen der Ein-Commit-pro-Fix-Regel gebündelt in `9701229` — ein git-add-Exit-1 (Ignore-Hinweis) hat die Einzel-Commits übersprungen und der Folge-Commit hat das Staging aufgesammelt; für Einzel-Reverts den jeweiligen Pfad per `git checkout 9701229^ -- <pfad>` zurückholen.)*

## ① Entscheidungsqueue (Gate A — jemand muss wählen)

**DEC-1 — Lizenz CC-BY-4.0 bestätigen** · severity **blocking** · Gate A
- **Was:** Kein `license`-Feld in sushi-config, package.json, publiziertem Paket 2026.0.0; keine LICENSE-Datei. Einzige
  Evidenz: das Quell-Impressum („© 2019+ TMF e. V. … CC BY 4.0"). Die Migration hat `license: CC-BY-4.0` gesetzt (Tier R,
  kein Default — der Template-Default wäre zufällig identisch, wurde aber NICHT als Begründung verwendet).
- **Wo:** `sushi-config.yaml` (license-Zeile mit Evidenz-Kommentar); Index-Seiten beider Sprachen.
- **Wenn niemand handelt:** Das Paket deklariert CC-BY-4.0 auf Basis einer Impressum-Lesart; F3 bleibt ohne LICENSE-Datei „ok note".
- **Optionen:** (a) bestätigen + LICENSE-Datei (CC-BY-4.0-Text) ergänzen → F3 wird prüfbar · (b) andere Lizenz (z. B. CC0-1.0
  wie Onkologie) → bewusste Um-Lizenzierung, TF-KDS-Entscheid. **Default jetzt:** CC-BY-4.0 ohne LICENSE-Datei.
- **Wer:** Modul-Maintainer + TF KDS. **Aufwand · Impact:** Minuten · blockiert Release. **Reversibel:** ja (Config).
- **Evidenz:** run.log `2.1 identity-absent` + `2.1 read license`; identity-claims.md.

**DEC-2 — Titel „MII IG Kerndatensatz-Modul Bildgebung"** · severity **blocking** · Gate A
- **Was:** Die Quelle trägt keinen `title`. Abgeleitet nach dem Onkologie-Muster („MII IG Kerndatensatz-Modul Onkologie").
- **Wo:** `sushi-config.yaml` title (TODO:REVIEW-Kommentar). **Wenn niemand handelt:** abgeleiteter Titel shippt.
- **Optionen:** (a) bestätigen · (b) Template-Muster „MII Implementation Guide …" · (c) eigener Titel. **Default:** (a).
- **Wer:** Modul-Maintainer. **Aufwand:** Minuten · konsumenten-sichtbar. **Reversibel:** ja. **Evidenz:** run.log `2.1 identity-absent`.

**DEC-3 — Autor-E-Mail (artifact-author)** · severity **blocking** · Gate A · STAND-IN
- **Was:** `{MODULE_AUTHOR_EMAIL}` hat keinen Quellwert; aktueller Wert ist der String „TODO:REVIEW" (bewusst bogus,
  damit nichts Plausibles shippt). package.json-`author` „lucasscherer" ist ein Registry-Account, kein Kontakt.
- **Wo:** `sushi-config.yaml` artifact-author; `input/fsh/rulesets/crmi.fsh`.
- **Wenn niemand handelt:** die IG-Ressource trägt „TODO:REVIEW" als E-Mail. **Optionen:** echten Modul-Kontakt eintragen.
- **Wer:** Modul-Maintainer. **Aufwand:** Minuten · blockiert Release. **Reversibel:** ja. **Evidenz:** run.log `5.2 placeholder-census`.

**DEC-4 — Approval-/Release-Datum 2026-08-27** · severity **blocking** · Gate A · STAND-IN
- **Was:** `date` und `resource-approvalDate` = Migrationsdatum (ci-build, kein formales Release; Quelle nennt als
  Publikationsdatum 01.09.2026 auf der Indexseite). **Wo:** `sushi-config.yaml`.
- **Optionen:** (a) 2026-09-01 (Quell-Indexwert) · (b) beim tatsächlichen Ballot-Datum setzen · (c) 2026-08-27 belassen.
  **Default:** (c). **Wer:** Maintainer. **Aufwand:** Minuten. **Reversibel:** ja. **Evidenz:** identity-claims; Index.page.md.

**DEC-5 — NCI-Topic C16502 (Diagnostic Imaging)** · severity high · Gate A · STAND-IN — bestätigen oder ersetzen;
`sushi-config.yaml` artifact-topic. Onkologie-Präzedenz: C3262 wurde an Gate A bestätigt. Default: C16502.
**DEC-6 — Publisher „Medizininformatik Initiative" vs. Template-NUM-DIZ** · severity high · Gate A — spec §9a erklärt
NUM-DIZ zum Template-Chrome und ÜBERSCHREIBT source-wins; die Migration folgt dennoch dem heutigen Onkologie-Gate-A-Entscheid
(MII). TF-KDS-weite Klärung nötig; .po-Unit hängt daran (FIX-5). Default: MII.
**DEC-7 — Dependency-Pins** · severity high · Gate A — floating Quellpins auf Registry-Stände gepinnt (basisprofil
1.5.x→1.5.4, meta 2026.0.x→2026.0.0, medikation→2026.0.1, base→2026.0.1), weil Template-CI (M7) floating ablehnt;
+ `hl7.fhir.uv.crmi 2.0.0` und `hl7.terminology.r4 7.3.0` (Template-Maschinerie/Injection-Guard; behebt zugleich die
2 CI-Baseline-Fehler); `hl7.fhir.uv.extensions.r4` bleibt Quell-Pin 5.2.0 (Template empfiehlt 5.3.0 — Bump = Folgearbeit);
`hl7.fhir.r4.core` entfernt (FIX-1). F2 meldet genau diese 4+2 als DIVERGIERT/NICHT PRÜFBAR — bestätigen.
**DEC-8 — copyrightYear „2024+" vs. Impressum „© 2019+"** · severity medium · Gate A — identity-contradiction, nicht
aufgelöst (sushi-config gewinnt). Klären, ob 2019+ korrekt ist.
**DEC-9 — manualSliceOrdering false** · severity medium · Gate A — Quellverhalten beibehalten; Template empfiehlt true
(Folgearbeit: benannte Slices). Default: false.
**DEC-10 — tests/profiles-Fixtures** · severity medium · Gate A — die Template-Testfixtures referenzieren das (per
Guardrail 5 nicht kopierte) example-patient; auf ein echtes Modulprofil umstellen, sonst bleibt `profile-test-cases`
auskommentiert. Default: auskommentiert.
**DEC-11 — Gate-D-Retire-Set** · severity medium · Gate D — nach Abnahme entfernen/behalten: `implementation-guides/`
(4 Simplifier-Bäume; solange sie bleiben, meldet der Delta dual_source und der finale fql-scan exit 1), alte
`.github/workflows/main.yml` (Doppel-CI mit validation.yml!), `advisor.json`, `plantUmlSrc/` (retain — UML-Quelle),
fsh-generated-Tracking (Quelle trackt, Template generiert — ① geloggt). Default: alles retained.
**DEC-12 — STAND-IN Patient-Beispiel PatExample** · severity medium · Gate A/B — FIX-3 bestätigen oder durch
KDS-Person-konformes Beispiel ersetzen (dann DIZ-Beispielkette komplett). Default: minimaler synthetischer R4-Patient.

**DEC-13 — M6-FAIL: Version `2027.0.0-ballot` vs. Template-CalVer-Check** · severity high · Gate A
- **Was:** Der Template-Release-Check M6 verlangt reines CalVer `YYYY.n.n`; die Quelle nutzt den Ballot-Suffix
  (`2027.0.0-ballot` — Konvention der Quelle, `2026.0.0-ballot` ist sogar registry-publiziert). Die Migration
  normalisiert NICHT stillschweigend (Skill §2: Quelle gewinnt) — der convention-check auf dem PR bleibt daher ROT.
- **Wo:** `sushi-config.yaml` version; Check: `scripts/convention-check.mjs` (M6).
- **Wenn niemand handelt:** PR-Check bleibt rot; Merge nur mit Override möglich.
- **Optionen:** (a) Check upstream erweitern (Ballot-Suffix als zulässige Pre-Release-Form — Issue im
  mii-kds-module-template) · (b) Version beim Release ohnehin auf `2027.0.0` setzen und den Roten Check bis dahin
  hinnehmen · (c) jetzt auf `2027.0.0` normalisieren → Semantikänderung (Ballot-Markierung geht verloren).
  **Default:** unverändert (rot, dokumentiert).
- **Wer:** Modul-Maintainer + Template-Owner. **Aufwand:** Minuten–Stunden · blockiert Merge-Check. **Reversibel:** ja.
- **Evidenz:** CI-Lauf 33100813947 (M1–M5, M7, M9–M11 PASS; nur M6 FAIL); run.log `9 ci-triage`.

**Erfundene Werte (STAND-IN):** Autor-E-Mail (DEC-3), Datum (DEC-4), NCI-Topic (DEC-5), PatExample (DEC-12), EN-Description
+ Titel (DEC-2, abgeleitet) — je mit Fundstelle oben.

## ② Review-Queue (Gates B/C — jemand muss prüfen)

### Derived content — GENERIERT (derived-scan)

2 Marker, 0 Findings — beide `suggestion`, Gate B, `security-and-privacy` (EN+DE): die von der Migration GESCHRIEBENE
Stufe 3 (identifizierende DICOM-Metadaten, burnedInAnnotation). Quelle: keine (source=none). Review: Text prüfen,
Marker+Box löschen oder Text ersetzen. `migration-log/derived-content.tsv`.

### Handgeschriebene Review-Items

**REV-1 — Page-Map bestätigen (48 Zeilen)** · severity high · Gate B — `migration-log/page-map.tsv`, agent-korrigiert
(Profil-/Extension-Seiten → Intro-Notes statt der generierten value-sets-Fehlroute). Besonders die 5 RETIRED-Zeilen:
Conformance-Boilerplate (25 Textruns bewusst nicht migriert — Cluster ist link-only zum Meta-Modul, spec §9a),
TNM-Seite (Profil auf main entfernt), 2 leere Index-Stubs, ImplementationGuide-Common (Bilder übernommen).
**Wenn niemand handelt:** die Drops shippen wie entschieden. **Wer:** Modul-Autoren.
**REV-2 — C4/C7-Textrun-Divergenzen (12 Seiten)** · severity high · Gate B — der Verifier meldet 1–4 fehlende Prosa-Runs
auf 10 Seiten (Reflow-/Link-Format-Artefakte beim Merge, z. B. zerlegte Listen, umformatiertes „[DICOM Standard](…)")
plus die 2 großen bewussten Drops (Conformance 25/25, FHIR-Profile/Index 27/28 = MII-Namenskonventions-Boilerplate →
Meta-Wiki-Link auf profiles.md). Je Seite in `verification.md` mit Erst-Run benannt — stichprobenartig gegen die
gerenderten Seiten lesen. **Wer:** Modul-Autoren (B).
**REV-3 — EN-Maschinenübersetzungen (36 Dateien)** · severity high · Gate C — Banner-Grep:
`grep -rl "machine translation of source page" input/` (26 Intro-Notes + 10 Seiten). **Wer:** DE/EN-Reviewer.
**REV-4 — M9-Abweichung metadata.md** · severity low · Gate B — metadata KEPT (Template-vorbefüllt; Quelle trägt
Publikationsmetadaten), obwohl strenge 0→remove-Lesart auch Entfernen erlaubte; researcher-guidance REMOVED (nichts
routet dorthin). Bestätigen. run.log `5.4a optional-page-decisions`.
**REV-5 — Terminologien-Split** · severity low · Gate B — Quellseite auf `code-systems.md` (CS-Anteile, DICOM-Hinweis-Box,
SNOMED/LOINC/RadLex, UCUM) und `value-sets.md` (DICOM-VS-Liste) aufgeteilt (Split-Regel §9a).
**REV-6 — Intro-Note-Transformation** · severity medium · Gate B — mechanische Drops je Artefaktseite: FQL-Metadaten
(Header generiert), Tabs/XML/JSON (Artefaktseite rendert selbst), LM-Mapping-FQL → LM-Link, SP-Boilerplate (heutiger
Onkologie-Gate-B-Entscheid), Beispiel-Dumps → Links (19/19 verifiziert). `migration-log/intro-transform-report.json`.

## ③ QA-Triage

**Baseline:** Die Quelle ist ohne IG-Publisher-Setup nicht mit demselben Werkzeug baubar (kein ig.ini/Template im
Quellstand) — die Publisher-QA-Zahlen haben daher KEINE gemessene Quell-Baseline; als Baseline dient der Quell-CI-Lauf
33073272472 (2 Fehler, beide extern: THO-artifact-version-policy im Validator-Bundle; durch THO-7.3.0-Pin behoben).
Provenienz „source-authored" unten stützt sich auf Inhaltsgleichheit der Quelle (FSH unverändert), nicht auf einen
Baseline-Build — deshalb konservativ „nicht baseline-beweisbar" statt „proven".

| Build | Errors | Lesart |
|---|---|---|
| Quelle (CI, Java-Validator + advisor.json) | 2 | beide extern (THO); durch THO-Pin behoben |
| Ziel (IG Publisher 2.3.2, tx.fhir.org) | 43 | strengerer Kontext; Aufschlüsselung unten |

| # | Befund | Anzahl | Wessen Problem | Wenn niemand handelt | Next Action | Wer |
|---|---|---|---|---|---|---|
| QA-1 | Hängende Beispiel-Referenzen (CondExample, EncExample, PracExample1/2, ObsExample, MedExample, DiagRepExample) | ~29 | source-authored (FSH unverändert; Simplifier tolerierte) | Fehler bleiben im QA-Report | Stand-ins ergänzen ODER Referenzen auf .display umstellen — Modul-Entscheid | Modul-Team |
| QA-2 | id↔url-Mismatch + Conformance-Fehler (serie-uid/series-uid, us-implemantation-Typo, LogicalModel/Bildgebung, CPS/metadata) | 8 | source-authored; Canonicals UNVERÄNDERLICH (Guardrail 1) | bleibt | akzeptieren, dokumentiert | niemand hier |
| QA-3 | Ungültiger Sprachcode `de-EN` in koerperstruktur-Translation | 2 | source-Bug | bleibt | Quell-FSH-Fix (→ `en`) als Folge-PR | Modul-Team |
| QA-4 | `BQML` Unknown code (DICOM CID 84) + LOINC-Filter `CLASS` | 3 | TX-Umgebung (tx.fhir.org ohne DICOM-CS/LOINC-Property) | bleibt im lokalen QA; CI mit SU-TermServ maßgeblich | beobachten | DIZ-CI |
| QA-5 | dependsOn-URL-Pedanterie (ImplementationGuide.dependsOn[4]) | 1 | Publisher-Hinweisform | bleibt | akzeptieren | niemand |
| QA-6 | prepost-delta REGRESSION x2 | 2 | (1) Lizenz-„Widerspruch" cc-by-4.0 vs creativecommons = Normalisierungs-Artefakt des Analyzers (identisch im Onkologie-Lauf) · (2) dual_source = eingefrorene Quellbäume bis Gate D (Skill-Regel) | — | mit DEC-11 erledigen | Gate D |

**Blockiert?** Nichts davon bricht den Build; die Messlatte (nicht schlechter als Quelle im maßgeblichen CI-Kontext) ist erfüllt.

## Gate 0 — Preflight-Scope (Evidenz)

| Aspekt | Gemessen (Quelle) | Folge in diesem Lauf |
|---|---|---|
| Artefakte | 12 PR / 14 EX / 21 VS / 5 CS / 1 LM / 1 CPS / 0 SP / 0 OP / 18 EXA (=72; generated_crosscheck: 0 Mismatches) | M9: search-parameters+operations entfernt; alle Zähler post-migration identisch (+1 Beispiel = PatExample, DEC-12) |
| Canonical-Raum | out_of_space=0 → keine special-url-Liste nötig; 4 id↔url-Mismatches | QA-2; special-url bleibt auskommentiert |
| Lizenz-Evidenz | nirgends deklariert; Impressum CC BY 4.0 | DEC-1 |
| Dependency-Health | 4 floating Pins; injection_risk=true (THO ungepinnt) | DEC-7; injection_risk→false (improved) |
| Narrativ | 118 Seiten in 3 DE-Bäumen + Common; authoritative v2027 (45) | Page-Map 48 Zeilen |
| QA-Baseline | CI-Lauf 33073272472: 2 Fehler (extern) | ③-Baseline |

## Content-Map (GENERIERT — comparison-table)

### Comparison table (GENERATED by comparison-table.py — do not retype; regenerate instead)

This table belongs inside `migration-log/migration-report.md` (section *Content map*), whose glossary explains every term used here; `references/codes.md` of the skill is the backstop. "Agreed page" = a page of the template's fixed menu; "migration-written blocks" = passages the migration WROTE rather than carried, marked in the rendered guide and listed per page in `derived-content.tsv`. Found a discrepancy while comparing? Record it as a report item (REV-n) — never fix a page ad hoc.

**Where every source page went** — one row per page-map row; open both links side by side to compare manually. *(constructed)* marks a source link derived from the guide root rather than read from the harvest manifest.

| Rendered source page | Rendered target page | What moved | Migration-written blocks on the target |
|---|---|---|---|
| [`MIIIGModulBildgebung/Index.page.md`](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/blob/main/implementation-guides/mii-ig-bildgebung-de-v2027/MIIIGModulBildgebung/Index.page.md) *(repo file, not rendered)* | [`input/pagecontent/index.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/index.html) | merged into an agreed page | — |
| [`MIIIGModulBildgebung/Release-Notes.page.md`](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/blob/main/implementation-guides/mii-ig-bildgebung-de-v2027/MIIIGModulBildgebung/Release-Notes.page.md) *(repo file, not rendered)* | [`input/pagecontent/changes.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/changes.html) | merged into an agreed page | — |
| [`MIIIGModulBildgebung/BeschreibungModul.page.md`](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/blob/main/implementation-guides/mii-ig-bildgebung-de-v2027/MIIIGModulBildgebung/BeschreibungModul.page.md) *(repo file, not rendered)* | [`input/pagecontent/index.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/index.html) | merged into an agreed page | — |
| [`MIIIGModulBildgebung/KontextimGesamtprojektBezgezuanderenModulen.page.md`](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/blob/main/implementation-guides/mii-ig-bildgebung-de-v2027/MIIIGModulBildgebung/KontextimGesamtprojektBezgezuanderenModulen.page.md) *(repo file, not rendered)* | [`input/pagecontent/implementer-guidance.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/implementer-guidance.html) | merged into an agreed page | — |
| [`MIIIGModulBildgebung/Referenzen.page.md`](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/blob/main/implementation-guides/mii-ig-bildgebung-de-v2027/MIIIGModulBildgebung/Referenzen.page.md) *(repo file, not rendered)* | [`input/pagecontent/implementer-guidance.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/implementer-guidance.html) | merged into an agreed page | — |
| [`MIIIGModulBildgebung/AnwendungsflleInformationsmodell/Index.page.md`](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/blob/main/implementation-guides/mii-ig-bildgebung-de-v2027/MIIIGModulBildgebung/AnwendungsflleInformationsmodell/Index.page.md) *(repo file, not rendered)* | — | RETIRED (not migrated) | — |
| [`MIIIGModulBildgebung/AnwendungsflleInformationsmodell/BeschreibungvonSzenarienfrdieAnwendungderModule.page.md`](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/blob/main/implementation-guides/mii-ig-bildgebung-de-v2027/MIIIGModulBildgebung/AnwendungsflleInformationsmodell/BeschreibungvonSzenarienfrdieAnwendungderModule.page.md) *(repo file, not rendered)* | [`input/pagecontent/guidance.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/guidance.html) | merged into an agreed page | — |
| [`MIIIGModulBildgebung/AnwendungsflleInformationsmodell/Datensaetze_inkl._Beschreibungen.page.md`](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/blob/main/implementation-guides/mii-ig-bildgebung-de-v2027/MIIIGModulBildgebung/AnwendungsflleInformationsmodell/Datensaetze_inkl._Beschreibungen.page.md) *(repo file, not rendered)* | [`input/pagecontent/logical-models.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/logical-models.html) | merged into an agreed page | — |
| [`MIIIGModulBildgebung/AnwendungsflleInformationsmodell/UML/Index.page.md`](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/blob/main/implementation-guides/mii-ig-bildgebung-de-v2027/MIIIGModulBildgebung/AnwendungsflleInformationsmodell/UML/Index.page.md) *(repo file, not rendered)* | [`input/pagecontent/uml-diagrams.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/uml-diagrams.html) | merged into an agreed page | — |
| [`MIIIGModulBildgebung/AnwendungsflleInformationsmodell/UML/UML_Meta.page.md`](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/blob/main/implementation-guides/mii-ig-bildgebung-de-v2027/MIIIGModulBildgebung/AnwendungsflleInformationsmodell/UML/UML_Meta.page.md) *(repo file, not rendered)* | [`input/pagecontent/uml-diagrams.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/uml-diagrams.html) | merged into an agreed page | — |
| [`MIIIGModulBildgebung/AnwendungsflleInformationsmodell/UML/UML_Befund.page.md`](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/blob/main/implementation-guides/mii-ig-bildgebung-de-v2027/MIIIGModulBildgebung/AnwendungsflleInformationsmodell/UML/UML_Befund.page.md) *(repo file, not rendered)* | [`input/pagecontent/uml-diagrams.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/uml-diagrams.html) | merged into an agreed page | — |
| [`MIIIGModulBildgebung/TechnischeImplementierung/Index.page.md`](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/blob/main/implementation-guides/mii-ig-bildgebung-de-v2027/MIIIGModulBildgebung/TechnischeImplementierung/Index.page.md) *(repo file, not rendered)* | — | RETIRED (not migrated) | — |
| [`MIIIGModulBildgebung/TechnischeImplementierung/Terminologien.page.md`](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/blob/main/implementation-guides/mii-ig-bildgebung-de-v2027/MIIIGModulBildgebung/TechnischeImplementierung/Terminologien.page.md) *(repo file, not rendered)* | [`input/pagecontent/code-systems.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/code-systems.html) | merged into an agreed page | — |
| [`MIIIGModulBildgebung/TechnischeImplementierung/CapabilityStatement.page.md`](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/blob/main/implementation-guides/mii-ig-bildgebung-de-v2027/MIIIGModulBildgebung/TechnischeImplementierung/CapabilityStatement.page.md) *(repo file, not rendered)* | [`input/pagecontent/capability-statements.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/capability-statements.html) | merged into an agreed page | — |
| [`MIIIGModulBildgebung/TechnischeImplementierung/Conformance.page.md`](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/blob/main/implementation-guides/mii-ig-bildgebung-de-v2027/MIIIGModulBildgebung/TechnischeImplementierung/Conformance.page.md) *(repo file, not rendered)* | — | RETIRED (not migrated) | — |
| [`MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Index.page.md`](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/blob/main/implementation-guides/mii-ig-bildgebung-de-v2027/MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Index.page.md) *(repo file, not rendered)* | [`input/pagecontent/profiles.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/profiles.html) | a section on a family index page | — |
| [`MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/BodyStructure.page.md`](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/blob/main/implementation-guides/mii-ig-bildgebung-de-v2027/MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/BodyStructure.page.md) *(repo file, not rendered)* | [`input/intro-notes/StructureDefinition-mii-pr-bildgebung-koerperstruktur-intro.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/StructureDefinition-mii-pr-bildgebung-koerperstruktur.html) *(renders inside the artefact page)* | into an artefact's intro note | — |
| [`MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/CarePlan.page.md`](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/blob/main/implementation-guides/mii-ig-bildgebung-de-v2027/MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/CarePlan.page.md) *(repo file, not rendered)* | [`input/intro-notes/StructureDefinition-mii-pr-bildgebung-behandlungsempfehlung-intro.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/StructureDefinition-mii-pr-bildgebung-behandlungsempfehlung.html) *(renders inside the artefact page)* | into an artefact's intro note | — |
| [`MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Composition.page.md`](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/blob/main/implementation-guides/mii-ig-bildgebung-de-v2027/MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Composition.page.md) *(repo file, not rendered)* | [`input/intro-notes/StructureDefinition-mii-pr-bildgebung-semistrukt-befundbericht-intro.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/StructureDefinition-mii-pr-bildgebung-semistrukt-befundbericht.html) *(renders inside the artefact page)* | into an artefact's intro note | — |
| [`MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Device.page.md`](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/blob/main/implementation-guides/mii-ig-bildgebung-de-v2027/MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Device.page.md) *(repo file, not rendered)* | [`input/intro-notes/StructureDefinition-mii-pr-bildgebung-geraet-intro.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/StructureDefinition-mii-pr-bildgebung-geraet.html) *(renders inside the artefact page)* | into an artefact's intro note | — |
| [`MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/DiagnosticReport.page.md`](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/blob/main/implementation-guides/mii-ig-bildgebung-de-v2027/MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/DiagnosticReport.page.md) *(repo file, not rendered)* | [`input/intro-notes/StructureDefinition-mii-pr-bildgebung-radiologischer-befund-intro.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/StructureDefinition-mii-pr-bildgebung-radiologischer-befund.html) *(renders inside the artefact page)* | into an artefact's intro note | — |
| [`MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingProcedure.page.md`](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/blob/main/implementation-guides/mii-ig-bildgebung-de-v2027/MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingProcedure.page.md) *(repo file, not rendered)* | [`input/intro-notes/StructureDefinition-mii-pr-bildgebung-bildgebungsprozedur-intro.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/StructureDefinition-mii-pr-bildgebung-bildgebungsprozedur.html) *(renders inside the artefact page)* | into an artefact's intro note | — |
| [`MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ContrastAdministration.page.md`](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/blob/main/implementation-guides/mii-ig-bildgebung-de-v2027/MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ContrastAdministration.page.md) *(repo file, not rendered)* | [`input/intro-notes/StructureDefinition-mii-pr-bildgebung-kontrastmittelgabe-intro.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/StructureDefinition-mii-pr-bildgebung-kontrastmittelgabe.html) *(renders inside the artefact page)* | into an artefact's intro note | — |
| [`MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ReadProcedure.page.md`](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/blob/main/implementation-guides/mii-ig-bildgebung-de-v2027/MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ReadProcedure.page.md) *(repo file, not rendered)* | [`input/intro-notes/StructureDefinition-mii-pr-bildgebung-radiologische-befundungsprozedur-intro.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/StructureDefinition-mii-pr-bildgebung-radiologische-befundungsprozedur.html) *(renders inside the artefact page)* | into an artefact's intro note | — |
| [`MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ServiceRequest.page.md`](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/blob/main/implementation-guides/mii-ig-bildgebung-de-v2027/MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ServiceRequest.page.md) *(repo file, not rendered)* | [`input/intro-notes/StructureDefinition-mii-pr-bildgebung-anforderung-bildgebung-intro.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/StructureDefinition-mii-pr-bildgebung-anforderung-bildgebung.html) *(renders inside the artefact page)* | into an artefact's intro note | — |
| [`MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/TNMRadiologicalReadProcedure.page.md`](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/blob/main/implementation-guides/mii-ig-bildgebung-de-v2027/MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/TNMRadiologicalReadProcedure.page.md) *(repo file, not rendered)* | — | RETIRED (not migrated) | — |
| [`MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Index.page.md`](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/blob/main/implementation-guides/mii-ig-bildgebung-de-v2027/MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Index.page.md) *(repo file, not rendered)* | [`input/intro-notes/StructureDefinition-mii-pr-bildgebung-bildgebungsstudie-intro.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/StructureDefinition-mii-pr-bildgebung-bildgebungsstudie.html) *(renders inside the artefact page)* | into an artefact's intro note | — |
| [`MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Extension-ImagingReason.page.md`](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/blob/main/implementation-guides/mii-ig-bildgebung-de-v2027/MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Extension-ImagingReason.page.md) *(repo file, not rendered)* | [`input/intro-notes/StructureDefinition-mii-ex-bildgebung-bildgebungsgrund-intro.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/StructureDefinition-mii-ex-bildgebung-bildgebungsgrund.html) *(renders inside the artefact page)* | into an artefact's intro note | — |
| [`MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Extension-Height.page.md`](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/blob/main/implementation-guides/mii-ig-bildgebung-de-v2027/MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Extension-Height.page.md) *(repo file, not rendered)* | [`input/intro-notes/StructureDefinition-mii-ex-bildgebung-groesse-intro.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/StructureDefinition-mii-ex-bildgebung-groesse.html) *(renders inside the artefact page)* | into an artefact's intro note | — |
| [`MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Extension-Weight.page.md`](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/blob/main/implementation-guides/mii-ig-bildgebung-de-v2027/MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Extension-Weight.page.md) *(repo file, not rendered)* | [`input/intro-notes/StructureDefinition-mii-ex-bildgebung-gewicht-intro.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/StructureDefinition-mii-ex-bildgebung-gewicht.html) *(renders inside the artefact page)* | into an artefact's intro note | — |
| [`MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Extension-CT.page.md`](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/blob/main/implementation-guides/mii-ig-bildgebung-de-v2027/MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Extension-CT.page.md) *(repo file, not rendered)* | [`input/intro-notes/StructureDefinition-mii-ex-bildgebung-modalitaet-ct-intro.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/StructureDefinition-mii-ex-bildgebung-modalitaet-ct.html) *(renders inside the artefact page)* | into an artefact's intro note | — |
| [`MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Extension-MG_CR_DX.page.md`](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/blob/main/implementation-guides/mii-ig-bildgebung-de-v2027/MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Extension-MG_CR_DX.page.md) *(repo file, not rendered)* | [`input/intro-notes/StructureDefinition-mii-ex-bildgebung-modalitaet-mg-cr-dx-intro.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/StructureDefinition-mii-ex-bildgebung-modalitaet-mg-cr-dx.html) *(renders inside the artefact page)* | into an artefact's intro note | — |
| [`MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Extension-MR.page.md`](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/blob/main/implementation-guides/mii-ig-bildgebung-de-v2027/MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Extension-MR.page.md) *(repo file, not rendered)* | [`input/intro-notes/StructureDefinition-mii-ex-bildgebung-modalitaet-mr-intro.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/StructureDefinition-mii-ex-bildgebung-modalitaet-mr.html) *(renders inside the artefact page)* | into an artefact's intro note | — |
| [`MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Extension-PT.page.md`](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/blob/main/implementation-guides/mii-ig-bildgebung-de-v2027/MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Extension-PT.page.md) *(repo file, not rendered)* | [`input/intro-notes/StructureDefinition-mii-ex-bildgebung-modalitaet-pt-intro.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/StructureDefinition-mii-ex-bildgebung-modalitaet-pt.html) *(renders inside the artefact page)* | into an artefact's intro note | — |
| [`MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Extension-NM.page.md`](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/blob/main/implementation-guides/mii-ig-bildgebung-de-v2027/MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Extension-NM.page.md) *(repo file, not rendered)* | [`input/intro-notes/StructureDefinition-mii-ex-bildgebung-modalitaet-nm-intro.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/StructureDefinition-mii-ex-bildgebung-modalitaet-nm.html) *(renders inside the artefact page)* | into an artefact's intro note | — |
| [`MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Extension-US.page.md`](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/blob/main/implementation-guides/mii-ig-bildgebung-de-v2027/MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Extension-US.page.md) *(repo file, not rendered)* | [`input/intro-notes/StructureDefinition-mii-ex-bildgebung-modalitaet-us-intro.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/StructureDefinition-mii-ex-bildgebung-modalitaet-us.html) *(renders inside the artefact page)* | into an artefact's intro note | — |
| [`MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Extension-series-contrast.page.md`](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/blob/main/implementation-guides/mii-ig-bildgebung-de-v2027/MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Extension-series-contrast.page.md) *(repo file, not rendered)* | [`input/intro-notes/StructureDefinition-mii-ex-bildgebung-kontrastmittel-intro.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/StructureDefinition-mii-ex-bildgebung-kontrastmittel.html) *(renders inside the artefact page)* | into an artefact's intro note | — |
| [`MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Extension-series-sliceThickness.page.md`](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/blob/main/implementation-guides/mii-ig-bildgebung-de-v2027/MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Extension-series-sliceThickness.page.md) *(repo file, not rendered)* | [`input/intro-notes/StructureDefinition-mii-ex-bildgebung-serie-schichtdicke-intro.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/StructureDefinition-mii-ex-bildgebung-serie-schichtdicke.html) *(renders inside the artefact page)* | into an artefact's intro note | — |
| [`MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Extension-instance-details.page.md`](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/blob/main/implementation-guides/mii-ig-bildgebung-de-v2027/MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/ImagingStudy/Extension-instance-details.page.md) *(repo file, not rendered)* | [`input/intro-notes/StructureDefinition-mii-ex-bildgebung-instanz-details-intro.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/StructureDefinition-mii-ex-bildgebung-instanz-details.html) *(renders inside the artefact page)* | into an artefact's intro note | — |
| [`MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Observation/Index.page.md`](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/blob/main/implementation-guides/mii-ig-bildgebung-de-v2027/MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Observation/Index.page.md) *(repo file, not rendered)* | [`input/intro-notes/StructureDefinition-mii-pr-bildgebung-radiologische-beobachtung-intro.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/StructureDefinition-mii-pr-bildgebung-radiologische-beobachtung.html) *(renders inside the artefact page)* | into an artefact's intro note | — |
| [`MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Observation/Extension-SeriesUID.page.md`](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/blob/main/implementation-guides/mii-ig-bildgebung-de-v2027/MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Observation/Extension-SeriesUID.page.md) *(repo file, not rendered)* | [`input/intro-notes/StructureDefinition-mii-ex-bildgebung-serie-uid-intro.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/StructureDefinition-mii-ex-bildgebung-serie-uid.html) *(renders inside the artefact page)* | into an artefact's intro note | — |
| [`MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Observation/Extension-SOPInstanceUID.page.md`](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/blob/main/implementation-guides/mii-ig-bildgebung-de-v2027/MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Observation/Extension-SOPInstanceUID.page.md) *(repo file, not rendered)* | [`input/intro-notes/StructureDefinition-mii-ex-bildgebung-sop-instanz-uid-intro.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/StructureDefinition-mii-ex-bildgebung-sop-instanz-uid.html) *(renders inside the artefact page)* | into an artefact's intro note | — |
| [`MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Messung/Index.page.md`](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/blob/main/implementation-guides/mii-ig-bildgebung-de-v2027/MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Messung/Index.page.md) *(repo file, not rendered)* | [`input/intro-notes/StructureDefinition-mii-pr-bildgebung-radiologische-messung-intro.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/StructureDefinition-mii-pr-bildgebung-radiologische-messung.html) *(renders inside the artefact page)* | into an artefact's intro note | — |
| [`MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Messung/Extension-SeriesUID.page.md`](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/blob/main/implementation-guides/mii-ig-bildgebung-de-v2027/MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Messung/Extension-SeriesUID.page.md) *(repo file, not rendered)* | [`input/intro-notes/StructureDefinition-mii-ex-bildgebung-serie-uid-intro.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/StructureDefinition-mii-ex-bildgebung-serie-uid.html) *(renders inside the artefact page)* | into an artefact's intro note | — |
| [`MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Messung/Extension-SOPInstanceUID.page.md`](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/blob/main/implementation-guides/mii-ig-bildgebung-de-v2027/MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/Messung/Extension-SOPInstanceUID.page.md) *(repo file, not rendered)* | [`input/intro-notes/StructureDefinition-mii-ex-bildgebung-sop-instanz-uid-intro.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/StructureDefinition-mii-ex-bildgebung-sop-instanz-uid.html) *(renders inside the artefact page)* | into an artefact's intro note | — |
| [`ImplementationGuide-Common/**`](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/blob/main/implementation-guides/mii-ig-bildgebung-de-v2027/ImplementationGuide-Common/**) *(repo file, not rendered)* | — | RETIRED (not migrated) | — |
| [`mii-ig-bildgebung-de-v2025/**`](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/blob/main/implementation-guides/mii-ig-bildgebung-de-v2027/mii-ig-bildgebung-de-v2025/**) *(repo file, not rendered)* | — | RETIRED (not migrated) | — |
| [`mii-ig-bildgebung-de-v2026/**`](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/blob/main/implementation-guides/mii-ig-bildgebung-de-v2027/mii-ig-bildgebung-de-v2026/**) *(repo file, not rendered)* | — | RETIRED (not migrated) | — |

**The template's own pages** — the template puts these pages in EVERY module, so their EXISTENCE needs no source page; per row whether their CONTENT stayed template-default or also receives source content. Class: `scaffold` = the template ships it and every module keeps it · `optional` = kept only while artefacts of its type exist (check M9) · `demo` = must be gone on a release branch (check M8).

| Template page | Class | Receives source content? | Migration-written blocks |
|---|---|---|---|
| [`input/pagecontent/capability-statements.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/capability-statements.html) | scaffold | yes — see its rows above | — |
| [`input/pagecontent/changes.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/changes.html) | scaffold | yes — see its rows above | — |
| [`input/pagecontent/code-systems.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/code-systems.html) | optional | yes — see its rows above | — |
| [`input/pagecontent/downloads.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/downloads.html) | scaffold | no — template content | — |
| [`input/pagecontent/examples.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/examples.html) | scaffold | no — template content | — |
| [`input/pagecontent/extensions.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/extensions.html) | optional | no — template content | — |
| [`input/pagecontent/guidance.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/guidance.html) | scaffold | yes — see its rows above | — |
| [`input/pagecontent/implementer-guidance.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/implementer-guidance.html) | scaffold | yes — see its rows above | — |
| [`input/pagecontent/index.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/index.html) | scaffold | yes — see its rows above | — |
| [`input/pagecontent/logical-models.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/logical-models.html) | scaffold | yes — see its rows above | — |
| [`input/pagecontent/metadata.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/metadata.html) | optional | no — template content | — |
| [`input/pagecontent/operations.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/operations.html) | optional | no — template content | — |
| [`input/pagecontent/profiles.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/profiles.html) | scaffold | yes — see its rows above | — |
| [`input/pagecontent/rendering-artifacts.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/rendering-artifacts.html) | demo | no — template content | — |
| [`input/pagecontent/researcher-guidance.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/researcher-guidance.html) | optional | no — template content | — |
| [`input/pagecontent/search-parameters.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/search-parameters.html) | optional | no — template content | — |
| [`input/pagecontent/security-and-privacy.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/security-and-privacy.html) | scaffold | no — template content | 2 |
| [`input/pagecontent/translationinfo.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/translationinfo.html) | scaffold | no — template content | — |
| [`input/pagecontent/uml-diagrams.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/uml-diagrams.html) | scaffold | yes — see its rows above | — |
| [`input/pagecontent/value-sets.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/value-sets.html) | optional | no — template content | — |
| [`input/pagecontent/version-history.md`](https://medizininformatik-initiative.github.io/kerndatensatz-bildgebung/branches/migration/2026.0.0-template-v0.11.3/version-history.html) | scaffold | no — template content | — |

**Optionale Seiten (M9):** REMOVED bei 0: search-parameters, operations, researcher-guidance (keine Quell-Narrative).
KEPT: extensions (14), value-sets (21), code-systems (5), metadata (Template-vorbefüllt, REV-4). **M8:** Demo-Seite
gelöscht (+ Menüeintrag, FIX-4). **M11:** Stufe 3 geschrieben (derived, ②).
**Template-Seiten ohne Quell-Inhalt (Stubs/Template-Chrome):** downloads, version-history, translationinfo,
ImplementationGuide-Seite, metadata — Template-Provenienz, keine Gaps im Quellsinn.
**Für Gate-D-Retirement gelistet (nicht entfernt):** implementation-guides/ (4 Bäume), alte main.yml, advisor.json,
plantUmlSrc/ (retain) — `source-inventory.json`.

## Identität

| Feld | Wert | Wie Quelle? | Herkunft |
|---|---|---|---|
| canonical | …/fhir/ext/modul-bildgebung | ja (Quelle gewinnt über Template-Muster) | sushi-config |
| id / name | mii-ig-bildgebung / MII_IG_Bildgebung | ja | sushi-config |
| title | MII IG Kerndatensatz-Modul Bildgebung | **NEU (Quelle hatte keinen) → DEC-2** | abgeleitet |
| packageId | de.medizininformatikinitiative.kerndatensatz.bildgebung | ja | sushi-config==package.json |
| version / releaseLabel | 2027.0.0-ballot / ci-build | ja | sushi-config |
| status / license | active / CC-BY-4.0 | status ja; **license NEU → DEC-1** | Tier R Impressum |
| publisher | Medizininformatik Initiative | ja (**Template wollte NUM-DIZ → DEC-6**) | sushi-config |
| dependencies | Quellset, floating→gepinnt, +crmi +THO, −r4.core | **4 Pins konkretisiert → DEC-7** | Registry-Auflösung 2026-08-27 |

### Herkunft je Wert (GENERIERT)

| Field | Tier | Source | Value | Contradiction |
| --- | --- | --- | --- | --- |
| id | S | sushi-config.yaml | mii-ig-bildgebung |  |
| canonical | S | sushi-config.yaml | https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung |  |
| packageId | S | sushi-config.yaml==package.json(name) | de.medizininformatikinitiative.kerndatensatz.bildgebung |  |
| name | S | sushi-config.yaml | MII_IG_Bildgebung |  |
| version | S | sushi-config.yaml==package.json; published latest=2026.0.0 (dist-tag) | 2027.0.0-ballot |  |
| status | S | sushi-config.yaml | active |  |
| releaseLabel | S | sushi-config.yaml | ci-build |  |
| publisher | S | sushi-config.yaml | Medizininformatik Initiative | https://www.medizininformatik-initiative.de/ |  |
| fhirVersion | S | sushi-config.yaml | 4.0.1 |  |
| license | R | Guide-Narrativ Index.page.md Impressum: '© 2019+ TMF e. V. ... lizenziert unter der Creative Commons Namensnennung 4.0 International Lizenz' — Feld-Evidenz Tier R; sushi-config-Feld wird darauf gesetzt, Bestätigung Gate A | CC-BY-4.0 |  |

## Verifikation (GENERIERT — verification.md)

## Verification (generated — do not retype)

Produced by `verify-migration.py` from the target tree AND `migration-log/run.log`, the two oracles. **141 IDENTISCH · 27 DIVERGIERT · 80 NICHT PRÜFBAR.**

Verdicts: **IDENTISCH** = matches the source · **DIVERGIERT** = differs, named below · **NICHT PRÜFBAR** = could not be checked, which is **not** a pass and owes a named human an action.

| Layer | Check | What it asks | IDENTISCH | DIVERGIERT | NICHT PRÜFBAR |
|---|---|---|---|---|---|
| conservation | C1 | every source artefact still exists in the migrated module | 1 | 0 | 0 |
| conservation | C2 | every artefact is reachable from the rendered Artifacts page | 2 | 0 | 0 |
| conservation | C3 | every source guide page was migrated or explicitly retired | 45 | 0 | 0 |
| conservation | C4 | the source's narrative text is present somewhere in the target | 3 | 11 | 31 |
| conservation | C5 | menus lead somewhere, and every page is in a menu | 3 | 0 | 1 |
| conservation | C6 | each text passage landed on the page the page map promised | 41 | 0 | 0 |
| conservation | C7 | content the migration wrote is marked as such in the guide | 0 | 10 | 29 |
| fidelity | F1 | module identity is unchanged (id, canonical, version, licence, ...) | 8 | 0 | 1 |
| fidelity | F2 | dependency versions are pinned exactly as the source pinned them | 3 | 4 | 2 |
| fidelity | F3 | the licence is asserted from evidence, never defaulted | 2 | 0 | 0 |
| fidelity | F4 | no mechanical FSH conversion residue is left | 1 | 0 | 0 |
| provenance | P1 | the rendered site reports the template package it was built with | 1 | 0 | 0 |
| provenance | P2 | the vendored template ref matches what the run log recorded | 1 | 0 | 0 |
| provenance | P3 | the IG Publisher version matches the workflow pin | 1 | 0 | 1 |
| provenance | P4 | the source guide was pinned to a published version, not 'current' | 0 | 0 | 1 |
| provenance | P5 | ig.ini points at the IG resource the build actually writes | 1 | 0 | 0 |
| rendering | R1 | tables, tabs and images render with content, not empty | 2 | 0 | 1 |
| rendering | R2 | page header and footer metadata render correctly | 0 | 2 | 0 |
| rendering | R3 | a translated page really differs from the default language | 1 | 0 | 0 |
| rendering | R4 | no links point at template example artefacts that were deleted | 0 | 0 | 1 |
| rendering | R5 | every page has a title unit in the translation catalogue | 1 | 0 | 0 |
| log | L0 | a run log exists at all | 1 | 0 | 0 |
| log | L1 | every partial-success warning was acted on | 1 | 0 | 0 |
| log | L2 | every expected step actually wrote a log line | 19 | 0 | 10 |
| log | L3 | no identity contradiction is still open | 2 | 0 | 0 |
| log | L4 | the log's counts agree with what the tree holds | 1 | 0 | 2 |

### DIVERGIERT — each one a stop or a recorded decision

| id | Check | What it asks | Subject | Evidence | Next action | Auto-fixable |
|---|---|---|---|---|---|---|
| `C4-811435` | C4 | the source's narrative text is present somewhere in the target | BeschreibungModul.page.md | 1 of 39 PROSE runs of the source page are in no target page (first: Instanzebene Dafür wurde sich an der internationalen FHIR-Re…) | map the missing text to a target page section, or record the loss in the report's content map | no |
| `C4-196ae3` | C4 | the source's narrative text is present somewhere in the target | CapabilityStatement.page.md | 3 of 6 PROSE runs of the source page are in no target page (first: ## Um eine dezentrale Datenauswertung mittels des Deutsche F…) | map the missing text to a target page section, or record the loss in the report's content map | no |
| `C4-0a8096` | C4 | the source's narrative text is present somewhere in the target | Conformance.page.md | 25 of 25 PROSE runs of the source page are in no target page (first: # Conformance Diese Seite beschreibt, wie Konformitätsanford…); 9 generated table row(s) excluded -- migration replaces that view with the artefact page (R1 checks THAT) | map the missing text to a target page section, or record the loss in the report's content map | no |
| `C4-49d110` | C4 | the source's narrative text is present somewhere in the target | FHIR-Profile/Index.page.md | 27 of 28 PROSE runs of the source page are in no target page (first: ## FHIR-Profile Die Arbeiten der Kerndatensatzspezifikatione…); 29 generated table row(s) excluded -- migration replaces that view with the artefact page (R1 checks THAT) | map the missing text to a target page section, or record the loss in the report's content map | no |
| `C4-6b5222` | C4 | the source's narrative text is present somewhere in the target | KontextimGesamtprojektBezgezuanderenModulen.page.md | 4 of 20 PROSE runs of the source page are in no target page (first: Ebenso wird im **Befundbericht** (DiagnosticReport) und in d…) | map the missing text to a target page section, or record the loss in the report's content map | no |
| `C4-62bcd2` | C4 | the source's narrative text is present somewhere in the target | MIIIGModulBildgebung/Index.page.md | 4 of 15 PROSE runs of the source page are in no target page (first: Im Folgenden werden die Use Cases des Moduls, sowie die dazu…); 6 generated table row(s) excluded -- migration replaces that view with the artefact page (R1 checks THAT) | map the missing text to a target page section, or record the loss in the report's content map | no |
| `C4-fe91db` | C4 | the source's narrative text is present somewhere in the target | Referenzen.page.md | 4 of 6 PROSE runs of the source page are in no target page (first: Primär betrifft dies den [DICOM Standard]( zwecks FHIR-Profi…) | map the missing text to a target page section, or record the loss in the report's content map | no |
| `C4-03ec0a` | C4 | the source's narrative text is present somewhere in the target | Release-Notes.page.md | 3 of 22 PROSE runs of the source page are in no target page (first: - Neue Modalität-Extension für Ultraschall - Neue Extension …) | map the missing text to a target page section, or record the loss in the report's content map | no |
| `C4-dcd614` | C4 | the source's narrative text is present somewhere in the target | Terminologien.page.md | 4 of 15 PROSE runs of the source page are in no target page (first: **DICOM** DICOM ist das führende Standardprotokoll für die V…); 3 generated table row(s) excluded -- migration replaces that view with the artefact page (R1 checks THAT) | map the missing text to a target page section, or record the loss in the report's content map | no |
| `C4-cdd650` | C4 | the source's narrative text is present somewhere in the target | UML/Index.page.md | 3 of 12 PROSE runs of the source page are in no target page (first: ## UML Als abstraktere Version eines Informationsmodells und…) | map the missing text to a target page section, or record the loss in the report's content map | no |
| `C4-e7a045` | C4 | the source's narrative text is present somewhere in the target | UML_Befund.page.md | 2 of 7 PROSE runs of the source page are in no target page (first: ## UML Befund Damit das Modul mit seinen zwei Abschnitten üb…) | map the missing text to a target page section, or record the loss in the report's content map | no |
| `C7-0209b1` | C7 | content the migration wrote is marked as such in the guide | index | 1 of 39 prose runs of the source page BeschreibungModul.page.md are in no target page (C4), and index carries no DERIVED marker at all -- text was rewritten and the guide does not say so | mark the passage per spec section 9d (the DERIVED comment plus the visible box, in BOTH language mirrors), or restore the source wording; if the text was deliberately dropped, record that in migration-log/page-map.tsv instead | no |
| `C7-9191f0` | C7 | content the migration wrote is marked as such in the guide | capability-statements | 3 of 6 prose runs of the source page CapabilityStatement.page.md are in no target page (C4), and capability-statements carries no DERIVED marker at all -- text was rewritten and the guide does not say so | mark the passage per spec section 9d (the DERIVED comment plus the visible box, in BOTH language mirrors), or restore the source wording; if the text was deliberately dropped, record that in migration-log/page-map.tsv instead | no |
| `C7-8c8c7d` | C7 | content the migration wrote is marked as such in the guide | profiles | 27 of 28 prose runs of the source page FHIR-Profile/Index.page.md are in no target page (C4), and profiles carries no DERIVED marker at all -- text was rewritten and the guide does not say so | mark the passage per spec section 9d (the DERIVED comment plus the visible box, in BOTH language mirrors), or restore the source wording; if the text was deliberately dropped, record that in migration-log/page-map.tsv instead | no |
| `C7-283e85` | C7 | content the migration wrote is marked as such in the guide | implementer-guidance | 4 of 20 prose runs of the source page KontextimGesamtprojektBezgezuanderenModulen.page.md are in no target page (C4), and implementer-guidance carries no DERIVED marker at all -- text was rewritten and the guide does not say so | mark the passage per spec section 9d (the DERIVED comment plus the visible box, in BOTH language mirrors), or restore the source wording; if the text was deliberately dropped, record that in migration-log/page-map.tsv instead | no |
| `C7-665d2d` | C7 | content the migration wrote is marked as such in the guide | index | 4 of 15 prose runs of the source page MIIIGModulBildgebung/Index.page.md are in no target page (C4), and index carries no DERIVED marker at all -- text was rewritten and the guide does not say so | mark the passage per spec section 9d (the DERIVED comment plus the visible box, in BOTH language mirrors), or restore the source wording; if the text was deliberately dropped, record that in migration-log/page-map.tsv instead | no |
| `C7-86039f` | C7 | content the migration wrote is marked as such in the guide | implementer-guidance | 4 of 6 prose runs of the source page Referenzen.page.md are in no target page (C4), and implementer-guidance carries no DERIVED marker at all -- text was rewritten and the guide does not say so | mark the passage per spec section 9d (the DERIVED comment plus the visible box, in BOTH language mirrors), or restore the source wording; if the text was deliberately dropped, record that in migration-log/page-map.tsv instead | no |
| `C7-4f50d8` | C7 | content the migration wrote is marked as such in the guide | changes | 3 of 22 prose runs of the source page Release-Notes.page.md are in no target page (C4), and changes carries no DERIVED marker at all -- text was rewritten and the guide does not say so | mark the passage per spec section 9d (the DERIVED comment plus the visible box, in BOTH language mirrors), or restore the source wording; if the text was deliberately dropped, record that in migration-log/page-map.tsv instead | no |
| `C7-fabfa8` | C7 | content the migration wrote is marked as such in the guide | code-systems | 4 of 15 prose runs of the source page Terminologien.page.md are in no target page (C4), and code-systems carries no DERIVED marker at all -- text was rewritten and the guide does not say so | mark the passage per spec section 9d (the DERIVED comment plus the visible box, in BOTH language mirrors), or restore the source wording; if the text was deliberately dropped, record that in migration-log/page-map.tsv instead | no |
| `C7-8a1680` | C7 | content the migration wrote is marked as such in the guide | uml-diagrams | 3 of 12 prose runs of the source page UML/Index.page.md are in no target page (C4), and uml-diagrams carries no DERIVED marker at all -- text was rewritten and the guide does not say so | mark the passage per spec section 9d (the DERIVED comment plus the visible box, in BOTH language mirrors), or restore the source wording; if the text was deliberately dropped, record that in migration-log/page-map.tsv instead | no |
| `C7-4d5889` | C7 | content the migration wrote is marked as such in the guide | uml-diagrams | 2 of 7 prose runs of the source page UML_Befund.page.md are in no target page (C4), and uml-diagrams carries no DERIVED marker at all -- text was rewritten and the guide does not say so | mark the passage per spec section 9d (the DERIVED comment plus the visible box, in BOTH language mirrors), or restore the source wording; if the text was deliberately dropped, record that in migration-log/page-map.tsv instead | no |
| `F2-d14403` | F2 | dependency versions are pinned exactly as the source pinned them | de.basisprofil.r4 | target 1.5.4  vs  source pin 1.5.x (the source tree (--source)) | the source pin is the evidence; a registry dist-tag is not. Restore the pin or make the bump a Gate-A decision | no |
| `F2-0519f5` | F2 | dependency versions are pinned exactly as the source pinned them | de.medizininformatikinitiative.kerndatensatz.base | target 2026.0.1  vs  source pin 2026.0.x (the source tree (--source)) | the source pin is the evidence; a registry dist-tag is not. Restore the pin or make the bump a Gate-A decision | no |
| `F2-fb1c14` | F2 | dependency versions are pinned exactly as the source pinned them | de.medizininformatikinitiative.kerndatensatz.medikation | target 2026.0.1  vs  source pin 2026.0.x (the source tree (--source)) | the source pin is the evidence; a registry dist-tag is not. Restore the pin or make the bump a Gate-A decision | no |
| `F2-ce5cda` | F2 | dependency versions are pinned exactly as the source pinned them | de.medizininformatikinitiative.kerndatensatz.meta | target 2026.0.0  vs  source pin 2026.0.x (the source tree (--source)) | the source pin is the evidence; a registry dist-tag is not. Restore the pin or make the bump a Gate-A decision | no |
| `R2-48ed52` | R2 | page header and footer metadata render correctly | output/de id="ig-status" [{{] | on 1 page(s), e.g. searchform.html: Search {{title}} (Current Build) | rendered header/footer metadata defect -- qa.txt does not report it. Fix the metadata it renders (a jurisdiction code the template cannot resolve is the measured case) | no |
| `R2-d1da9a` | R2 | page header and footer metadata render correctly | output/en id="ig-status" [{{] | on 1 page(s), e.g. searchform.html: Search {{title}} (Current Build) | rendered header/footer metadata defect -- qa.txt does not report it. Fix the metadata it renders (a jurisdiction code the template cannot resolve is the measured case) | no |

### NICHT PRÜFBAR — not a pass; each needs a human

| id | Check | What it asks | Subject | Why not mechanisable | Who does what |
|---|---|---|---|---|---|
| `C4-7b2767` | C4 | the source's narrative text is present somewhere in the target | AnwendungsflleInformationsmodell/Index.page.md | the source page carries NO prose -- 0 generated table row(s) only | conservation of a generated view is not a text question; confirm the artefact page replaces it (R1) |
| `C4-34e82c` | C4 | the source's narrative text is present somewhere in the target | BodyStructure.page.md | the source page embeds an element-tree rendering (5 occurrences of the renderer's marker); 1 of 5 runs are in no target page, but prose and rendered view cannot be told apart in it | read the page against its target: migration replaces the VIEW with the artefact page (R1), so only its prose has to be conserved -- and only a human can say which is which here |
| `C4-8c0bc5` | C4 | the source's narrative text is present somewhere in the target | CarePlan.page.md | the source page embeds an element-tree rendering (5 occurrences of the renderer's marker); 1 of 3 runs are in no target page, but prose and rendered view cannot be told apart in it | read the page against its target: migration replaces the VIEW with the artefact page (R1), so only its prose has to be conserved -- and only a human can say which is which here |
| `C4-30264f` | C4 | the source's narrative text is present somewhere in the target | Composition.page.md | the source page embeds an element-tree rendering (5 occurrences of the renderer's marker); 1 of 4 runs are in no target page, but prose and rendered view cannot be told apart in it | read the page against its target: migration replaces the VIEW with the artefact page (R1), so only its prose has to be conserved -- and only a human can say which is which here |
| `C4-c3fd28` | C4 | the source's narrative text is present somewhere in the target | ContrastAdministration.page.md | the source page embeds an element-tree rendering (5 occurrences of the renderer's marker); 1 of 4 runs are in no target page, but prose and rendered view cannot be told apart in it | read the page against its target: migration replaces the VIEW with the artefact page (R1), so only its prose has to be conserved -- and only a human can say which is which here |
| `C4-d45bc0` | C4 | the source's narrative text is present somewhere in the target | Device.page.md | the source page embeds an element-tree rendering (5 occurrences of the renderer's marker); 1 of 3 runs are in no target page, but prose and rendered view cannot be told apart in it | read the page against its target: migration replaces the VIEW with the artefact page (R1), so only its prose has to be conserved -- and only a human can say which is which here |
| `C4-742da5` | C4 | the source's narrative text is present somewhere in the target | DiagnosticReport.page.md | the source page embeds an element-tree rendering (5 occurrences of the renderer's marker); 1 of 19 runs are in no target page, but prose and rendered view cannot be told apart in it | read the page against its target: migration replaces the VIEW with the artefact page (R1), so only its prose has to be conserved -- and only a human can say which is which here |
| `C4-c50708` | C4 | the source's narrative text is present somewhere in the target | Extension-CT.page.md | the source page embeds an element-tree rendering (5 occurrences of the renderer's marker); 1 of 5 runs are in no target page, but prose and rendered view cannot be told apart in it | read the page against its target: migration replaces the VIEW with the artefact page (R1), so only its prose has to be conserved -- and only a human can say which is which here |
| `C4-382752` | C4 | the source's narrative text is present somewhere in the target | Extension-Height.page.md | the source page embeds an element-tree rendering (5 occurrences of the renderer's marker); 1 of 3 runs are in no target page, but prose and rendered view cannot be told apart in it | read the page against its target: migration replaces the VIEW with the artefact page (R1), so only its prose has to be conserved -- and only a human can say which is which here |
| `C4-5ce2f3` | C4 | the source's narrative text is present somewhere in the target | Extension-ImagingReason.page.md | the source page embeds an element-tree rendering (5 occurrences of the renderer's marker); 1 of 3 runs are in no target page, but prose and rendered view cannot be told apart in it | read the page against its target: migration replaces the VIEW with the artefact page (R1), so only its prose has to be conserved -- and only a human can say which is which here |
| `C4-51125b` | C4 | the source's narrative text is present somewhere in the target | Extension-MG_CR_DX.page.md | the source page embeds an element-tree rendering (5 occurrences of the renderer's marker); 3 of 6 runs are in no target page, but prose and rendered view cannot be told apart in it | read the page against its target: migration replaces the VIEW with the artefact page (R1), so only its prose has to be conserved -- and only a human can say which is which here |
| `C4-cb9ad9` | C4 | the source's narrative text is present somewhere in the target | Extension-MR.page.md | the source page embeds an element-tree rendering (5 occurrences of the renderer's marker); 1 of 5 runs are in no target page, but prose and rendered view cannot be told apart in it | read the page against its target: migration replaces the VIEW with the artefact page (R1), so only its prose has to be conserved -- and only a human can say which is which here |
| `C4-4153c6` | C4 | the source's narrative text is present somewhere in the target | Extension-NM.page.md | the source page embeds an element-tree rendering (5 occurrences of the renderer's marker); 1 of 15 runs are in no target page, but prose and rendered view cannot be told apart in it | read the page against its target: migration replaces the VIEW with the artefact page (R1), so only its prose has to be conserved -- and only a human can say which is which here |
| `C4-b2c1e1` | C4 | the source's narrative text is present somewhere in the target | Extension-PT.page.md | the source page embeds an element-tree rendering (5 occurrences of the renderer's marker); 1 of 15 runs are in no target page, but prose and rendered view cannot be told apart in it | read the page against its target: migration replaces the VIEW with the artefact page (R1), so only its prose has to be conserved -- and only a human can say which is which here |
| `C4-962234` | C4 | the source's narrative text is present somewhere in the target | Extension-US.page.md | the source page embeds an element-tree rendering (5 occurrences of the renderer's marker); 1 of 5 runs are in no target page, but prose and rendered view cannot be told apart in it | read the page against its target: migration replaces the VIEW with the artefact page (R1), so only its prose has to be conserved -- and only a human can say which is which here |
| `C4-af162f` | C4 | the source's narrative text is present somewhere in the target | Extension-Weight.page.md | the source page embeds an element-tree rendering (5 occurrences of the renderer's marker); 1 of 3 runs are in no target page, but prose and rendered view cannot be told apart in it | read the page against its target: migration replaces the VIEW with the artefact page (R1), so only its prose has to be conserved -- and only a human can say which is which here |
| `C4-a6c716` | C4 | the source's narrative text is present somewhere in the target | Extension-instance-details.page.md | the source page embeds an element-tree rendering (5 occurrences of the renderer's marker); 1 of 7 runs are in no target page, but prose and rendered view cannot be told apart in it | read the page against its target: migration replaces the VIEW with the artefact page (R1), so only its prose has to be conserved -- and only a human can say which is which here |
| `C4-b8734a` | C4 | the source's narrative text is present somewhere in the target | Extension-series-contrast.page.md | the source page embeds an element-tree rendering (5 occurrences of the renderer's marker); 1 of 3 runs are in no target page, but prose and rendered view cannot be told apart in it | read the page against its target: migration replaces the VIEW with the artefact page (R1), so only its prose has to be conserved -- and only a human can say which is which here |
| `C4-2ceb20` | C4 | the source's narrative text is present somewhere in the target | Extension-series-sliceThickness.page.md | the source page embeds an element-tree rendering (5 occurrences of the renderer's marker); 1 of 5 runs are in no target page, but prose and rendered view cannot be told apart in it | read the page against its target: migration replaces the VIEW with the artefact page (R1), so only its prose has to be conserved -- and only a human can say which is which here |
| `C4-617b3b` | C4 | the source's narrative text is present somewhere in the target | ImagingProcedure.page.md | the source page embeds an element-tree rendering (5 occurrences of the renderer's marker); 1 of 4 runs are in no target page, but prose and rendered view cannot be told apart in it | read the page against its target: migration replaces the VIEW with the artefact page (R1), so only its prose has to be conserved -- and only a human can say which is which here |
| `C4-78e384` | C4 | the source's narrative text is present somewhere in the target | ImagingStudy/Index.page.md | the source page embeds an element-tree rendering (5 occurrences of the renderer's marker); 5 of 10 runs are in no target page, but prose and rendered view cannot be told apart in it | read the page against its target: migration replaces the VIEW with the artefact page (R1), so only its prose has to be conserved -- and only a human can say which is which here |
| `C4-fe7cae` | C4 | the source's narrative text is present somewhere in the target | Messung/Extension-SOPInstanceUID.page.md | the source page embeds an element-tree rendering (5 occurrences of the renderer's marker); 0 of 3 runs are in no target page, but prose and rendered view cannot be told apart in it | read the page against its target: migration replaces the VIEW with the artefact page (R1), so only its prose has to be conserved -- and only a human can say which is which here |
| `C4-cb4eb9` | C4 | the source's narrative text is present somewhere in the target | Messung/Extension-SeriesUID.page.md | the source page embeds an element-tree rendering (5 occurrences of the renderer's marker); 0 of 3 runs are in no target page, but prose and rendered view cannot be told apart in it | read the page against its target: migration replaces the VIEW with the artefact page (R1), so only its prose has to be conserved -- and only a human can say which is which here |
| `C4-0f9b25` | C4 | the source's narrative text is present somewhere in the target | Messung/Index.page.md | the source page embeds an element-tree rendering (5 occurrences of the renderer's marker); 1 of 7 runs are in no target page, but prose and rendered view cannot be told apart in it | read the page against its target: migration replaces the VIEW with the artefact page (R1), so only its prose has to be conserved -- and only a human can say which is which here |
| `C4-edfb15` | C4 | the source's narrative text is present somewhere in the target | Observation/Extension-SOPInstanceUID.page.md | the source page embeds an element-tree rendering (5 occurrences of the renderer's marker); 0 of 3 runs are in no target page, but prose and rendered view cannot be told apart in it | read the page against its target: migration replaces the VIEW with the artefact page (R1), so only its prose has to be conserved -- and only a human can say which is which here |
| `C4-176b1c` | C4 | the source's narrative text is present somewhere in the target | Observation/Extension-SeriesUID.page.md | the source page embeds an element-tree rendering (5 occurrences of the renderer's marker); 0 of 3 runs are in no target page, but prose and rendered view cannot be told apart in it | read the page against its target: migration replaces the VIEW with the artefact page (R1), so only its prose has to be conserved -- and only a human can say which is which here |
| `C4-d2cd6f` | C4 | the source's narrative text is present somewhere in the target | Observation/Index.page.md | the source page embeds an element-tree rendering (5 occurrences of the renderer's marker); 1 of 7 runs are in no target page, but prose and rendered view cannot be told apart in it | read the page against its target: migration replaces the VIEW with the artefact page (R1), so only its prose has to be conserved -- and only a human can say which is which here |
| `C4-a84b3f` | C4 | the source's narrative text is present somewhere in the target | ReadProcedure.page.md | the source page embeds an element-tree rendering (5 occurrences of the renderer's marker); 1 of 4 runs are in no target page, but prose and rendered view cannot be told apart in it | read the page against its target: migration replaces the VIEW with the artefact page (R1), so only its prose has to be conserved -- and only a human can say which is which here |
| `C4-f44fa6` | C4 | the source's narrative text is present somewhere in the target | ServiceRequest.page.md | the source page embeds an element-tree rendering (5 occurrences of the renderer's marker); 1 of 4 runs are in no target page, but prose and rendered view cannot be told apart in it | read the page against its target: migration replaces the VIEW with the artefact page (R1), so only its prose has to be conserved -- and only a human can say which is which here |
| `C4-9599f9` | C4 | the source's narrative text is present somewhere in the target | TNMRadiologicalReadProcedure.page.md | the source page embeds an element-tree rendering (5 occurrences of the renderer's marker); 3 of 3 runs are in no target page, but prose and rendered view cannot be told apart in it | read the page against its target: migration replaces the VIEW with the artefact page (R1), so only its prose has to be conserved -- and only a human can say which is which here |
| `C4-fc1144` | C4 | the source's narrative text is present somewhere in the target | TechnischeImplementierung/Index.page.md | the source page carries NO prose -- 0 generated table row(s) only | conservation of a generated view is not a text question; confirm the artefact page replaces it (R1) |
| `C5-2d86b5` | C5 | menus lead somewhere, and every page is in a menu | target pages without a source counterpart | references/template-pages.tsv is measured at module-template v0.11.1, but this module vendors v0.11.3 -- a stale manifest produces confident wrong findings in both directions | re-measure template-pages.tsv at the vendored tag (record the tag in the third column), then re-run |
| `C7-86fe3f` | C7 | content the migration wrote is marked as such in the guide | BodyStructure.page.md | C4 could not tell this page's prose from its embedded element-tree rendering, so whether anything was rewritten here is not measured | read the page against its target (the same human action C4 asks for) and mark whatever the migration wrote per spec section 9d |
| `C7-13b262` | C7 | content the migration wrote is marked as such in the guide | CarePlan.page.md | C4 could not tell this page's prose from its embedded element-tree rendering, so whether anything was rewritten here is not measured | read the page against its target (the same human action C4 asks for) and mark whatever the migration wrote per spec section 9d |
| `C7-dd82f0` | C7 | content the migration wrote is marked as such in the guide | Composition.page.md | C4 could not tell this page's prose from its embedded element-tree rendering, so whether anything was rewritten here is not measured | read the page against its target (the same human action C4 asks for) and mark whatever the migration wrote per spec section 9d |
| `C7-768f4d` | C7 | content the migration wrote is marked as such in the guide | ContrastAdministration.page.md | C4 could not tell this page's prose from its embedded element-tree rendering, so whether anything was rewritten here is not measured | read the page against its target (the same human action C4 asks for) and mark whatever the migration wrote per spec section 9d |
| `C7-7c5c97` | C7 | content the migration wrote is marked as such in the guide | Device.page.md | C4 could not tell this page's prose from its embedded element-tree rendering, so whether anything was rewritten here is not measured | read the page against its target (the same human action C4 asks for) and mark whatever the migration wrote per spec section 9d |
| `C7-e0f642` | C7 | content the migration wrote is marked as such in the guide | DiagnosticReport.page.md | C4 could not tell this page's prose from its embedded element-tree rendering, so whether anything was rewritten here is not measured | read the page against its target (the same human action C4 asks for) and mark whatever the migration wrote per spec section 9d |
| `C7-f7224c` | C7 | content the migration wrote is marked as such in the guide | Extension-CT.page.md | C4 could not tell this page's prose from its embedded element-tree rendering, so whether anything was rewritten here is not measured | read the page against its target (the same human action C4 asks for) and mark whatever the migration wrote per spec section 9d |
| `C7-cea180` | C7 | content the migration wrote is marked as such in the guide | Extension-Height.page.md | C4 could not tell this page's prose from its embedded element-tree rendering, so whether anything was rewritten here is not measured | read the page against its target (the same human action C4 asks for) and mark whatever the migration wrote per spec section 9d |
| `C7-304944` | C7 | content the migration wrote is marked as such in the guide | Extension-ImagingReason.page.md | C4 could not tell this page's prose from its embedded element-tree rendering, so whether anything was rewritten here is not measured | read the page against its target (the same human action C4 asks for) and mark whatever the migration wrote per spec section 9d |
| `C7-a5fb13` | C7 | content the migration wrote is marked as such in the guide | Extension-MG_CR_DX.page.md | C4 could not tell this page's prose from its embedded element-tree rendering, so whether anything was rewritten here is not measured | read the page against its target (the same human action C4 asks for) and mark whatever the migration wrote per spec section 9d |
| `C7-cf135c` | C7 | content the migration wrote is marked as such in the guide | Extension-MR.page.md | C4 could not tell this page's prose from its embedded element-tree rendering, so whether anything was rewritten here is not measured | read the page against its target (the same human action C4 asks for) and mark whatever the migration wrote per spec section 9d |
| `C7-7f91d2` | C7 | content the migration wrote is marked as such in the guide | Extension-NM.page.md | C4 could not tell this page's prose from its embedded element-tree rendering, so whether anything was rewritten here is not measured | read the page against its target (the same human action C4 asks for) and mark whatever the migration wrote per spec section 9d |
| `C7-83003d` | C7 | content the migration wrote is marked as such in the guide | Extension-PT.page.md | C4 could not tell this page's prose from its embedded element-tree rendering, so whether anything was rewritten here is not measured | read the page against its target (the same human action C4 asks for) and mark whatever the migration wrote per spec section 9d |
| `C7-188434` | C7 | content the migration wrote is marked as such in the guide | Extension-US.page.md | C4 could not tell this page's prose from its embedded element-tree rendering, so whether anything was rewritten here is not measured | read the page against its target (the same human action C4 asks for) and mark whatever the migration wrote per spec section 9d |
| `C7-01b527` | C7 | content the migration wrote is marked as such in the guide | Extension-Weight.page.md | C4 could not tell this page's prose from its embedded element-tree rendering, so whether anything was rewritten here is not measured | read the page against its target (the same human action C4 asks for) and mark whatever the migration wrote per spec section 9d |
| `C7-ec5edc` | C7 | content the migration wrote is marked as such in the guide | Extension-instance-details.page.md | C4 could not tell this page's prose from its embedded element-tree rendering, so whether anything was rewritten here is not measured | read the page against its target (the same human action C4 asks for) and mark whatever the migration wrote per spec section 9d |
| `C7-c3f88b` | C7 | content the migration wrote is marked as such in the guide | Extension-series-contrast.page.md | C4 could not tell this page's prose from its embedded element-tree rendering, so whether anything was rewritten here is not measured | read the page against its target (the same human action C4 asks for) and mark whatever the migration wrote per spec section 9d |
| `C7-610f79` | C7 | content the migration wrote is marked as such in the guide | Extension-series-sliceThickness.page.md | C4 could not tell this page's prose from its embedded element-tree rendering, so whether anything was rewritten here is not measured | read the page against its target (the same human action C4 asks for) and mark whatever the migration wrote per spec section 9d |
| `C7-badcd1` | C7 | content the migration wrote is marked as such in the guide | ImagingProcedure.page.md | C4 could not tell this page's prose from its embedded element-tree rendering, so whether anything was rewritten here is not measured | read the page against its target (the same human action C4 asks for) and mark whatever the migration wrote per spec section 9d |
| `C7-21ffbe` | C7 | content the migration wrote is marked as such in the guide | ImagingStudy/Index.page.md | C4 could not tell this page's prose from its embedded element-tree rendering, so whether anything was rewritten here is not measured | read the page against its target (the same human action C4 asks for) and mark whatever the migration wrote per spec section 9d |
| `C7-7e75f9` | C7 | content the migration wrote is marked as such in the guide | Messung/Extension-SOPInstanceUID.page.md | C4 could not tell this page's prose from its embedded element-tree rendering, so whether anything was rewritten here is not measured | read the page against its target (the same human action C4 asks for) and mark whatever the migration wrote per spec section 9d |
| `C7-9a1214` | C7 | content the migration wrote is marked as such in the guide | Messung/Extension-SeriesUID.page.md | C4 could not tell this page's prose from its embedded element-tree rendering, so whether anything was rewritten here is not measured | read the page against its target (the same human action C4 asks for) and mark whatever the migration wrote per spec section 9d |
| `C7-06e5fd` | C7 | content the migration wrote is marked as such in the guide | Messung/Index.page.md | C4 could not tell this page's prose from its embedded element-tree rendering, so whether anything was rewritten here is not measured | read the page against its target (the same human action C4 asks for) and mark whatever the migration wrote per spec section 9d |
| `C7-c26aee` | C7 | content the migration wrote is marked as such in the guide | Observation/Extension-SOPInstanceUID.page.md | C4 could not tell this page's prose from its embedded element-tree rendering, so whether anything was rewritten here is not measured | read the page against its target (the same human action C4 asks for) and mark whatever the migration wrote per spec section 9d |
| `C7-ae1ea8` | C7 | content the migration wrote is marked as such in the guide | Observation/Extension-SeriesUID.page.md | C4 could not tell this page's prose from its embedded element-tree rendering, so whether anything was rewritten here is not measured | read the page against its target (the same human action C4 asks for) and mark whatever the migration wrote per spec section 9d |
| `C7-595ac8` | C7 | content the migration wrote is marked as such in the guide | Observation/Index.page.md | C4 could not tell this page's prose from its embedded element-tree rendering, so whether anything was rewritten here is not measured | read the page against its target (the same human action C4 asks for) and mark whatever the migration wrote per spec section 9d |
| `C7-2c6654` | C7 | content the migration wrote is marked as such in the guide | ReadProcedure.page.md | C4 could not tell this page's prose from its embedded element-tree rendering, so whether anything was rewritten here is not measured | read the page against its target (the same human action C4 asks for) and mark whatever the migration wrote per spec section 9d |
| `C7-1615aa` | C7 | content the migration wrote is marked as such in the guide | ServiceRequest.page.md | C4 could not tell this page's prose from its embedded element-tree rendering, so whether anything was rewritten here is not measured | read the page against its target (the same human action C4 asks for) and mark whatever the migration wrote per spec section 9d |
| `C7-63d9e1` | C7 | content the migration wrote is marked as such in the guide | TNMRadiologicalReadProcedure.page.md | C4 could not tell this page's prose from its embedded element-tree rendering, so whether anything was rewritten here is not measured | read the page against its target (the same human action C4 asks for) and mark whatever the migration wrote per spec section 9d |
| `F1-b5b102` | F1 | module identity is unchanged (id, canonical, version, licence, ...) | title | no source value (neither the source tree nor the claims ledger yields one) | supply it at Gate A -- an identity field nobody can compare is not a field that matches |
| `F2-fd0e73` | F2 | dependency versions are pinned exactly as the source pinned them | hl7.fhir.uv.crmi | target-only dependency 2.0.0 (not in the source) | confirm at Gate A that this is template machinery (hl7.fhir.uv.crmi is) and not an accidental addition |
| `F2-8f9355` | F2 | dependency versions are pinned exactly as the source pinned them | hl7.terminology.r4 | target-only dependency 7.3.0 (not in the source) | confirm at Gate A that this is template machinery (hl7.fhir.uv.crmi is) and not an accidental addition |
| `P3-c39a79` | P3 | the IG Publisher version matches the workflow pin | IG Publisher currency | the publisher reports itself out of date (current 2.3.3) | upgrading the publisher is a target-repository decision, not a migration one -- record it, do not act on it here |
| `P4-379bde` | P4 | the source guide was pinned to a published version, not 'current' | source guide version | no `?version=` recorded in the run log or the harvest manifest | record the pinned, PUBLISHED guide version like the source commit SHA (spec 5.1c.3) |
| `R1-76f413` | R1 | tables, tabs and images render with content, not empty | source-versus-target rendering | no harvested source HTML (./migration-log/guide-harvest/html) and/or no page map | harvest with --keep-html and write the page map; without a source rendering, 'non-empty where non-empty in the source' has no reference |
| `R4-84ad62` | R4 | no links point at template example artefacts that were deleted | template example links | references/template-artifacts.tsv is verified at module-template v0.11.1, but this module vendors v0.11.3 -- a stale token list looks for the wrong scaffolding in both directions | re-verify the token list at the vendored tag (update the `# template_tag:` header), then re-run |
| `L2-23b069` | L2 | every expected step actually wrote a log line | 2.1 package-identity | no line in the log; the step is conditional (no sushi-config.yaml in the source) | confirm the condition did not hold -- The published package is the only machine source for the dependency PINS (spec §2.1.1). |
| `L2-7163a2` | L2 | every expected step actually wrote a log line | 2.1 repo-identity | no line in the log; the step is conditional (no sushi-config.yaml in the source) | confirm the condition did not hold -- The repository's LICENSE text is the only machine source for `license` — the field that must never default (spec §2.2). |
| `L2-07bdbb` | L2 | every expected step actually wrote a log line | 5.1c simplifier-discover | no line in the log; the step is conditional (no rendered-IG URL was supplied) | confirm the condition did not hold -- Without the discovery chain the guide is not found, and a migration then ships the template's starter pages. |
| `L2-930ba2` | L2 | every expected step actually wrote a log line | 5.1d guide-harvest | no line in the log; the step is conditional (the narrative is not in the repository) | confirm the condition did not hold -- This is the step whose absence shipped the template's starter pages under a module's name. |
| `L2-91b7ea` | L2 | every expected step actually wrote a log line | 5.1b.2 gofsh-input | no line in the log; required only for source shape B, which the log does not state | record the shape (pre.2 classify-source-shape) -- The input count, taken BY CONTENT, is the number goFSH's own counts are reconciled against. |
| `L2-f0a960` | L2 | every expected step actually wrote a log line | 5.1b.2 gofsh-convert | no line in the log; required only for source shape B, which the log does not state | record the shape (pre.2 classify-source-shape) -- goFSH exits 0 having converted 1 of 20 inputs when `-t json-and-xml` is missing; only this line's counts show it. |
| `L2-395531` | L2 | every expected step actually wrote a log line | 5.1b.3 sushi-before | no line in the log; required only for source shape B, which the log does not state | record the shape (pre.2 classify-source-shape) -- The "41" of 41 → 5: without the baseline the repair's effect is unmeasurable. |
| `L2-837623` | L2 | every expected step actually wrote a log line | 5.1b.3 postprocess-gofsh | no line in the log; required only for source shape B, which the log does not state | record the shape (pre.2 classify-source-shape) -- The two mechanical repairs; a parse error otherwise TRUNCATES a file while SUSHI still exports the instance. |
| `L2-41942e` | L2 | every expected step actually wrote a log line | 5.1b.3 sushi-after | no line in the log; required only for source shape B, which the log does not state | record the shape (pre.2 classify-source-shape) -- The "5": the residual, which must be named unresolvable parents and nothing else. |
| `L2-cd2674` | L2 | every expected step actually wrote a log line | 5.1b.5 parent-snapshots | no line in the log; the step is conditional (a parent package ships no snapshots) | confirm the condition did not hold -- A hand-rolled snapshot fabricates a parent; the detect run is what proves none was needed. |
| `L4-106e61` | L4 | the log's counts agree with what the tree holds | conversion count | no `gofsh-convert … actual=` line in the log | shape B only; for shape A there is nothing to convert |
| `L4-f17740` | L4 | the log's counts agree with what the tree holds | page count | no harvested count in the log and/or no harvest manifest | harvest the guide (step 2c) where the narrative is not in the repo |

**Inputs:** target `.` · source `/private/tmp/claude-501/-Users-thome-code-fhir-profiling-kerndatensatz-bildgebung/35dfd370-bb04-4710-87f2-988cf853a800/scratchpad/bildgebung-source-unmigrated` · rendered `/Users/thome/code/fhir-profiling/kerndatensatz-bildgebung/output` · log `./migration-log/run.log`

## Sign-off (GENERIERT — qa-checklist.md, ergänzt um DEC/REV/QA-Boxen)

### QA checklist (GENERATED by qa-checklist.py — do not retype; regenerate instead)

One checkbox per open obligation, from the machine ledgers. Ticking a box asserts the *named person* did the *named thing*. This list belongs inside `migration-log/migration-report.md` (section *Sign-off*): the detail behind every item id, the glossary for every code, term, gate owner and source shape, and the *How to re-run* commands all live there (and in the skill's `references/codes.md`). Pages named bare live in `input/pagecontent/`; names ending in `-intro` live in `input/intro-notes/`. 141 finding(s) verdicted IDENTISCH owe nobody anything and are not listed.

#### Gate A — identity (module maintainer, with TF-KDS)

- [ ] **F1-b5b102** (F1 - module identity unchanged): supply it at Gate A -- an identity field nobody can compare is not a field that matches — *do the named action so the check can run - this is not a pass*
- [ ] **F2 ×4** (F2 - dependency pins identical to the source's): the source pin is the evidence; a registry dist-tag is not. Restore the pin or make the bump a Gate-A decision — *fix it, or accept it with a named reason in the report*  <sub>ids: F2-d14403, F2-0519f5, F2-fb1c14, F2-ce5cda</sub>
- [ ] **F2 ×2** (F2 - dependency pins identical to the source's): confirm at Gate A that this is template machinery (hl7.fhir.uv.crmi is) and not an accidental addition — *do the named action so the check can run - this is not a pass*  <sub>ids: F2-fd0e73, F2-8f9355</sub>

#### Gate B — narrative (the module's clinical and technical authors)

- [ ] **C4 ×2** (C4 - the source's narrative text present somewhere): conservation of a generated view is not a text question; confirm the artefact page replaces it (R1) — *do the named action so the check can run - this is not a pass*  <sub>ids: C4-7b2767, C4-fc1144</sub>
- [ ] **C4 ×11** (C4 - the source's narrative text present somewhere): map the missing text to a target page section, or record the loss in the report's content map — *fix it, or accept it with a named reason in the report*  <sub>ids: C4-811435, C4-196ae3, C4-0a8096, C4-49d110, C4-6b5222, C4-62bcd2, C4-fe91db, C4-03ec0a, C4-dcd614, C4-cdd650, C4-e7a045</sub>
- [ ] **C4 ×29** (C4 - the source's narrative text present somewhere): read the page against its target: migration replaces the VIEW with the artefact page (R1), so only its prose has to be conserved -- and only a human can say which is which here — *do the named action so the check can run - this is not a pass*  <sub>ids: C4-34e82c, C4-8c0bc5, C4-30264f, C4-c3fd28, C4-d45bc0, C4-742da5, C4-c50708, C4-382752, C4-5ce2f3, C4-51125b, C4-cb9ad9, C4-4153c6, C4-b2c1e1, C4-962234, C4-af162f, C4-a6c716, C4-b8734a, C4-2ceb20, C4-617b3b, C4-78e384, C4-fe7cae, C4-cb4eb9, C4-0f9b25, C4-edfb15, C4-176b1c, C4-d2cd6f, C4-a84b3f, C4-f44fa6, C4-9599f9</sub>
- [ ] **C5-2d86b5** (C5 - menus lead somewhere; every page is in a menu): re-measure template-pages.tsv at the vendored tag (record the tag in the third column), then re-run — *do the named action so the check can run - this is not a pass*
- [ ] **R2 ×2** (R2 - page header/footer metadata render correctly): rendered header/footer metadata defect -- qa.txt does not report it. Fix the metadata it renders (a jurisdiction code the template cannot resolve is the measured case) — *fix it, or accept it with a named reason in the report*  <sub>ids: R2-48ed52, R2-d1da9a</sub>
- [ ] **R1-76f413** (R1 - tables, tabs and images render with content): harvest with --keep-html and write the page map; without a source rendering, 'non-empty where non-empty in the source' has no reference — *do the named action so the check can run - this is not a pass*
- [ ] **R4-84ad62** (R4 - no links to deleted template examples): re-verify the token list at the vendored tag (update the `# template_tag:` header), then re-run — *do the named action so the check can run - this is not a pass*
- [ ] **`security-and-privacy`**: review 2 migration-written block(s) (suggestion; default/de) — *keep, correct, or delete each one*
- [ ] **`MIIIGModulBildgebung/AnwendungsflleInformationsmodell/Index.page.md` RETIRED**: Quellseite absichtlich leer ("Diese Seite wurde absichtlich leer gelassen") — kein Inhalt zu migrieren (agent-korrigiert, Gate-B-Review ausstehend) — *confirm nothing in it is needed*
- [ ] **`MIIIGModulBildgebung/TechnischeImplementierung/Index.page.md` RETIRED**: Quellseite absichtlich leer ("Diese Seite wurde absichtlich leer gelassen") — kein Inhalt zu migrieren (agent-korrigiert, Gate-B-Review ausstehend) — *confirm nothing in it is needed*
- [ ] **`MIIIGModulBildgebung/TechnischeImplementierung/Conformance.page.md` RETIRED**: MII-weiter Conformance-Boilerplate (Conformance verbs, Must Support, Fehlende Daten) — Cluster ist link-only zum Meta-Modul (spec 9a: MII-wide conformance rules are NOT restated in a module); Menue verlinkt die kanonische Quelle (agent-korrigiert, Gate-B-Review ausstehend) TODO:REVIEW Gate B — *confirm nothing in it is needed*
- [ ] **`MIIIGModulBildgebung/TechnischeImplementierung/FHIR-Profile/TNMRadiologicalReadProcedure.page.md` RETIRED**: Profil mii-pr-bildgebung-TNM-radiologische-befundungsprozedur wurde auf main entfernt (Commit "Delete TNM Procedure Draft Profile", 2026-08-14) — Seite ist verwaist, kein Zielartefakt (agent-korrigiert, Gate-B-Review ausstehend) TODO:REVIEW Gate B — *confirm nothing in it is needed*
- [ ] **`ImplementationGuide-Common/**` RETIRED**: shared assets (UML-Bilder): referenzierte Bilder werden nach input/images uebernommen; Baum bleibt unveraendert bis Gate D (retain) (agent-korrigiert, Gate-B-Review ausstehend) — *confirm nothing in it is needed*
- [ ] **`mii-ig-bildgebung-de-v2025/**` RETIRED**: historical version tree - retain unchanged, Gate-D retirement set (5.1a #3) — *confirm nothing in it is needed*
- [ ] **`mii-ig-bildgebung-de-v2026/**` RETIRED**: historical version tree - retain unchanged, Gate-D retirement set (5.1a #3) — *confirm nothing in it is needed*

#### Gate C — language (a reviewer competent in both languages)

- [ ] **C7 ×10** (C7 - migration-written content is marked as such): mark the passage per spec section 9d (the DERIVED comment plus the visible box, in BOTH language mirrors), or restore the source wording; if the text was deliberately dropped, record that in migration-log/page-map.tsv instead — *fix it, or accept it with a named reason in the report*  <sub>ids: C7-0209b1, C7-9191f0, C7-8c8c7d, C7-283e85, C7-665d2d, C7-86039f, C7-4f50d8, C7-fabfa8, C7-8a1680, C7-4d5889</sub>
- [ ] **C7 ×29** (C7 - migration-written content is marked as such): read the page against its target (the same human action C4 asks for) and mark whatever the migration wrote per spec section 9d — *do the named action so the check can run - this is not a pass*  <sub>ids: C7-86fe3f, C7-13b262, C7-dd82f0, C7-768f4d, C7-7c5c97, C7-e0f642, C7-f7224c, C7-cea180, C7-304944, C7-a5fb13, C7-cf135c, C7-7f91d2, C7-83003d, C7-188434, C7-01b527, C7-ec5edc, C7-c3f88b, C7-610f79, C7-badcd1, C7-21ffbe, C7-7e75f9, C7-9a1214, C7-06e5fd, C7-c26aee, C7-ae1ea8, C7-595ac8, C7-2c6654, C7-1615aa, C7-63d9e1</sub>

#### Gate D — release (TF-KDS / AG IOP / NSG; merging is what publishes)

- [ ] **P3-c39a79** (P3 - IG Publisher version matches the workflow pin): upgrading the publisher is a target-repository decision, not a migration one -- record it, do not act on it here — *do the named action so the check can run - this is not a pass*
- [ ] **P4-379bde** (P4 - source guide pinned to a published version): record the pinned, PUBLISHED guide version like the source commit SHA (spec 5.1c.3) — *do the named action so the check can run - this is not a pass*
- [ ] **L2-23b069** (L2 - every expected step wrote a log line): confirm the condition did not hold -- The published package is the only machine source for the dependency PINS (spec §2.1.1). — *do the named action so the check can run - this is not a pass*
- [ ] **L2-7163a2** (L2 - every expected step wrote a log line): confirm the condition did not hold -- The repository's LICENSE text is the only machine source for `license` — the field that must never default (spec §2.2). — *do the named action so the check can run - this is not a pass*
- [ ] **L2-07bdbb** (L2 - every expected step wrote a log line): confirm the condition did not hold -- Without the discovery chain the guide is not found, and a migration then ships the template's starter pages. — *do the named action so the check can run - this is not a pass*
- [ ] **L2-930ba2** (L2 - every expected step wrote a log line): confirm the condition did not hold -- This is the step whose absence shipped the template's starter pages under a module's name. — *do the named action so the check can run - this is not a pass*
- [ ] **L2-91b7ea** (L2 - every expected step wrote a log line): record the shape (pre.2 classify-source-shape) -- The input count, taken BY CONTENT, is the number goFSH's own counts are reconciled against. — *do the named action so the check can run - this is not a pass*
- [ ] **L2-f0a960** (L2 - every expected step wrote a log line): record the shape (pre.2 classify-source-shape) -- goFSH exits 0 having converted 1 of 20 inputs when `-t json-and-xml` is missing; only this line's counts show it. — *do the named action so the check can run - this is not a pass*
- [ ] **L2-395531** (L2 - every expected step wrote a log line): record the shape (pre.2 classify-source-shape) -- The "41" of 41 → 5: without the baseline the repair's effect is unmeasurable. — *do the named action so the check can run - this is not a pass*
- [ ] **L2-837623** (L2 - every expected step wrote a log line): record the shape (pre.2 classify-source-shape) -- The two mechanical repairs; a parse error otherwise TRUNCATES a file while SUSHI still exports the instance. — *do the named action so the check can run - this is not a pass*
- [ ] **L2-41942e** (L2 - every expected step wrote a log line): record the shape (pre.2 classify-source-shape) -- The "5": the residual, which must be named unresolvable parents and nothing else. — *do the named action so the check can run - this is not a pass*
- [ ] **L2-cd2674** (L2 - every expected step wrote a log line): confirm the condition did not hold -- A hand-rolled snapshot fabricates a parent; the detect run is what proves none was needed. — *do the named action so the check can run - this is not a pass*
- [ ] **L4-106e61** (L4 - the log's counts agree with the tree): shape B only; for shape A there is nothing to convert — *do the named action so the check can run - this is not a pass*
- [ ] **L4-f17740** (L4 - the log's counts agree with the tree): harvest the guide (step 2c) where the narrative is not in the repo — *do the named action so the check can run - this is not a pass*
- [ ] **pre/post delta**: `prepost-delta.md` shows no REGRESSION row, or every regression is explained in the report — *never merged unexplained*
- [ ] **CI**: the module's own checks are green on the migration branch
- [ ] **gates A–C**: signed by the named reviewers above
- [ ] **publication decision**: recorded with name and date — *merging is what publishes*

<!-- REPORT-AUTHORED ITEMS - the generator cannot enumerate judgement.
     Add ONE checkbox per DEC-n / REV-n / QA-n block of this report,
     under the gate that owns it, in the form:
     - [ ] **DEC-1** <its one-line what> - *<its next action>*  -->

### Report-eigene Checkboxen

**Gate A:** [ ] DEC-1 Lizenz · [ ] DEC-2 Titel · [ ] DEC-3 Autor-E-Mail · [ ] DEC-4 Datum · [ ] DEC-5 NCI-Topic ·
[ ] DEC-6 Publisher · [ ] DEC-7 Pins · [ ] DEC-8 copyrightYear · [ ] DEC-9 manualSliceOrdering · [ ] DEC-10 tests ·
[ ] DEC-12 PatExample
**Gate B:** [ ] REV-1 Page-Map · [ ] REV-2 C4/C7-Divergenzen · [ ] REV-4 metadata-KEEP · [ ] REV-5 Terminologien-Split ·
[ ] REV-6 Intro-Notes · [ ] ② derived (2 Marker)
**Gate C:** [ ] REV-3 Maschinenübersetzungen (36 Dateien)
**Gate D:** [ ] DEC-11 Retire-Set · [ ] QA-1..6 zur Kenntnis · [ ] Merge-Entscheid (Merge publiziert das Preview)

## Protokoll

Vollständig in `migration-log/run.log` (append-only; jede Behauptung dieses Reports führt auf eine Zeile dort zurück).
Lesehilfe: `grep -E "  (WARN |ERROR)  " migration-log/run.log` zeigt alle 14 WARN/ERROR-Zeilen; die ERROR-Zeilen sind
die drei dokumentierten Publisher-Fehlversuche (r4.core-Duplikat, 2x Renderer-NPE) und je ein transienter
Script-Fehlstart — alle mit Folge-Zeile aufgelöst. Run-Grenze: `run 1` @ 2026-08-27T16:44:28Z.

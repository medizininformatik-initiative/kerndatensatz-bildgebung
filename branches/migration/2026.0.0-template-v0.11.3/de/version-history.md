# Versionierung - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* **Versionierung**

## Versionierung

 Diese Seite enthält Übersetzungen aus der Originalsprache, in der der Leitfaden verfasst wurde. Informationen zu diesen Übersetzungen und Anweisungen zum Abgeben von Feedback zu den Übersetzungen finden Sie [hier](translationinfo.md). 

#### Versionsschema

Das Modul **Bildgebung** folgt dem KDS-Schema der Kalender-Versionierung (CalVer) in einer SemVer-kompatiblen numerischen Form:

* Format **`JJJJ.MINOR.PATCH[-label]`** — die aktuelle Version ist `2027.0.0-ballot`;
* **`JJJJ`** — das Jahr, in dem der Leitfaden gilt und genutzt werden soll; es tritt an die Stelle der Major-Version;
* **`MINOR`** — wird für nicht brechende Ergänzungen und Präzisierungen erhöht;
* **`PATCH`** — wird für Korrekturen und Fehlerbehebungen erhöht;
* **`label`** — optionales Vorab- oder Build-Label, z. B. `draft`, `ballot` oder `cibuild`.

#### Versionen vergleichen

Stabile Releases lassen sich vergleichen, indem die numerischen Bestandteile als SemVer-artiges `<major>.<minor>.<patch>` gelesen werden, mit dem Kalenderjahr als Major-Komponente: `2026.1.0` ist neuer als `2026.0.3`. Labels kennzeichnen den Vorab- oder Build-Status; zwischen Labels wird keine Reihenfolge abgeleitet.

#### Artefakt-Versionen

Alle veröffentlichten FHIR-Artefakte im Paket tragen dieselbe Version wie der Leitfaden und sein Paket. Ein Artefakt kann daher beim Release eine neue Version erhalten, obwohl es selbst unverändert geblieben ist. Die maschinenlesbaren Metadaten, die Versionsalgorithmus, Versionierungs-Politik, Paketquelle und Manifest-Parameter deklarieren, beschreibt die Seite [Metadaten-Übersicht](metadata.md).

#### Release-Prozess

Releases folgen dem [Module Release Workflow](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Module-Release-Workflow): Die Version wird im Release-Branch angehoben, der Changelog-Eintrag geschrieben, die Validierungs-Workflows laufen auf dem Release-Pull-Request, und nach dem Merge wird das Release getaggt.

#### Versionshistorie und Änderungen

* **[Änderungshistorie](changes.md)** — die Änderungen jeder veröffentlichten Version.

#### Versionsvergleich

Ab der zweiten **formalen Publikation** veröffentlicht dieser Leitfaden zusätzlich einen **maschinell erzeugten Versionsvergleich**. Er ergänzt die Änderungshistorie: Die Änderungshistorie erklärt **warum** und **was zu tun ist**, der Vergleich zeigt, **was sich genau geändert hat**.

**Wo er liegt.** Der Bericht ist Teil der veröffentlichten Website selbst: `comparison-v<Vorversion>/index.html` neben den Seiten des Leitfadens, verlinkt aus dem QA-Bericht. Der Index listet die verglichenen Artefakt-Paare; jedes Paar verlinkt eine Detailseite mit drei Ansichten — der **Differenz**-Analyse (was sich Element für Element geändert hat), der **Vereinigung** (alles, was eine der beiden Versionen erlaubt) und dem **Schnitt** (nur was beide Versionen erlauben).

**Wie er erzeugt wird.** Der Vorversions-Vergleicher des IG Publishers lädt das Paket des vorherigen Releases, ordnet jedes Profil, ValueSet und CodeSystem über die kanonische URL seinem Gegenstück zu, vergleicht die Paare und rendert den Bericht in die Build-Ausgabe — er wird also mit der Website veröffentlicht, ohne zusätzlichen Deployment-Schritt. Aktiviert wird er über den Parameter `version-comparison` — einen offiziellen IG-Publisher-Parameter aus der [ig-parameters-Registry](https://build.fhir.org/ig/FHIR/fhir-tools-ig/CodeSystem-ig-parameters.html), durchgereicht über die `sushi-config.yaml` (der auskommentierte Block dort erklärt die Einrichtung und ihre beiden Voraussetzungen: eine Publikationshistorie an der kanonischen URL und ein ladbares Vorversions-Paket). Fehlt der Parameter, gilt der Standard `{last}`; der Wert `n/a` ist der dokumentierte Weg, den Vergleich abzuschalten.

**Die Demonstration unten** (nur in der Vorschau dieses Vorlagen-Repositories) zeigt dieselbe Art Bericht, bevor eine formale Publikation existiert: Der Build vergleicht sich mit der vorherigen `dev`-Vorschau über das `-compare`-Kommando des FHIR-Validators und veröffentlicht das Ergebnis unter `comparison-demo/index.html`. Die Repository-Variable `ENABLE_VERSION_COMPARISON=false` schaltet das gesamte Feature ab — den Publisher-Vergleich in allen Build-Workflows ebenso wie diese Demonstration; ein erstelltes Modul rendert die Demonstration nie.

> [TODO: Falls Ihr Modul über das KDS-Schema hinaus eine eigene Versionierungs-Politik hat — etwa einen Unterstützungszeitraum für ältere Versionen oder eine Abkündigungs-Politik für Profile —, beschreiben Sie sie hier. Löschen Sie diesen Hinweis anschließend.]


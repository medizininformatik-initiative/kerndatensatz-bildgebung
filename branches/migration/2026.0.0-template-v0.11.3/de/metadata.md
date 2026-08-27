# Metadaten-Übersicht - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* **Metadaten-Übersicht**

## Metadaten-Übersicht

 Diese Seite enthält Übersetzungen aus der Originalsprache, in der der Leitfaden verfasst wurde. Informationen zu diesen Übersetzungen und Anweisungen zum Abgeben von Feedback zu den Übersetzungen finden Sie [hier](translationinfo.md). 

### Metadaten-Übersicht

Diese Seite beschreibt die maschinenlesbaren Metadaten des Moduls **Bildgebung**. Sie existieren, damit die Artefakte dieses Leitfadens auffindbar, bewertbar, validierbar, zitierbar, steuerbar und wiederverwendbar sind — für Menschen wie für Software.

Das Metadatenmodell folgt dem [Canonical Resource Management Infrastructure Implementation Guide](https://hl7.org/fhir/uv/crmi/STU2/en/index.html) (CRMI). CRMI beschreibt, wie Wissensartefakte über ihren gesamten Lebenszyklus hinweg konsistent ausgetauscht werden — von der Autorenschaft über Veröffentlichung und Verteilung bis zur Implementierung. Dieser Leitfaden verwendet die CRMI-Profile, -Extensions und -Manifest-Mechanismen, die für die Veröffentlichung eines MII-Kerndatensatz-Moduls als versionierter FHIR-Implementierungsleitfaden nützlich sind.

Das Vorgehen ist vorläufig: Es hält den derzeit genutzten CRMI-Ansatz fest und kann angepasst werden, wenn CRMI reift, sich der KDS-Veröffentlichungsprozess weiterentwickelt und die FAIR-Bewertung von FHIR-Leitfäden konkreter wird.

#### Geltungsbereich

CRMI-Metadaten beschreiben die FHIR-Spezifikationsartefakte selbst. Sie sind überwiegend beschreibend und ändern die klinischen oder technischen Konformitätsanforderungen der Profile, ValueSets, CodeSysteme, logischen Modelle, CapabilityStatements und Beispiele **nicht**. Eine Ausnahme sind die Manifest-Parameter: Sie dokumentieren und stützen den Veröffentlichungs- und Validierungskontext — Terminologie-Expansion und kanonische Versions-Pinnung — und können damit die erzeugte Ausgabe und die Validierungsergebnisse beeinflussen.

Die Metadaten sind in den erzeugten FHIR-Ressourcen einsehbar, insbesondere in den JSON- und XML-Darstellungen, die von jeder Artefaktseite verlinkt sind, sowie im [herunterladbaren Paket](downloads.md).

#### Abdeckung des CRMI-Artefaktmanagements

CRMI gliedert das Artefaktmanagement in Lebenszyklus-Phasen und begleitende Aspekte. Dieser Leitfaden setzt nicht jede CRMI-Fähigkeit um, sondern die Teile, die für die Veröffentlichung eines KDS-Moduls unmittelbar nützlich sind.

| | | |
| :--- | :--- | :--- |
| [Artefakt-Lebenszyklus](https://hl7.org/fhir/uv/crmi/STU2/en/artifact-lifecycle.html) | Shareable- und Publishable-ImplementationGuide-Profile;`status`;`version`;`resource-approvalDate`;`resource-effectivePeriod`; Beitragenden-Extensions | Verortet die Artefakte in Autorenschaft, Release, Veröffentlichung und Pflege. |
| [Versions-Manifest](https://hl7.org/fhir/uv/crmi/STU2/en/version-manifest.html) | `package-source`; kanonische Versions-Pinnung (`pin-canonicals: pin-all`);**optional**`CRMIManifestParameters`+`cqf-expansionParameters` | Ermöglicht reproduzierbare Terminologie-Expansion und stabile Auflösung kanonischer Versionen. |
| [Artefakt-Konventionen](https://hl7.org/fhir/uv/crmi/STU2/en/artifact-conventions.html) | Kanonische URLs; Gleichlauf von Paket- und Ressourcen-Version;`artifact-versionAlgorithm`;`artifact-versionPolicy` | Richtet den Leitfaden an den Konventionen für kanonische Ressourcen aus. |
| [Paketierung](https://hl7.org/fhir/uv/crmi/STU2/en/packaging.html) | FHIR-Paket;`ImplementationGuide.packageId`; Paketversion;`package-source` | Verbindet die Artefakte mit dem Paket, in dem sie erstellt, getestet, veröffentlicht und verteilt werden. |
| [Veröffentlichung](https://hl7.org/fhir/uv/crmi/STU2/en/publishing.html) | Publishable-Profil; Beitragenden-Extensions;`resource-approvalDate`;`resource-effectivePeriod`;`artifact-purpose`;`artifact-usage`;**optional**`artifact-relatedArtifact` | Ergänzt Vertrauen, Governance, Veröffentlichungskontext und lesbare Zweckangaben. |
| [Verteilung](https://hl7.org/fhir/uv/crmi/STU2/en/distribution.html) | Veröffentlichte Seiten; JSON-/XML-Ressourcen; Paket-Download | Unterstützt Abruf und Werkzeugnutzung im FHIR-Publikations-Ökosystem. CRMI-Repository-Operationen sind nicht umgesetzt. |
| [Signierung](https://hl7.org/fhir/uv/crmi/STU2/en/artifact-signing.html) | Nicht umgesetzt | Mögliche künftige Erweiterung für Integrität, Authentizität und Nachweisbarkeit veröffentlichter Artefakte. |

Dieser Leitfaden definiert keine `CRMIManifestLibrary`, keine CRMI-Repository-Operationen wie `$package` oder `$data-requirements`, keine Veröffentlichung über ein Knowledge Artifact Repository, keine Syndication-Feeds und keine Artefakt-Signierung. Das kann künftige Arbeit am Release-Workflow aufgreifen.

#### Von diesem Leitfaden deklarierte CRMI-Metadaten

Die folgenden CRMI-Metadaten werden in [`sushi-config.yaml`](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/blob/main/sushi-config.yaml) gesetzt und landen in der erzeugten `ImplementationGuide`-Ressource.

| | | | |
| :--- | :--- | :--- | :--- |
| [CRMI Shareable ImplementationGuide](https://hl7.org/fhir/uv/crmi/STU2/en/StructureDefinition-crmi-shareableimplementationguide.html)[CRMI Publishable ImplementationGuide](https://hl7.org/fhir/uv/crmi/STU2/en/StructureDefinition-crmi-publishableimplementationguide.html)[CRMI ImplementationGuide](https://hl7.org/fhir/uv/crmi/STU2/en/StructureDefinition-crmi-implementationguide.html) | Lebenszyklus; Veröffentlichung; Paketierung | `ImplementationGuide.meta.profile` | Erzwingt den Mindestsatz an ImplementationGuide-Metadaten und ergänzt die Metadaten, die nach der Veröffentlichung für Verteilung, Repository-Aufnahme, Nutzung und Implementierung nötig sind. |
| [CQF Knowledge Capability](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-cqf-knowledgeCapability.html) | Lebenszyklus; Artefakt-Konventionen | `ImplementationGuide.extension`(`shareable`,`publishable`) | Deklariert die Wissens-Fähigkeit des Artefakts bei Ressourcen ohne eigenes`knowledgeCapability`-Element. |
| [Artifact Purpose](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-artifact-purpose.html) | Veröffentlichung; Verteilung | `ImplementationGuide.extension` | Benennt, warum das Artefakt gebraucht wird und warum es so gestaltet ist. |
| [Artifact Usage](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-artifact-usage.html) | Veröffentlichung; Implementierung | `ImplementationGuide.extension` | Benennt, wie das Artefakt innerhalb der MII-Kerndatensatz-Spezifikation zu nutzen ist. |
| [Artifact Topic](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-artifact-topic.html) | Veröffentlichung; Verteilung | `ImplementationGuide.extension`, codiert mit dem NCI-Thesaurus | Ergänzt inhaltliche Themen für Filterung, Suche und Gruppierung. |
| [Artifact Version Algorithm](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-artifact-versionAlgorithm.html) | Artefakt-Konventionen; Versionierung | `ImplementationGuide.extension`(`semver`) | Deklariert, wie Versionen verglichen werden, um die aktuellere zu bestimmen. |
| [Artifact Version Policy](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-artifact-versionPolicy.html) | Lebenszyklus; Versionierung | `ImplementationGuide.extension`(`package`) | Deklariert, dass Artefakt-Versionen mit der Paketversion geführt werden — ein Release kann ein Artefakt hochzählen, dessen Inhalt sich nicht geändert hat. |
| [Package Source](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-package-source.html) | Versions-Manifest; Paketierung; Verteilung | `ImplementationGuide.extension`(packageId, version, uri) | Deklariert das Paket, in dem ein Artefakt definiert ist, damit Auswertungsumgebungen Namensräume und Abhängigkeiten im vorgesehenen Kontext auflösen. |
| [Resource Approval Date](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-resource-approvalDate.html) | Lebenszyklus; Veröffentlichung; Governance | `ImplementationGuide.extension`(`2026-08-27`) | Hält fest, wann der Herausgeber den Inhalt offiziell zur Nutzung freigegeben hat. |
| [Resource Effective Period](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-resource-effectivePeriod.html) | Lebenszyklus; Veröffentlichung; Implementierung | `ImplementationGuide.extension`(Beginn`2027`) | Hält fest, für welchen Zeitraum der Inhalt gelten soll oder gegolten hat. |
| [Artifact Author](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-artifact-author.html)[Artifact Editor](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-artifact-editor.html)[Artifact Reviewer](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-artifact-reviewer.html)[Artifact Endorser](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-artifact-endorser.html) | Veröffentlichung; Governance; Provenienz | `ImplementationGuide.extension` | Hält Autorenschaft, die für die innere Stimmigkeit verantwortliche Redaktion, die Reviewer und die offiziell befürwortenden Gremien fest. Bei einem KDS-Modul sind Redaktion, Reviewer und befürwortende Gremien die Governance-Gremien des Kerndatensatz-Prozesses. |

In diesem Gerüst nicht aktiviert, aber als auskommentierte Blöcke in `sushi-config.yaml` vorbereitet:

* [Artifact Related Artifact](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-artifact-relatedArtifact.html) — eine Literaturangabe zum Modul.
* [CQF Expansion Parameters](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-cqf-expansionParameters.html) zusammen mit einer [CRMI-Manifest-Parameters](https://hl7.org/fhir/uv/crmi/STU2/en/StructureDefinition-crmi-manifestparameters.html)-Ressource und den Parametern `path-expansion-params` / `pin-manifest`.

> [TODO: Aktivieren Sie die für Ihr Modul nötigen Blöcke und ziehen Sie die Tabellen oben nach. Wenn Ihr Modul die CRMI-Shareable-/Publishable-Profile zusätzlich auf seine eigenen StructureDefinitions, CapabilityStatements, CodeSysteme und ValueSets anwendet — das Idiom aus `kerndatensatz-basis` ist ein gemeinsames `RuleSet` in [`input/fsh/rulesets/crmi.fsh`](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/blob/main/input/fsh/rulesets/crmi.fsh) —, ergänzen Sie die entsprechenden Zeilen.]

##### CodeSystem-Supplements

Veröffentlicht ein Modul CodeSystem-Supplements, ist zu beachten: Das CRMI-Profil **ShareableCodeSystem** verlangt `CodeSystem.caseSensitive`, während die FHIR-Validierung warnt, dass ein Supplement `caseSensitive` nicht erneut angeben sollte, weil das dem ergänzten CodeSystem widersprechen könnte. [kerndatensatz-basis](https://github.com/medizininformatik-initiative/kerndatensatz-basis) beansprucht deshalb bei Supplements nur das **Publishable**-CRMI-Profil und lässt das Shareable-Profil weg.

#### Versionierung und Paket-Provenienz

Das menschenlesbare Versionsschema beschreibt die Seite [Versionierung](version-history.md). Dieser Abschnitt beschreibt, wie diese Politik als CRMI-Metadaten ausgedrückt wird.

Das Modul verwendet die Kalender-Versionierung in der SemVer-kompatiblen numerischen Form `JJJJ.MINOR.PATCH[-label]`, derzeit `2027.0.0-ballot`. Das Kalenderjahr dient als CRMI-`<major>`-Komponente; `MINOR` und `PATCH` behalten ihre übliche additive bzw. korrigierende Bedeutung. Stabile Versionen lassen sich damit über den deklarierten Versionsalgorithmus `semver` vergleichen. Labels tragen Vorab- oder Build-Informationen; gemäß CRMI-/FHIR-Konvention wird zwischen Labels keine Reihenfolge abgeleitet.

| | |
| :--- | :--- |
| [Anforderung 3.3: Artefakt-Versionierung](https://hl7.org/fhir/uv/crmi/STU2/en/artifact-lifecycle.html#conformance-requirement-3-3) | Artefakte tragen eine`version`in der Form`<major>.<minor>.<patch>[-<label>]`mit dem Jahr als Major-Komponente.`artifact-versionAlgorithm`deklariert den Vergleich per`semver`. |
| [Anforderung 3.4: Versionierungs-Politik](https://hl7.org/fhir/uv/crmi/STU2/en/artifact-lifecycle.html#conformance-requirement-3-4) | `artifact-versionPolicy`ist`package`: Artefakt-Versionen werden als Version des Pakets geführt, in dem sie erscheinen — ein Release kann daher ein inhaltlich unverändertes Artefakt hochzählen. |
| [Anforderung 3.5: Versionierung von Artefakt-Sammlungen](https://hl7.org/fhir/uv/crmi/STU2/en/artifact-lifecycle.html#conformance-requirement-3-5) | Artefakte entstehen als Teil der Leitfaden-/Paket-Sammlung und teilen deren Version. |
| [Anforderung 3.6: Paket-Quelle des Artefakts](https://hl7.org/fhir/uv/crmi/STU2/en/artifact-lifecycle.html#conformance-requirement-3-6) | `package-source`hält Paket-Id, Paketversion und Paket-Quell-URI fest. |

`resource-effectivePeriod` ergänzt dies um den vorgesehenen Geltungszeitraum. Version, Versionsalgorithmus, Versionspolitik, Paketquelle und Geltungszeitraum zusammen erlauben Lesenden und Werkzeugen die Entscheidung, ob ein Artefakt zum erwarteten Release gehört und ob seine Metadaten zur implementierten Version passen.

#### Manifest und Reproduzierbarkeit

Kanonische Referenzen werden im gebauten Paket gepinnt (`pin-canonicals: pin-all` in `sushi-config.yaml`); das ist eine CRMI-Erwartung und macht die Ausgabe stabil.

Ein Modul, das zusätzlich eine reproduzierbare Terminologie-Expansion will, ergänzt eine CRMI-Manifest-Parameters-Ressource — das Idiom aus `kerndatensatz-basis` ist `Parameters/mii-param-<slug>-manifest` —, verlinkt sie über `cqf-expansionParameters` aus dem `ImplementationGuide` und weist den Publisher mit `path-expansion-params` und `pin-manifest` darauf hin. Lesende wie Werkzeuge haben dann eine stabile Stelle, an der die Parameter für Expansion und Paket-Pinnung einsehbar sind.

> [TODO: Ergänzen Sie das Manifest Ihres Moduls (siehe die auskommentierten Blöcke in `sushi-config.yaml`) und verlinken Sie hier die erzeugte `Parameters`-Seite — oder halten Sie ausdrücklich fest, dass dieses Modul keine Expansions-Parameter pinnt.]

#### Bezug zu FAIR

Die [FAIR-Prinzipien](https://www.go-fair.org/fair-principles/) beschreiben Ziele dafür, digitale Objekte auffindbar (Findable), zugänglich (Accessible), interoperabel (Interoperable) und wiederverwendbar (Reusable) zu machen. Dieser Abschnitt ist eine informative Selbsteinschätzung, wie die CRMI-Metadaten dieses Leitfadens eine FAIR-konforme Veröffentlichung von FHIR-Spezifikationsartefakten unterstützen.

Die Tabelle übernimmt die Indikator-Struktur der HL7-Seite [FAIR Data Maturity Indicators and priority](https://hl7.org/fhir/uv/fhir-for-fair/RDAMetrics.html) (FHIR-for-FAIR), die auf dem RDA FAIR Data Maturity Model beruht, und führt die Indikatoren der Priorität **Essential** auf. [FHIR-for-FAIR Metadata and Data](https://hl7.org/fhir/uv/fhir-for-fair/metadata.html) betont, dass ein FAIR-Objekt auf verschiedenen Granularitätsebenen existiert und die Grenze zwischen Metadaten und Daten kontextabhängig ist. Die Tabelle unterscheidet daher zwischen den Metadaten dieses Leitfadens und seiner Konformitätsartefakte, den mitgelieferten Beispieldaten und den von Implementierungen ausgetauschten produktiven klinischen Daten. Für die eigenen Artefakte und Beispiele kann der Leitfaden die Indikatoren adressieren; für produktive Daten **unterstützt** er sie, erfüllt werden müssen sie von den implementierenden Systemen, Repositorien und Governance-Prozessen.

Die mitgelieferten Beispielinstanzen zeigen FAIR-relevante FHIR-Strukturen für Testdaten. Sie sind keine produktiven klinischen Daten und werden nicht als dauerhaft identifizierter FAIR-Datensatz behauptet.

| | | | |
| :--- | :--- | :--- | :--- |
| F1 | RDA-F1-01M | Metadaten sind über einen persistenten Identifikator identifiziert | Kanonische`url`-Werte, die Paket-Id`de.medizininformatikinitiative.kerndatensatz.bildgebung`, die Paketversion und`package-source`. Die Persistenz hängt von der Veröffentlichungs-Governance ab. |
| F1 | RDA-F1-01D | Daten sind über einen persistenten Identifikator identifiziert | Bei den Beispielen:`Resource.id`,`Bundle.identifier`,`identifier`-Elemente und`Bundle.entry.fullUrl`zeigen das Muster, sind aber keine persistenten Daten-PIDs. Produktive Daten benötigen persistente fachliche Identifikatoren aus den implementierenden Systemen. |
| F1 | RDA-F1-02M | Metadaten sind über einen global eindeutigen Identifikator identifiziert | Global gültige kanonische`url`-Werte und die Paket-Id innerhalb der kontrollierten KDS-Namensräume. |
| F1 | RDA-F1-02D | Daten sind über einen global eindeutigen Identifikator identifiziert | Bei den Beispielen:`identifier.system`+`identifier.value`zeigen die global eindeutige Identifikation. Produktiv hängt sie von kontrollierten Namensräumen und lokaler Governance ab. |
| F2 | RDA-F2-01M | Reichhaltige Metadaten ermöglichen das Auffinden | CRMI-Shareable-/Publishable-Profile,`purpose`,`artifact-usage`,`artifact-topic`,`resource-approvalDate`,`resource-effectivePeriod`, Beitragende und`package-source`. |
| F3 | RDA-F3-01M | Metadaten enthalten den Identifikator der Daten | Artefakt-Metadaten und Artefakt-Identifikatoren stehen gemeinsam in denselben FHIR-Ressourcen und im Paket. |
| F4 | RDA-F4-01M | Metadaten können geerntet und indexiert werden | Veröffentlichte Artefaktseiten, kanonische`url`-Werte, JSON-/XML-Darstellungen, das herunterladbare FHIR-Paket und`artifact-topic`. Das Ernten hängt von Publikationsseite und Paket-Registry ab. |
| A1 | RDA-A1-02M | Metadaten sind manuell zugänglich | Menschenlesbare Leitfaden- und Artefaktseiten. |
| A1 | RDA-A1-02D | Daten sind manuell zugänglich | Beispielseiten sowie erzeugtes JSON/XML. Produktiv hängt der Zugang von den implementierenden Systemen und lokalen Richtlinien ab. |
| A1 | RDA-A1-03M | Der Metadaten-Identifikator löst auf einen Metadatensatz auf | Kanonische`url`-Werte lösen auf veröffentlichte Artefaktseiten mit Verweisen auf JSON und XML auf, abhängig von der Veröffentlichungs-Governance. |
| A1 | RDA-A1-03D | Der Daten-Identifikator löst auf ein digitales Objekt auf | Beispielseiten und herunterladbares JSON/XML. Beispiel-Identifikatoren sind keine dauerhaft auflösenden Daten-PIDs. |
| A1 | RDA-A1-04M | Metadaten sind über ein standardisiertes Protokoll zugänglich | Leitfaden- und Artefaktseiten über HTTPS, erzeugte Ressourcen als FHIR-JSON/XML, Verteilung als FHIR-Paket im NPM-Format. |
| A1 | RDA-A1-04D | Daten sind über ein standardisiertes Protokoll zugänglich | Beispiele als FHIR-JSON/XML über HTTPS und über das Paket. Produktiv über konforme FHIR-REST-Server nach lokalen Richtlinien. |
| A1.1 | RDA-A1.1-01M | Metadaten sind über ein frei zugängliches Protokoll erreichbar | Öffentlicher HTTPS-Zugang zu Seiten, erzeugten Artefakten und Paket. |
| A2 | RDA-A2-01M | Metadaten bleiben verfügbar, auch wenn die Daten es nicht mehr sind | Versionierte Veröffentlichung, herunterladbares Paket, Versionshistorie und kanonische Artefakte. Langfristige Zusagen hängen von der Veröffentlichungs-Governance ab. |
| R1 | RDA-R1-01M | Eine Vielzahl zutreffender, relevanter Attribute ermöglicht die Nachnutzung | CRMI-Profile,`purpose`,`artifact-usage`,`artifact-topic`,`resource-approvalDate`,`resource-effectivePeriod`,`artifact-versionPolicy`,`package-source`und Beitragende. |
| R1.1 | RDA-R1.1-01M | Metadaten enthalten Lizenzinformationen | Die Lizenz`CC-BY-4.0`auf Leitfaden-Ebene, der Copyright-Hinweis und die Paket-Metadaten. Nutzungsbedingungen produktiver klinischer Daten kommen von den Datenhaltenden. |
| R1.3 | RDA-R1.3-01M | Metadaten entsprechen einem Community-Standard | FHIR R4, die CRMI-Profile, die KDS-Veröffentlichungskonventionen und die Metadaten kanonischer Ressourcen. |
| R1.3 | RDA-R1.3-01D | Daten entsprechen einem Community-Standard | Die Beispiele deklarieren die Profile dieses Moduls. Produktiv muss die Konformität gegen Profile, Bindings und CapabilityStatement-Erwartungen validiert werden. |
| R1.3 | RDA-R1.3-02M | Metadaten sind gemäß einem Community-Standard maschinenverständlich | CRMI-konforme FHIR-Metadaten als JSON/XML und als FHIR-Paket im NPM-Format des IG-Publisher-Ökosystems. |

> [TODO: Die Tabelle führt die Indikatoren der Priorität **Essential** auf. Wenn Ihr Modul die vollständige Selbsteinschätzung will, ergänzen Sie die Indikatoren der Prioritäten **Important** und **Useful** — `kerndatensatz-basis` führt die vollständige Tabelle.]

#### Praktische Nutzung

Implementierende können diese Metadaten nutzen, um

* zu prüfen, ob ein Artefakt zum erwarteten Paket und zur erwarteten Version gehört,
* den Governance-Stand eines Artefakts an Freigabedatum, Beitragenden, Reviewern und befürwortenden Gremien zu erkennen,
* die vorgesehene Nutzung über `purpose` und `artifact-usage` zu verstehen,
* Artefakte nach Thema und Ressourcen-Kategorie zu finden,
* Entscheidungen zu Terminologie-Expansion und kanonischer Pinnung nachzuvollziehen,
* das Paket in Werkzeuge einzubinden, die kanonische FHIR-Ressourcen verarbeiten.

Für die meisten Lesenden sind die menschenlesbaren Artefaktseiten der einfachste Einstieg. Für die automatisierte Verarbeitung tragen das [herunterladbare Paket](downloads.md) und die JSON-Darstellungen der erzeugten Ressourcen die vollständigen maschinenlesbaren Metadaten.


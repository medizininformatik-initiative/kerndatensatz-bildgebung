#  - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot.1

## Instanz validieren

Diese Seite ersetzt die Ad-hoc-Validierung, die Simplifier angeboten hat: Fügen Sie Ihre **eigene** FHIR-Instanz ein und prüfen Sie sie gegen die Profile **dieses** Leitfadens. Die Werte unten stammen aus diesem Build - nichts muss nachgeschlagen werden:

* Paket: Canonical
  * `de.medizininformatikinitiative.kerndatensatz.bildgebung#2027.0.0-ballot.1`: `https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung`
* Paket: FHIR-Version
  * `de.medizininformatikinitiative.kerndatensatz.bildgebung#2027.0.0-ballot.1`: `4.0.1`
* Paket: Terminologieserver
  * `de.medizininformatikinitiative.kerndatensatz.bildgebung#2027.0.0-ballot.1`: `https://tx.fhir.org`

### Datenschutz - bitte vor dem Einfügen lesen

Der öffentliche Validator unter `validator.fhir.org` ist ein **Best-Effort-Dienst, den HL7 International außerhalb der EU betreibt**. Senden Sie ihm **ausschließlich synthetische Instanzen**. Echte oder realistische Patientendaten - auch pseudonymisierte Datensätze und aus echten Fällen abgeleitete Testdaten - dürfen **nur** gegen einen **selbst betriebenen** Validator innerhalb der eigenen Einrichtung geprüft werden (Weg D oder E unten). Die Wege A, B (mit öffentlichem Terminologieserver) und C sowie die Live-Box auf dieser Seite, solange sie auf den öffentlichen Dienst zeigt, übertragen die Instanz an diesen externen Dienst.

### A. Online - validator.fhir.org

1. [https://validator.fhir.org/](https://validator.fhir.org/)öffnen.
1. Unter**FHIR Version**`4.0.1`belassen.
1. Unter**Implementation Guides**`de.medizininformatikinitiative.kerndatensatz.bildgebung`eingeben und die Version`2027.0.0-ballot.1`wählen - also den Eintrag`de.medizininformatikinitiative.kerndatensatz.bildgebung#2027.0.0-ballot.1`. Fehlt die Version, liegt das Paket nicht in der Registry, die der Validator liest (etwa ein CI-Build): dann Weg B mit der Paketdatei nutzen.
1. Unter**Profiles**die kanonische URL des zu prüfenden Profils einfügen (auf der Profilseite dieses Leitfadens die**Defining URL**). Ohne Angabe nutzt der Validator die Profile, die die Instanz in`meta.profile`deklariert.
1. Instanz einfügen oder hochladen und**Validate**drücken.

### B. Kommandozeile - validator_cli.jar

`validator_cli.jar` aus den [HL7-FHIR-Core-Releases](https://github.com/hapifhir/org.hl7.fhir.core/releases/latest) herunterladen (Java 11 oder neuer), dann:

```
java -jar validator_cli.jar -version 4.0.1 -ig de.medizininformatikinitiative.kerndatensatz.bildgebung#2027.0.0-ballot.1 -tx https://tx.fhir.org instance.json
```

`-profile <canonical>` erzwingt ein Profil, `-ig pfad/zu/package.tgz` ersetzt die Registry, wenn die Version dort nicht liegt. `-tx n/a` schaltet Terminologieprüfungen ganz ab.

### C. API - die REST-Schnittstelle des Validators

Derselbe Dienst nimmt eine JSON-Anfrage entgegen (`POST /validate`) - geeignet für CI-Pipelines und Testsuiten. Die Schnittstelle ist unter [https://validator.fhir.org/swagger-ui/index.html](https://validator.fhir.org/swagger-ui/index.html) dokumentiert; die Live-Box unten nutzt genau diesen Aufruf mit dem voreingestellten Paket dieses Leitfadens.

### D. Selbst betrieben - für ein Datenintegrationszentrum (DIZ)

Der öffentliche Dienst steht als Container-Image zum Selbstbetrieb bereit - das **einzige** zulässige Ziel für echte oder realistische Daten:

```
docker run -d --name fhir-validator -p 3500:3500 markiantorno/validator-wrapper
```

Danach `http://<host>:3500` als Basis-URL verwenden (Weg C; ein Modul kann die Live-Box dieser Seite über `input/data/features.json` dorthin zeigen lassen). Weg B bleibt mit `-ig pfad/zu/package.tgz` und einem lokalen Terminologieserver vollständig offline. In beiden Fällen `-tx` (bzw. `txServer` in der API-Anfrage) auf einen Terminologieserver richten, der die deutschen Value Sets kennt - siehe den Hinweis unten.

### E. MII FHIR Validator - der Container der MII

Die MII veröffentlicht einen eigenen Validator-Container für ein Datenintegrationszentrum: Er nutzt denselben HL7-Validator, bringt die KDS-Pakete aber bereits im Cache mit und validiert daher **offline**, sobald ein Terminologieserver bereitsteht. Er gehört zum FDPG-Data-Node-Stack:

```
docker run -d -p 8080:8080 ghcr.io/medizininformatik-initiative/mii-fhir-validator
```

Dokumentation: [der Leitfaden des Validators](https://medizininformatik-initiative.github.io/mii-fhir-validator/) sowie seine [Seite in der Data-Node-Dokumentation](https://medizininformatik-initiative.github.io/dataportal/data-node/mii-fhir-validator.html). Welche Leitfäden er lädt, steht beim Start des Containers fest und wird über `IG_PARAMS` gesetzt - dort `-ig de.medizininformatikinitiative.kerndatensatz.bildgebung#2027.0.0-ballot.1` ergänzen oder auf eine Paketdatei zeigen, wenn die Version nicht in der Registry liegt.

**Seine Schnittstelle ist nicht die aus Weg C.** Er beantwortet `POST /validateResource` mit der Ressource als Rumpf, den Optionen als Query-Parametern und einem `OperationOutcome` als Ergebnis. Er passt damit in eine Pipeline oder ein Skript, kann die Live-Box unten aber nicht bedienen - eine Browser-Seite benötigt `POST /validate` des Wrappers. Er erscheint zudem bislang als Vorabversion [(derzeit `0.0.1-alpha`)](https://github.com/medizininformatik-initiative/mii-fhir-validator/releases).

### Terminologie - der öffentliche Server kennt deutsche Codes nicht vollständig

Der öffentliche `tx.fhir.org` führt die deutsche SNOMED-CT-Extension und andere deutsche Codesysteme nicht vollständig; Codes aus den Value Sets dieses Leitfadens können daher als unbekannt gemeldet werden, obwohl sie korrekt sind. Für die Value Sets dieses Leitfadens `-tx` auf den SU-TermServ-Ontoserver richten (`https://ontoserver.mii-termserv.de/fhir`, Client-Zertifikat erforderlich) oder auf einen eigenen Ontoserver; andernfalls Terminologiemeldungen mit dieser Einschränkung lesen.

### F. Live-Box - direkt hier validieren

**Diese Box sendet den eingefügten Text an `https://validator.fhir.org`** (Voreinstellung: der öffentliche HL7-Validator - siehe den Datenschutzhinweis oben). Auf dieser Website wird nichts gespeichert. Der erste Lauf lädt das Paket auf dem Validator und kann eine Minute dauern; weitere Läufe nutzen diese Sitzung.

FHIR-Instanz (JSON oder XML)

Profil dieses Leitfadens (optional)

- keines: der Validator nutzt meta.profile der Instanz -
Anforderung Bildgebung (ServiceRequest)
Behandlungsempfehlung (CarePlan)
Bildgebungsprozedur (Procedure)
Bildgebungsstudie (ImagingStudy)
Bildgebungsgerät (Device)
Kontrastmittelgabe (MedicationAdministration)
Körperstrukutur (BodyStructure)
radiologische Befundungsprozedur (Procedure)
radiologische Beobachtung (Observation)
radiologische Messung (Observation)
Befundbericht (DiagnosticReport)
Befundbericht semistrukturiert (Composition)

Kanonische Profil-URL (optional - wird aus der Auswahl übernommen; eine andere kanonische URL, etwa aus einem abhängigen Paket, einfach einfügen)

Validieren
Dieses Live-Feld braucht JavaScript; ohne JavaScript nutzen Sie die Wege A bis E oben.


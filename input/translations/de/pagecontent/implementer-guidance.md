<!-- markdownlint-disable MD041 -->

Technische Hinweise für DIZ-Implementierende zum Modul **Bildgebung**: der
Kontext im Gesamtprojekt, die Bezüge zu anderen KDS-Modulen sowie die
zugrunde liegenden Standards und Referenzen.

### Kontext im Gesamtprojekt / Bezüge zu anderen Modulen

Bildgebende Modalitäten sind von essentieller Bedeutung für die medizinische
Diagnostik und dienen daraufhin als eine der Grundlagen für die Entscheidung
von Therapien und Behandlungsplanung sowie für Forschungszwecke. Der
Strukturierungsgrad und die Art der Beschreibungen der Bilddaten variiert
jedoch erheblich zwischen den Standorten. Ein umfassender Überblick über die
Verfügbarkeit strukturierter Bilddaten an den Konsortialstandorten liegt
derzeit nicht vor. Dieser Umstand wird durch die vorgeschlagene abgestufte
Bereitstellung berücksichtigt, die von den vorhandenen Daten abhängt.

#### Das Modul im Kontext nationaler und internationaler Entwicklungen

Das KDS-Modul Bildgebung wurde innerhalb der MII als erstes umfassendes
FHIR-basiertes Informationsmodell für Bildgebungsdaten im deutschen Kontext
entwickelt und veröffentlicht. Andere nationale Initiativen, wie beispielsweise
MIO42, wurden in die Entwicklung mit eingebunden und haben strukturelle
Modellierungsentscheidungen übernommen.
Auf europäischer Ebene sind insbesondere die Arbeiten im Rahmen des European
Health Data Space (EHDS) relevant, in dem aktuell Harmonisierungsvorschläge zu
Bildgebungsdatenmodellen diskutiert werden. Das MII KDS-Modul Bildgebung wird
im nächsten Release (2027) auf mögliche Anpassungs- und Kompatibilitätsbedarfe
hin überprüft werden.
Auch das Modell aus dem Swiss Personalized Health Network (SPHN) enthält
einzelne konzeptionelle Ansätze, die zukünftig für die Weiterentwicklung des
Moduls relevant sein könnten.

#### Beziehung zum Modul Person

Die Zuordnung von Bildgebungsstudien zu einem Patienten oder einer Patientin
erfolgt über Referenzen von der Ressource **Studie** (ImagingStudy) zum Modul
[PERSON](https://medizininformatik-initiative.github.io/kerndatensatz-basis/2026.0.0/de/).
Ebenso wird im **Befundbericht** (DiagnosticReport) und in der **Anforderung**
(ServiceRequest) das Modul
[PERSON](https://medizininformatik-initiative.github.io/kerndatensatz-basis/2026.0.0/de/)
referenziert.

#### Beziehung zum Modul Fall

Die Zuordnung von Bildgebungsstudien zu einem Behandlungsfall erfolgt über
Referenzen von der Ressource **Studie** (ImagingStudy) bzw. **Befundbericht**
(DiagnosticReport) zum Modul
[FALL](https://medizininformatik-initiative.github.io/kerndatensatz-basis/2026.0.0/de/).
Es sollte stets eine Referenz auf den jeweiligen Behandlungsfall mitgeführt
werden, um den Bezug der Bildgebungsstudie zu diesem Fall herzustellen.

#### Beziehung zum Modul Prozedur

Im Zusammenhang mit bildgebenden Modalitäten kann es zu Beziehungen zu
durchgeführten Prozeduren kommen, beispielsweise einer MRT-Untersuchung vor
einer Operation. Für Angaben zur durchgeführten Prozedur wird das Modul
[PROZEDUR](https://medizininformatik-initiative.github.io/kerndatensatz-basis/2026.0.0/de/)
in den Ressourcen **Studie** (ImagingStudy), **Befundbericht**
(DiagnosticReport) sowie in der verknüpften Ressource **GenerischeBeobachtung**
(Observation) verwendet.

#### Beziehung zum Modul Diagnose

Die Ressource **Vorbefund** (Condition) enthält Verknüpfungen zum Modul
[DIAGNOSE](https://medizininformatik-initiative.github.io/kerndatensatz-basis/2026.0.0/de/),
die es ermöglichen, die bildgebende Untersuchung als diagnostisches Werkzeug
zur Unterstützung der Diagnose zu erfassen. Diese werden über eine Referenz in
der Ressource **Anforderung** (ServiceRequest) abgebildet, welche wiederum im
**Befundbericht** (DiagnosticReport) referenziert wird.

#### Beziehung zum Modul Medikation

Zur Darstellung der Kontrastmittelgabe wird sowohl in der
**Bildgebungsprozedur** (Procedure), als auch in der **Studie** (ImagingStudy)
ein Bezug auf das Modul
[MEDIKATION](https://www.medizininformatik-initiative.de/Kerndatensatz/KDS_Medikation_2026/MIIIGModulMedikation.html)
hergestellt. In der **Bildgebungsprozedur** wird die Kontrastmittelgabe mit
Hilfe der **Medikamentenverabreichung** (MedicationAdministration) abgebildet
und in der **Studie** (ImagingStudy) zusätzlich durch die
**Medikationsverordnung** (MedicationStatement) ergänzt.

### Referenzen

Das Kerndatensatzmodul **Bildgebung** orientiert sich an den gängigen
technischen Standards medizinischer Bildgebung. Primär betrifft dies den
[DICOM Standard](https://www.dicomstandard.org/) zwecks FHIR-Profilierung
relevanter technischer und medizinischer Fragestellungen.

Die verwendeten Codesysteme, Terminologien und Referenzen für Prozeduren,
Diagnosen und verwandter medizinischer Fragestellungen sind:

* [SNOMED CT](https://www.snomed.org/)
* [OPS - Operationen- und Prozedurenschlüssel](https://www.bfarm.de/DE/Kodiersysteme/Klassifikationen/OPS-ICHI/OPS/_node.html)
* [RadLex](https://www.rsna.org/practice-tools/data-tools-and-standards/radlex-radiology-lexicon)
* [LOINC - Logical Observation Identifiers Names and Codes](https://loinc.org/)
* [ICD - International Statistical Classification of Diseases and Related Health Problems](https://klassifikationen.bfarm.de/icd-10-gm/kode-suche/htmlgm2024/index.htm)
* [GOLD - German Oncological Data Standard](https://vision-zero-oncology.github.io/GOLD/profiles.html)
* [MIO](https://mio.kbv.de/site/mio#)

Befundungsspezifische Erweiterungsmodule und Profile zur Befundung, die auf
diese Implementierung referenzieren, sollen sich inhaltlich an den gängigen
Befundungsrichtlinien und -kriterien orientieren. Z.B.:

* Mamma - [BI-RADS](https://www.acr.org/Clinical-Resources/Clinical-Tools-and-Reference/Reporting-and-Data-Systems/BI-RADS)
* Prostata - [PI-RADS](https://www.acr.org/Clinical-Resources/Clinical-Tools-and-Reference/Reporting-and-Data-Systems/PI-RADS)
* Leber - [LI-RADS](https://www.acr.org/Clinical-Resources/Clinical-Tools-and-Reference/Reporting-and-Data-Systems/LI-RADS)
* COVID-19 - [CO-RADS](https://radiologyassistant.nl/chest/covid-19/corads-classification)
* DRG Befundvorlagen - [DRG-Templates GitHub](https://github.com/DRGagit/ak_befundung)

Es wurden außerdem die [Kernspezifikation von HL7 FHIR](http://hl7.org/fhir/R4/license.html)
verwendet — darunter insbesondere die entsprechenden Ressourcen
[ImagingStudy](https://hl7.org/fhir/R4/imagingstudy.html) sowie
[DiagnosticReport](https://hl7.org/fhir/R4/diagnosticreport.html) und
zusätzlich die Ressourcen [Observation](https://hl7.org/fhir/R4/observation.html),
[Composition](https://hl7.org/fhir/R4/composition.html),
[BodyStructure](https://hl7.org/fhir/R4/bodystructure.html) und
[ServiceRequest](https://hl7.org/fhir/R4/servicerequest.html).

Die vorliegende Spezifikation wurde gestaltet auf Basis der Beschreibung des
MII-Kerndatensatzes in der Version vom 10.3.2017
[(PDF)](https://www.medizininformatik-initiative.de/sites/default/files/inline-files/MII_04_Kerndatensatz_1-0.pdf),
sowie der Datensatzbeschreibung in
[ART-DECOR](https://art-decor.org/ad/#/mide-/datasets/dataset/2.16.840.1.113883.3.1937.777.24.1.1/2018-06-05T12:44:12/concept/2.16.840.1.113883.3.1937.777.24.2.2795/2023-11-14T08:32:26).

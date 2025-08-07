## Referenzen

Das Kerndatensatzmodul **Befunde bildgebender Verfahren** orientiert sich an den gängigen technischen Standards medizinischer Bildgebung.
Primär betrifft dies den [DICOM Standard](https://www.dicomstandard.org/) zwecks FHIR-Profilierung relevanter technischer und medizinischer Fragestellungen.

Die verwendeten Codesysteme, Terminologien und Referenzen für Prozeduren, Diagnosen und verwandter medizinischer Fragestellungen sind:
* [SNOMED CT](https://www.snomed.org/)
* [OPS - Operationen- und Prozedurenschlüssel](https://www.bfarm.de/DE/Kodiersysteme/Klassifikationen/OPS-ICHI/OPS/_node.html)
* [RadLex](https://www.rsna.org/practice-tools/data-tools-and-standards/radlex-radiology-lexicon)
* [LOINC - Logical Observation Identifiers Names and Codes](https://loinc.org/)
* [ICD - International Statistical Classification of Diseases and Related Health Problems](https://klassifikationen.bfarm.de/icd-10-gm/kode-suche/htmlgm2024/index.htm)
* [GOLD - German Oncological Data Standard](https://vision-zero-oncology.github.io/GOLD/profiles.html)
* [MIO](https://mio.kbv.de/site/mio#)

Befundungsspezifische Erweiterungsmodule und Profile zur Befundung, die auf diese Implentierung referenzieren, sollen sich inhaltlich an den gängigen Befundungsrichtlinien
und -kriterien orientieren. Z.B.:
* Mamma -  [BI-RADS](https://www.acr.org/Clinical-Resources/Clinical-Tools-and-Reference/Reporting-and-Data-Systems/BI-RADS)
* Prostata - [PI-RADS](https://www.acr.org/Clinical-Resources/Clinical-Tools-and-Reference/Reporting-and-Data-Systems/PI-RADS)
* Leber - [LI-RADS](https://www.acr.org/Clinical-Resources/Clinical-Tools-and-Reference/Reporting-and-Data-Systems/LI-RADS)
* COVID-19 - [CO-RADS](https://radiologyassistant.nl/chest/covid-19/corads-classification) 
* DRG Befundvorlagen - [DRG-Templates GitHub](https://github.com/DRGagit/ak_befundung)

Es wurden außerdem die [Kernspezifikation von HL7 FHIR](http://hl7.org/fhir/R4/license.html ) verwendet- darunter insbesondere die entsprechenden Ressourcen [ImagingStudy](https://hl7.org/fhir/R4/imagingstudy.html) sowie [DiagnosticReport](https://hl7.org/fhir/R4/diagnosticreport.html) und zusätzlich die Ressourcen [Observation](https://hl7.org/fhir/R4/observation.html), [Composition](https://hl7.org/fhir/R4/composition.html), [BodyStructure](https://hl7.org/fhir/R4/bodystructure.html) und [ServiceRequest](https://hl7.org/fhir/R4/servicerequest.html).

Die vorliegende Spezifikation wurde gestaltet auf Basis der Beschreibung des MII-Kerndatensatzes in der Version vom 10.3.2017 [(PDF)](https://www.medizininformatik-initiative.de/sites/default/files/inline-files/MII_04_Kerndatensatz_1-0.pdf), sowie der Datensatzbeschreibung in [ART-DECOR](https://art-decor.org/ad/#/mide-/datasets/dataset/2.16.840.1.113883.3.1937.777.24.1.1/2018-06-05T12:44:12/concept/2.16.840.1.113883.3.1937.777.24.2.2795/2023-11-14T08:32:26).

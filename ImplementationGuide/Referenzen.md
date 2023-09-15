## Referenzen

---------------------
<em>
...Bei der Erstellung des Datensatzes zur Dokumentation der Medikation
wurden  Spezifikationen berücksichtigt, die durch die 
 [KBV patientenbezogenen Medikationsplan V2.6](https://www.kbv.de/media/sp/Medikationsplan_Anlage3.pdf)

Bei Terminologien zur Medikation (Arzneimittel, Substanzen etc.) sollen die ISO-Standards zur [Identification of Medicinal Products (IDMP)](https://www.ema.europa.eu/en/human-regulatory/overview/data-medicines-iso-idmp-standards-overview) berücksichtigt werden. 

Die Spezifikation des Medikationsplan PLUS wurde zur Modellierung des Datensatzes und der FHIR-Profile herangezogen, es kann jedoch keine Konformität dieser Spezifikation mit dem Medikationsplan hergestellt werden. Dies liegt vor allem daran, dass der Medikationsplan PLUS auf der FHIR Version STU3 basiert, während die Medizininformatik-Initiative mit FHIR R4 arbeitet. Einige Elemente in der Datenstruktur der FHIR-Ressourcen unterscheiden sich grundlegend zwischen den Versionen, wie beispielsweise die Angabe einer Wirkstärke innerhalb einer Medication-Ressource.
</em>

---------------------


Der Kerndatensatz Bildgebung orientiert sich an den gängigen technischen Standards medizinischer Bildgebung.
Primär betrifft dies den [DICOM Standard](https://www.dicomstandard.org/) zwecks FHIR Profilierung relevanter
technischer und medizinischer Fragestellungen.

Die verwendeten Codesysteme, Terminologien und Referenzen für Prozeduren, Diagnosen und verwandter medizinischer Fragestellungen sind:
* [SNOMED CT](https://www.snomed.org/)
* [OPS - Operationen- und Prozedurenschlüssel](https://www.bfarm.de/DE/Kodiersysteme/Klassifikationen/OPS-ICHI/OPS/_node.html)
* [RadLex](https://www.rsna.org/practice-tools/data-tools-and-standards/radlex-radiology-lexicon)
* [LOINC - Logical Observation Identifiers Names and Codes](https://loinc.org/)
* [ICD - International Statistical Classification of Diseases and Related Health Problems](https://www.dimdi.de/static/de/klassifikationen/icd/icd-10-gm/kode-suche/htmlgm2020/)
* [IDMP - Identification of Medicinal Products](https://www.ema.europa.eu/en/human-regulatory/overview/data-medicines-iso-idmp-standards-overview)

Befundungsspezifische Erweiterungsmodule und Profile zur Befundung, die auf diese Implentierung referenzieren, sollen sich inhaltlich an den gängigen Befundungsrichtlinien
und -kriterien orientieren. Z.B.:
* Mamma -  [BI-RADS](https://www.acr.org/Clinical-Resources/Reporting-and-Data-Systems/BI-RADS)
* Prostata - [PI-RADS](https://www.acr.org/Clinical-Resources/Reporting-and-Data-Systems/PI-RADS)






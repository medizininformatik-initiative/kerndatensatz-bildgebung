Instance: mii-exa-bildgebung-semistrukt-befundbericht
InstanceOf: MII_PR_Bildgebung_Semistrukt_Befundbericht
Usage: #example
Title: "MII Example Bildgebung Composition"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-semistrukt-befundbericht"
* status = #final
* type = $loinc#24604-1 "MG Breast Diagnostics Limited View"
* subject = Reference(Patient/PatExample)
* date = "2024-07-19T12:03:30+02:00"
* author = Reference(Practitioner/PracExample1)
* title = "Mammographic Report"
* section.title = "Left Breast"
* section.code = $loinc#66110-8 "Breast Pathology biopsy report"
* section.author = Reference(Practitioner/PracExample2)
* section.entry = Reference(DiagnosticReport/mii-exa-bildgebung-radiologischer-Befund)
* section.section.entry = Reference(Observation/mii-exa-bildgebung-radiologische-beobachtung)

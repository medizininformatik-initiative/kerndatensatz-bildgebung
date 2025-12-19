Instance: mii-exa-bildgebung-semistrukt-befundbericht
InstanceOf: MII_PR_Bildgebung_Semistrukt_Befundbericht
Usage: #example
Title: "MII Example Bildgebung Composition"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-semistrukt-befundbericht"
* status = #final
* type = $loinc#18748-4 "Diagnostic imaging study"
* subject = Reference(Patient/PatExample)
* date = "2024-07-19T12:03:30+02:00"
* author = Reference(Practitioner/PracExample1)
* title = "Mammographic Report"
* section[diagRep].title = "Left Breast"
* section[diagRep].author = Reference(Practitioner/PracExample2)
* section[diagRep].entry = Reference(DiagnosticReport/mii-exa-bildgebung-radiologischer-Befund)
* section[diagRep].section.entry = Reference(Observation/mii-exa-bildgebung-radiologische-beobachtung)

Instance: mii-exa-bildgebung-semistrukt-befundbericht
InstanceOf: MII_PR_Bildgebung_Semistrukt_Befundbericht
Usage: #example
Title: "MII Example Bildgebung Composition"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-semistrukt-befundbericht"
* status = #final
* type = $loinc#18748-4 "Diagnostic imaging study"
* subject = Reference(Patient/mii-exa-bildgebung-radiologischer-patient)
* date = "2024-07-19T12:03:30+02:00"
* author = Reference(Practitioner/mii-exa-bildgebung-radiologischer-practitioner)
* title = "Mammographic Report"
* section[diagRep].title = "Left Breast"
* section[diagRep].author = Reference(Practitioner/mii-exa-bildgebung-radiologischer-practitioner)
* section[diagRep].entry = Reference(DiagnosticReport/mii-exa-bildgebung-radiologischer-befund)
* section[diagRep].section.entry = Reference(Observation/mii-exa-bildgebung-radiologische-beobachtung)

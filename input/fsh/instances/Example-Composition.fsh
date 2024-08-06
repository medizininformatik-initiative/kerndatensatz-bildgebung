Instance: mii-exa-bildgebung-semistrukt-befundbericht
InstanceOf: MII_PR_Bildgebung_Semistrukt_Befundbericht
Usage: #example
Title: "MII Example Bildgebung Composition"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-semistrukt-befundbericht"
* status = #final
* type = $loinc#24674-4 "MR Elbow"
* subject = Reference(Patient/example)
* date = "2024-07-19T12:03:30+02:00"
* author = Reference(Practitioner/example)
* title = "Example Composition"
* section.title = "Example Composition.section"
* section.code = $loinc#8716-3 "Vital signs"
* section.author = Reference(Practitioner/example)
* section.entry = Reference(Observation/example)

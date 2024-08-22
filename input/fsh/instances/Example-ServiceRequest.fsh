Instance: mii-exa-bildgebung-anforderung-bildgebung
InstanceOf: MII_PR_Bildgebung_Anforderung_Bildgebung
Usage: #example
Title: "MII Example Bildgebung Service Request"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-anforderung-bildgebung"
* status = #completed
* intent = #order
* category = $SCT#363679005 "Imaging (procedure)"
* subject = Reference(Patient/PatExample)
* code = $SCT#71651007 "Mammography (procedure)"
* encounter = Reference(Encounter/EncExample)
* authoredOn = "2024-07-19T12:03:30+02:00"
* requester = Reference(Practitioner/PracExample)
* reasonCode = $SCT#268547008 "Screening for malignant neoplasm of breast (procedure)"
* reasonReference = Reference(Condition/CondExample)
* supportingInfo = Reference(DiagnosticReport/mii-exa-bildgebung-radiologischer-Befund)

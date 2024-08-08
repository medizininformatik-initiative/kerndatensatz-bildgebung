Instance: mii-exa-bildgebung-anforderung-bildgebung
InstanceOf: MII_PR_Bildgebung_Anforderung_Bildgebung
Usage: #example
Title: "MII Example Bildgebung Service Request"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-anforderung-bildgebung"
* status = #active
* intent = #order
* category = $SCT#363679005 "Imaging (procedure)"
* subject = Reference(Patient/example)
* code = $SCT#6007000 "Magnetic resonance imaging of chest (procedure)"
* encounter = Reference(Encounter/example)
* authoredOn = "2024-07-19T12:03:30+02:00"
* requester = Reference(Practitioner/example)
* reasonCode = $SCT#3514002 "Peribronchial fibrosis of lung (disorder)"
* reasonReference = Reference(Condition/example)
* supportingInfo = Reference(DiagnosticReport/example)

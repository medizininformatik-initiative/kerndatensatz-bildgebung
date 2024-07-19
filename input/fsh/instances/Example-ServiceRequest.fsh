//Example of a ServiceRequest
Instance: mii-exa-bildgebung-anforderung-bildgebung
InstanceOf: MII_PR_Bildgebung_Anforderung_Bildgebung
Usage: #example
Title: "MII Example Bildgebung Service Request"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-anforderung-bildgebung"
* status = #active
* intent = #order
* subject = Reference(Patient/example)
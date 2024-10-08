Instance: mii-exa-bildgebung-bildgebungsprozedur
InstanceOf: MII_PR_Bildgebung_Bildgebungsprozedur
Usage: #example
Title: "MII Example Bildgebung Imaging Procedure"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-bildgebungsprozedur"
* basedOn = Reference(ServiceRequest/mii-exa-bildgebung-anforderung-bildgebung)
* status = #completed
* category = $SCT#363679005 "Imaging (procedure)"
* code = $SCT#384151000119104 "Screening mammography of bilateral breasts (procedure)"
* subject = Reference(Patient/PatExample)
* performedDateTime = "2024-07-19T12:03:30+02:00"

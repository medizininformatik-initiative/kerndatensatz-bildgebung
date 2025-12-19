Instance: mii-exa-bildgebung-radiologische-befundungsprozedur
InstanceOf: MII_PR_Bildgebung_Radiologische_Befundungsprozedur
Usage: #example
Title: "MII Example Bildgebung ReadProcedure"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-radiologische-befundungsprozedur"
* status = #completed
* category = $SCT#363679005 "Imaging (procedure)"
* code = $SCT#28191001 "Consultation and report by radiologist (procedure)"
* subject = Reference(Patient/PatExample)
* performedDateTime = "2024-07-19T12:03:30+02:00"
* report = Reference(DiagnosticReport/mii-exa-bildgebung-radiologischer-Befund)

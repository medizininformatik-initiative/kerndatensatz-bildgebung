Instance: mii-exa-bildgebung-behandlungsempfehlung
InstanceOf: MII_PR_Bildgebung_Behandlungsempfehlung
Usage: #example
Title: "MII Example Bildgebung Care Plan"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-behandlungsempfehlung"
* status = #active
* intent = #proposal
* description = "The patient must receive a MRI procedure, after a sportaccident"
* subject = Reference(Patient/example)
* supportingInfo = Reference(DiagnosticReport/example)

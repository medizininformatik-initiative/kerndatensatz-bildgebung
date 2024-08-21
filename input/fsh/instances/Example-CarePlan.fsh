Instance: mii-exa-bildgebung-behandlungsempfehlung
InstanceOf: MII_PR_Bildgebung_Behandlungsempfehlung
Usage: #example
Title: "MII Example Bildgebung Care Plan"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-behandlungsempfehlung"
* status = #completed
* intent = #proposal
* description = "The patient must receive vacuum biopsy"
* subject = Reference(Patient/example)
* supportingInfo = Reference(mii-exa-bildgebung-radiologischer-Befund)

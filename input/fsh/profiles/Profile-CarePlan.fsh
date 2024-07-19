//Head
Profile: MII_PR_Bildgebung_Behandlungsempfehlung
Parent: CarePlan
Id: mii-pr-bildgebung-behandlungsempfehlung
Title: "MII PR Bildgebung Behandlungsempfehlung"
Description: "Diese Profil beschreibt die ärztliche Behandlungsempfehlung einer Person. Sie unterstützt den radiologischen Befund mit Zusatzinformation"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-behandlungsempfehlung"
//Translation
* insert Translation(^name, en-US, MII_PR_Imaging_Care_Plan)
* insert Translation(^title, en-US, MII PR Imaging Care Plan)
* insert Translation(^description, en-US, The profile describes a advisory for medical care.)
//Meta
* insert PR_CS_VS_Version
* id MS
* meta MS
* meta.source MS
* meta.profile MS
//Profile
* status MS
* intent MS
* description MS
* subject MS
* subject only Reference(Patient)
* supportingInfo MS
* supportingInfo only Reference(MII_PR_Bildgebung_Radiologischer_Befund)

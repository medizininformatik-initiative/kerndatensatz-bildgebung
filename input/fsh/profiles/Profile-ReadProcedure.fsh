Profile: MII_PR_Bildgebung_RadiologischeBefundungsprozedur
Parent: Procedure
Id: mii-pr-bildgebung-radiologischeBefundungsprozedur
Title: "MII PR Bildgebung RadiologischeBefundungsprozedur"
Description: "Diese Profil beschreibt die radiologische Befundungsprozedur"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/RadiologicalReadProcedure"
* insert Translation(^name, en-US, MII_PR_Bildgebung_RadiologicalReadProcedure)
* insert Translation(^title, en-US, MII PR Bildgebung RadiologicalReadProcedure)
* insert Translation(^description, en-US, This FHIR resource profile specifically characterizes the radiological reading process.)
* insert PR_CS_VS_Version
* id MS
* meta MS
* meta.source MS
* meta.profile MS
* category 1..1
* category = $SCT#103693007 "Diagnostic procedure" (exactly)
* subject only Reference(Patient)
* report 1..* MS 
* report ^definition = "In cases where follow ups are performed (e.g. RECIST or TNM) this procedure might be used in more than one diagnostic report this way we guarantee that the tumor categories stay the same over time."
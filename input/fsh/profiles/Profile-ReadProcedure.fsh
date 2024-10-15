//Head
Profile: MII_PR_Bildgebung_Radiologische_Befundungsprozedur
Parent: $miiProcedure
Id: mii-pr-bildgebung-radiologische-befundungsprozedur
Title: "MII PR Bildgebung Radiologische Befundungsprozedur"
Description: "Diese Profil beschreibt die radiologische Befundungsprozedur. Es legt fest, dass es sich hierbei um eine reine diagnostische Prozedur handelt"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-radiologische-befundungsprozedur"
//Translation
* insert Translation(^name, en-US, MII_PR_Imaging_Radiological_Readprocedure)
* insert Translation(^title, en-US, MII PR Imaging Radiological Readprocedure)
* insert Translation(^description, en-US, This FHIR resource profile specifically characterizes the radiological reading process.)
//Meta
* insert PR_CS_VS_Version
* insert Publisher
* insert KDS_Copyright
* id MS
* meta MS
* meta.source MS
* meta.profile MS
//Profile
* status MS 
* category 1..1 MS
* category = $SCT#165197003 "Diagnostic assessment" (exactly)
* code MS
* subject MS
* subject only Reference(Patient)
* performed[x] MS
* report 1..* MS 
* report ^definition = "In cases where follow ups are performed (e.g. RECIST or TNM) this procedure might be used in more than one diagnostic report this way we guarantee that the tumor categories stay the same over time."
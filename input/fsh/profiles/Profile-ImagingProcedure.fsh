Profile: MII_PR_BildgebendeVerfahren_ImagingProcedure
Parent: $miiProcedure
Id: mii-pr-bildgebendeverfahren-imagingprocedure
Title: "MII PR BildgebendeVerfahren Bildgebungsprozedur"
Description: "Beschreibt die Tätigkeiten und Parameter zu einer Aufnahme"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/ImagingProcedure"
* insert Translation(^name, en-US, MII_PR_Bildgebung_CarePlan)
* insert Translation(^title, en-US, MII PR Bildgebung CarePlan)
* insert Translation(^description, en-US, The profile describes a advisory for medical care.)
* insert PR_CS_VS_Version
* id MS
* meta MS
* meta.source MS
* meta.profile MS
* category 1..1
* category.coding[sct] ^patternCodeableConcept = $SCT#363679005
* code.coding contains loinc 0..1 MS
* code.coding[loinc] ^patternCoding.system = $loinc

// fixme MIIRef
* basedOn only Reference(MII_PR_BildgebendeVerfahren_ServiceRequest)
* basedOn 1..* MS

//Head
Profile: MII_PR_Bildgebung_Bildgebungsprozedur
Parent: Procedure
Id: mii-pr-bildgebung-bildgebungsprozedur
Title: "MII PR Bildgebung Bildgebungsprozedur"
Description: "Beschreibt die Tätigkeiten und Parameter zu einer Aufnahme"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-bildgebungsprozedur"
//Translation
* insert Translation(^name, en-US, MII_PR_Imaging_Imaging_Procedure)
* insert Translation(^title, en-US, MII PR Imaging Imaging Procedure)
* insert Translation(^description, en-US, The profile describes a advisory for medical care.)
* insert PR_CS_VS_Version
//Meta
* id MS
* meta MS
* meta.source MS
* meta.profile MS
//Profile
* category 1..1
* category.coding[sct] ^patternCodeableConcept = $SCT#363679005
* code.coding contains loinc 0..1 MS
* code.coding[loinc] ^patternCoding.system = $loinc
* basedOn only Reference(MII_PR_Bildgebung_Anforderung_Bildgebung)
* basedOn 1..* MS

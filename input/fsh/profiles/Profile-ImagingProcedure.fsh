//Head
Profile: MII_PR_Bildgebung_Bildgebungsprozedur
Parent: $miiProcedure
Id: mii-pr-bildgebung-bildgebungsprozedur
Title: "MII PR Bildgebung Bildgebungsprozedur"
Description: "Beschreibt die Tätigkeiten, wie eine Bildgebung ausgeführt wird."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-bildgebungsprozedur"
//Translation
* insert Translation(^name, en-US, MII_PR_Imaging_Imaging_Procedure)
* insert Translation(^title, en-US, MII PR Imaging Imaging Procedure)
* insert Translation(^description, en-US, The profile describes a advisory for medical care.)
//Meta
* insert PR_CS_VS_Version
* insert Publisher
* insert KDS_Copyright
* id MS
* meta MS
* meta.source MS
* meta.profile MS
//Profile
* basedOn 1..* MS
* basedOn only Reference(MII_PR_Bildgebung_Anforderung_Bildgebung)
* status MS
* category 1.. MS 
* category.coding 1.. MS 
* category.coding[sct] ^patternCodeableConcept = $SCT#363679005
* code MS
* code.coding MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
  loinc 0..1 MS
* code.coding[loinc] ^patternCoding.system = $loinc
* subject MS
* subject only Reference(Patient)
* performed[x] MS


Profile: MII_PR_BildgebendeVerfahren_ImagingProcedure
Parent: $miiProcedure
Id: mii-pr-bildgebendeverfahren-imagingprocedure
Title: "MII PR BildgebendeVerfahren Bildgebungsprozedur"
Description: "Beschreibt die Tätigkeiten und Parameter zu einer Aufnahme"

* category 1..1
* category.coding[sct] ^patternCodeableConcept = $SCT#363679005

* code.coding contains loinc MS 0.1
* code.coding[loinc].system = $loinc

// fixme MIIRef
* basedOn only Reference(MII_PR_BildgebendeVerfahren_ServiceRequest)
* basedOn 1..* MS

Profile: MII_PR_BildgebendeVerfahren_Procedure
Parent: $miiProcedure
Id: mii-pr-bildgebendeverfahren-procedure
Title: "MII PR BildgebendeVerfahren Procedure"
Description: "TODO"

* category 1..1
// Imaging (procedure)
* category.coding[sct] ^patternCodeableConcept = $SCT#363679005

* code.coding contains loinc MS 0.1
* code.coding[loinc].system = $loinc

// fixme MIIRef
* basedOn only Reference(MII_PR_BildgebendeVerfahren_ServiceRequest)
* basedOn 1..* MS

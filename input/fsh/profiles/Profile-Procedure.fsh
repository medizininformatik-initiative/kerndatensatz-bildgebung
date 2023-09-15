Profile: MII_PR_BildgebendeVerfahren_Procedure
Parent: $miiProcedure
Id: mii-pr-bildgebendeverfahren-procedure
Title: "MII PR BildgebendeVerfahren Procedure"
Description: "TODO"
// fixme MIIRef
* basedOn only Reference(MII_PR_BildgebendeVerfahren_ServiceRequest)
* basedOn 1..* MS
* category 1..1 MS
// Imaging (procedure)
* category.coding[sct] ^patternCodeableConcept = $SCT#363679005

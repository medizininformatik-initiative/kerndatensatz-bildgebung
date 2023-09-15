Profile: MII_PR_BildgebendeVerfahren_ServiceRequest
Parent: ServiceRequest
Id: mii-pr-bildgebendeverfahren-servicerequest
Title: "MII Bildgebende Verfahren ServiceRequest"
Description: "TODO"
//TODO Translation Extensions
* identifier MS
* status MS
* intent MS
* category 1..* MS
// Imaging (procedure)
* category ^patternCodeableConcept = $SCT#363679005
* code.coding 1.. MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    loinc 0..* MS and
    radlex 0..* MS and
    sct 0..1 MS
* code.coding[loinc] ^patternCoding.system = "http://loinc.org"
* code.coding[radlex] ^patternCoding.system = "https://radlex.org"
* code.coding[sct] ^patternCoding.system = $SCT
* code.coding[sct].code from MII_VS_BildgebendeVerfahren_ServiceRequest_Coding
* subject only Reference(Patient)
* subject MS
* encounter MS
* authoredOn MS
* requester MS

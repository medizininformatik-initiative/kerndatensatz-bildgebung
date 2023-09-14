Profile: MIIRadiologyServiceRequest
Parent: ServiceRequest
Id: MIIRadiologyServiceRequest
Title: "MII Radiology ServiceRequest"
Description: "TODO"
//TODO Naming Conventions
//TODO Translation Extensions
* identifier MS
* status MS
* intent MS
* category 1..* MS
* category ^patternCodeableConcept = $observation-category#imaging "Imaging"
* code.coding 1.. MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    loinc 0..* MS and
    radlex 0..* MS
* code.coding[loinc] ^patternCoding.system = "http://loinc.org"
* code.coding[radlex] ^patternCoding.system = "https://radlex.org"
* subject only Reference(Patient)
* subject MS
* encounter MS
* authoredOn MS
* requester MS

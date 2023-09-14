Profile: MIIRadiologyServiceRequest
Parent: ServiceRequest
Id: MIIRadiologyServiceRequest
Title: "MII Radiology ServiceRequest"
Description: "A profile for service requests as part of CDS module 'Befunde Bildgebender Verfahren'"
* identifier MS
* status MS
* intent MS
* category.coding contains imaging 0..* MS
* category.coding[imaging] = $observation-category#imaging "Imaging"
* code.coding 1.. MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    loinc 0..* MS and
    radlex 0..* MS
* code.coding[loinc] from $loinc (example)
* code.coding[loinc] ^patternCoding.system = "http://loinc.org"
* code.coding[radlex] from $radlex (example)
* code.coding[radlex] ^patternCoding.system = "https://radlex.org"
* subject only Reference(Patient)
* subject MS
* encounter MS
* authoredOn MS
* requester only Reference(Patient or Organization or Practitioner or PractitionerRole or RelatedPerson or Device)
* requester MS

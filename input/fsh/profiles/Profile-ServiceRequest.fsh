Profile: MII_PR_BildgebendeVerfahren_ServiceRequest
Parent: ServiceRequest
Id: mii-pr-bildgebendeverfahren-servicerequest
Title: "MII Bildgebende Verfahren ServiceRequest"
Description: "TODO"
//TODO Translation Extensions
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/ServiceRequest"
* insert Translation(^name, en-US, MII_PR_Bildgebung_ServiceRequest)
* insert Translation(^title, en-US, MII PR Bildgebung ServiceRequest)
* insert Translation(^description, en-US, The profile describes a service request.)
* insert PR_CS_VS_Version
* id MS
* meta MS
* meta.source MS
* meta.profile MS
* identifier MS
* status MS
* intent MS
* category 1..* MS
// Imaging (procedure)
* category ^patternCodeableConcept = $SCT#363679005
* code.coding 0.. MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    loinc 0..* MS and
    radlex 0..* MS and
    sct 0..* MS
* code.coding[loinc] ^patternCoding.system = "http://loinc.org"
* code.coding[radlex] ^patternCoding.system = "https://radlex.org"
* code.coding[sct] ^patternCoding.system = $SCT
* code.coding[sct].code from MII_VS_BildgebendeVerfahren_ServiceRequest_Coding
* subject ^type.profile = Canonical($miiRef)
// fixme: only allow a Patient reference
* subject ^type.targetProfile[+] = Canonical(http://hl7.org/fhir/StructureDefinition/Patient)
* subject 1..1 MS
* encounter MS
* authoredOn MS
* requester MS
* reasonCode MS
* reasonCode from MII_VS_BildgebendeVerfahren_ServiceRequest_Reason (preferred)
// fixme MII-Ref
* reasonReference MS
* reasonReference only Reference(Condition)
* supportingInfo MS
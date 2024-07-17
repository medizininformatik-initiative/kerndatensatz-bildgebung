//Head
Profile: MII_PR_Bildgebung_Anforderung_Bildgebung
Parent: ServiceRequest
Id: mii-pr-bildgebung-anforderung-bildgebung
Title: "MII PR Bildgebung Anforderung Bildgebung"
Description: "Profil zur Anforderung einer Bildgebung"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-anforderung-bildgebung"
//Translation
* insert Translation(^name, en-US, MII_PR_Imaging_Service_Request)
* insert Translation(^title, en-US, MII PR Imaging Service Request)
* insert Translation(^description, en-US, The profile describes a service request.)
* insert PR_CS_VS_Version
//Meta
* id MS
* meta MS
* meta.source MS
* meta.profile MS
//Profile
* status MS
* intent MS
* category 1..* MS
* category ^patternCodeableConcept = $SCT#363679005
* code.coding MS
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
* code.coding[sct].code from MII_VS_Bildgebung_ServiceRequest_Coding
* subject MS
* subject only Reference(Patient)
* encounter MS
* authoredOn MS
* requester MS
* reasonCode MS
* reasonCode from MII_VS_Bildgebung_ServiceRequest_Reason (preferred)
* reasonReference MS
* reasonReference only Reference(Condition)
* supportingInfo MS
* supportingInfo only Reference(MII_PR_Bildgebung_Radiologischer_Befund)
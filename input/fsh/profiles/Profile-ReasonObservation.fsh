Profile: MII_PR_BildgebendeVerfahren_ReasonObservation
Parent: Observation
Id: mii-pr-bildgebendeverfahren-reasonobservation
Title: "MII PR BildgebendeVerfahren ReasonObservation"
Description: "TODO"
//  "Radiology Reason for study (narrative)"
* code = $loinc#18785-6
* valueString 1..1 MS
* subject 1..1 MS
* subject ^type.profile = Canonical($miiRef)
// fixme: only allow a Patient reference
* subject ^type.targetProfile[+] = Canonical(http://hl7.org/fhir/StructureDefinition/Patient)
* subject ^type.targetProfile[+] = Canonical(http://hl7.org/fhir/StructureDefinition/Patient)
* subject ^type.targetProfile[+] = Canonical(http://hl7.org/fhir/StructureDefinition/Patient)
* subject ^type.targetProfile[+] = Canonical(http://hl7.org/fhir/StructureDefinition/Patient)
* encounter ^type.profile = $miiRef
* encounter ^type.targetProfile = http://hl7.org/fhir/StructureDefinition/Encounter
* encounter 0..1 MS
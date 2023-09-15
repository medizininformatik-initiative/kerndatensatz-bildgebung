Profile: MII_PR_BildgebendeVerfahren_DiagnosticReport
Parent: DiagnosticReport
Id: mii-pr-bildgebendeverfahren-diagnosticreport
Title: "MII PR BildgebendeVerfahren DiagnosticReport"
Description: "TODO"
* basedOn 1..* MS
* basedOn ^slicing.discriminator.type = #profile
* basedOn ^slicing.discriminator.path = "$this"
* basedOn ^slicing.rules = #open
* basedOn contains
    bildgebendeverfahrenServiceRequest 1..* MS
// fixme MII Ref
* basedOn[bildgebendeverfahrenServiceRequest] only Reference(MII_PR_BildgebendeVerfahren_ServiceRequest)
* subject only Reference(Patient)
* subject 1..1 MS
* encounter 0..1 MS
* effective[x] MS
* imagingStudy 1..* MS
* imagingStudy ^slicing.discriminator.type = #profile
* imagingStudy ^slicing.discriminator.path = "$this"
* imagingStudy ^slicing.rules = #open
* imagingStudy contains
    bildgebendeverfahrenImagingStudy 1..* MS
// fixme MII Ref
* imagingStudy[bildgebendeverfahrenImagingStudy] only Reference(MII_PR_ImagingStudy_ImagingStudy)


* category 1..* MS
// Imaging (procedure)
* category ^patternCodeableConcept = $SCT#363679005
//* code evtl. weiter einschränken 
* identifier MS
* result MS
* result ^slicing.discriminator.type = #profile
* result ^slicing.discriminator.path = "$this"
* result ^slicing.rules = #open
* result contains
    bildgebendeverfahrenObservation 0..* MS
// fixme MII Ref
* result[bildgebendeverfahrenObservation] only Reference(Observation)
// todo constraint: wenn status final -> 1..*
* conclusion MS
* conclusionCode MS
* conclusionCode.coding 0.. MS
* conclusionCode.coding ^slicing.discriminator.type = #pattern
* conclusionCode.coding ^slicing.discriminator.path = "$this"
* conclusionCode.coding ^slicing.rules = #open
* conclusionCode.coding contains
    icd10 0..* MS and
    sct 0..* MS
* conclusionCode.coding[icd10] ^patternCoding.system = $icd10
* conclusionCode.coding[sct] ^patternCoding.system = $SCT

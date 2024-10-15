//Head
Profile: MII_PR_Bildgebung_Radiologischer_Befund
Parent: DiagnosticReport
Id: mii-pr-bildgebung-radiologischer-befund
Title: "MII PR Bildgebung Radiologischer Befund"
Description: "Diese Ressource beschreibt einen radiologischen Befund"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-radiologischer-befund"
//Translation
* insert Translation(^name, en-US, MII_PR_Imaging_Diagnostic_Report)
* insert Translation(^title, en-US, MII PR Imaging Diagnostic Report)
* insert Translation(^description, en-US, The profile describes a diagnostic report for a radiological image.)
//Meta
* insert PR_CS_VS_Version
* insert Publisher
* insert KDS_Copyright
* id MS
* meta MS
* meta.source MS
* meta.profile MS
//Profile
* extension contains
  http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.supportingInfo named supportingInfo 0..* MS
* extension[supportingInfo].extension[reference] 1..1 MS
* extension[supportingInfo].extension[type] 1..1 MS
* extension[supportingInfo].extension[reference].valueReference only Reference(MII_PR_Bildgebung_Radiologischer_Befund or MII_PR_Bildgebung_Radiologische_Befundungsprozedur)
* basedOn MS
* basedOn only Reference(MII_PR_Bildgebung_Anforderung_Bildgebung or CarePlan)
* status MS 
* category 1.. MS 
* category.coding 1.. MS 
* category.coding ^slicing.discriminator.type = #pattern
* category.coding ^slicing.discriminator.path = "$this"
* category.coding ^slicing.rules = #open
* category.coding contains
    loinc 0..1 and
    diagnostic-service-sections 0..1 and 
    snomed-ct 1..1
* category.coding[loinc] = $loinc#18748-4 "Diagnostic imaging study"
* category.coding[diagnostic-service-sections] = $DSS#RAD
* category.coding[snomed-ct] = $SCT#4201000179104 "Imaging report"
* code MS 
* subject 1..1 MS
* subject only Reference(Patient) 
* encounter MS
* effective[x] MS
* effectiveDateTime MS
* effectivePeriod MS
* issued MS
* result MS
* result only Reference(MII_PR_Bildgebung_Radiologische_Beobachtung) 
* imagingStudy 1.. MS
* imagingStudy only Reference(MII_PR_Bildgebung_Bildgebungsstudie)
* conclusion MS
* conclusionCode MS
* conclusionCode.coding MS
* conclusionCode.coding ^slicing.discriminator.type = #pattern
* conclusionCode.coding ^slicing.discriminator.path = "$this"
* conclusionCode.coding ^slicing.rules = #open
* conclusionCode.coding contains
    icd10-gm 0..* MS and
    sct 0..* MS
* conclusionCode.coding[icd10-gm] ^patternCoding.system = $icd10-gm
* conclusionCode.coding[sct] ^patternCoding.system = $SCT
* presentedForm MS

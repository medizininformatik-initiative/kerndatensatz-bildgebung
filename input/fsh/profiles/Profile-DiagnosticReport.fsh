//Profile for a Radiological Diagnostic Report
Profile: Radiological_Diagnostic_Report
Parent: DiagnosticReport
Id: radiological-diagnostic-report
Title: "MII PR BildgebendeVerfahren DiagnosticReport"
Description: "Dieses Profil beschreibt den Befund ... radiologischer Bildgebung."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/DiagnosticReport"
* insert Translation(^name, en-US, MII_PR_Bildgebung_DiagnosticReport)
* insert Translation(^title, en-US, MII PR Bildgebung DiagnosticReport)
* insert Translation(^description, en-US, The profile describes a diagnostic report for radiological images.)
* insert PR_CS_VS_Version
* category 1..* 
* category.coding 1.. 
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
* code.coding 1..* 
* subject 1..1 
* subject only Reference(Patient) 
* extension contains http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.supportingInfo named supportingInfo 0..* MS
//* extension[supportingInfo].extension[reference] only Reference(DiagnosticReport)
* result 0..* MS 
* imagingStudy 1..* MS
* imagingStudy ^slicing.discriminator.type = #profile
* imagingStudy ^slicing.discriminator.path = "$this"
* imagingStudy ^slicing.rules = #open
* imagingStudy contains
    bildgebendeverfahrenImagingStudy 1..* MS
// fixme MII Ref
* imagingStudy[bildgebendeverfahrenImagingStudy] only Reference(MII_PR_ImagingStudy_ImagingStudy)
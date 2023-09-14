Profile: MIIRadiologyDiagnosticReport
Parent: DiagnosticReport
Id: MIIRadiologyDiagnosticReport
Title: "MII Radiology DiagnosticReport"
Description: "Dieses Profil beschreibt den Befund ... radiologischer Bildgebung."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/DiagnosticReport"
* insert Translation(^name, en-US, MII_PR_Bildgebung_DiagnosticReport)
* insert Translation(^title, en-US, MII PR Bildgebung DiagnosticReport)
* insert Translation(^description, en-US, The profile describes a diagnostic report for radiological images.)
* insert PR_CS_VS_Version

* identifier MS
* basedOn only Reference(ServiceRequest)
// * category = fixed value "RAD"
// code ? snomed?
* subject only Reference(Patient)
* subject MS
* encounter MS
// effective[x] , issued , performer, resultsInterpreter, specimen
* result 1..* MS
* imagingStudy 1..* MS
// media
* conclusion MS
* conclusionCode MS
// presentedForm


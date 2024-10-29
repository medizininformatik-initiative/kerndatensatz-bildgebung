ValueSet: MII_VS_Bildgebung_Diagnostic_Report_Coding
Id: mii-vs-bildgebung-diagnostic-report-coding
Title: "MII VS Bildgebung DiagnosticReport Coding"
Description: "Import the ValueSet for Diagnostic Reports"
* insert Publisher
* insert PR_CS_VS_Version
* insert SNOMED_Copyright
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^experimental = false
* ^date = "2024-08-30"
* include codes from system $SCT where constraint = "(< 404684003 | Clinical finding (finding)|"
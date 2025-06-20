ValueSet: MII_VS_Bildgebung_Diagnostic_Report_Coding_SCT
Id: mii-vs-bildgebung-diagnostic-report-coding-sct
Title: "MII VS Bildgebung DiagnosticReport Coding SCT"
Description: "Import the ValueSet for Diagnostic Reports"
* insert Publisher
* insert PR_CS_VS_Version
* insert SNOMED_Copyright
* insert PR_CS_VS_Date
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^experimental = false
* include codes from system $SCT-version where constraint = "(< 404684003 | Clinical finding (finding)|"
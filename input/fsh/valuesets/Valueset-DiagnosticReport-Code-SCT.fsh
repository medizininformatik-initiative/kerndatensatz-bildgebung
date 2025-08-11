ValueSet: MII_VS_Bildgebung_Diagnostic_Report_Code_SCT
Id: mii-vs-bildgebung-diagnostic-report-code-sct
Title: "MII VS Bildgebung DiagnosticReport Code SCT"
Description: "Import the ValueSet for Diagnostic Reports"
* insert Publisher
* insert PR_CS_VS_Version
* insert SNOMED_Copyright
* insert PR_CS_VS_Date
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^experimental = false
* include codes from system $SCT-version where constraint = "< 371525003 | Clinical procedure report (record artifact) |"
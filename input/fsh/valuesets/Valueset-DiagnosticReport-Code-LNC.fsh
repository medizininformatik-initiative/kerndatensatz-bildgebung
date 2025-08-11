ValueSet: MII_VS_Bildgebung_Diagnostic_Report_Code_LNC
Id: mii-vs-bildgebung-diagnostic-report-code-lnc
Title: "MII VS Bildgebung DiagnosticReport Code Loinc"
Description: "Import the ValueSet for Diagnostic Reports"
* insert Publisher
* insert PR_CS_VS_Version
* insert LOINC_Copyright
* insert PR_CS_VS_Date
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^experimental = false
* include codes from system $loinc where SCALE_TYP = $loinc#LP32888-7 and CLASS = $loinc#LP29684-5
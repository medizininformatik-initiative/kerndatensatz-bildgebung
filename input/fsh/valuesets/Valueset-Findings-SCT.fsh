ValueSet: MII_VS_Bildgebung_Findings_SCT
Id: mii-vs-bildgebung-findings-sct
Title: "MII VS Bildgebung Findings SCT"
Description: "Import the ValueSet for Diagnostic Reports and Service Request"
* insert Publisher
* insert PR_CS_VS_Version
* insert SNOMED_Copyright
* insert PR_CS_VS_Date
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^experimental = false
* include codes from system $SCT-version where constraint = "< 404684003 | Clinical finding (finding)|"
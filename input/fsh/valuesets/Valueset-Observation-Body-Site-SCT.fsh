ValueSet: MII_VS_Bildgebung_Observation_Body_Site_SCT
Id: mii-vs-bildgebung-observation-body-site-sct
Title: "MII VS Bildgebung Observation Body Site SCT"
Description: "Import the ValueSet for Observation"
* insert Publisher
* insert PR_CS_VS_Version
* insert SNOMED_Copyright
* insert PR_CS_VS_Date
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^experimental = false
* include codes from system $SCT-version where constraint = "< 123037004 | Body structure (body structure) |"



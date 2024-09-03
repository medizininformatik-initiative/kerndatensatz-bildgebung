// TNM Procedures Valueset
ValueSet: MII_VS_Bildgebung_TNM_Radiological_Read_Procedure
Id: mii-vs-bildgebung-tnm-radiological-read-procedure
Title: "Valueset for TNM Radiological Read Procedures"
Description: "This Valueset contains the snomed codes of the different TNM tumor staging systems"
* insert Publisher
* insert PR_CS_VS_Version
* insert SNOMED_Copyright
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^experimental = false
* ^status = #draft
* ^date = "2024-08-30"
* include codes from system $SCT where concept descendent-of #254293002
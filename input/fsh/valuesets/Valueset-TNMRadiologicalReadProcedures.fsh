// TNM Procedures Valueset
ValueSet: MII_VS_Bildgebung_TNM_Radiological_Read_Procedure
Id: mii-vs-bildgebung-tnm-radiological-read-procedure
Title: "Valueset for TNM Radiological Read Procedures"
Description: "This Valueset contains the snomed codes of the different TNM tumor staging systems"
* insert Publisher
* insert PR_CS_VS_Version
* insert SNOMED_Copyright
* insert PR_CS_VS_Date
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^experimental = false
* ^status = #draft
* include codes from system $SCT where constraint = "(< 254293002 ||"
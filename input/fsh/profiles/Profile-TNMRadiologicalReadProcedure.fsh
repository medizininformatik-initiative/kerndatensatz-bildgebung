//TNM
//TNM Procedure Profile
//TODO add version to the profile
Profile: TNM_Radiological_Read_Procedure
Parent: Radiological_Read_Procedure
Id: radiological-tnm-read-procedure
Title: "Radiological read procedure for clinical TNM"
Description: "This radiological procedure profile describes the radiological reading process following TNM criteria. It derives from the Radiological_Read_Procedure and needs to define which entity and in which version the read was performed."
* insert PR_CS_VS_Version
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructurDefinition/TNMRadiologicalReadProcedure"
* code 1..1
* code from VS_TNM_Radiological_Read_Procedures (required)
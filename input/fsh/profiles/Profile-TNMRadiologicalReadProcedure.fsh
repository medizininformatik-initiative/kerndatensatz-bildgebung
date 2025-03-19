//Head
Profile: MII_PR_Bildgebung_TNM_Radiologische_Befundungsprozedur
Parent: MII_PR_Bildgebung_Radiologische_Befundungsprozedur
Id: mii-pr-bildgebung-TNM-radiologische-befundungsprozedur
Title: "MII PR Bildgebung TNM Radiologische Befundungsprozedur"
Description: "Spezifiziert die radiologische Befundungsprozedur nach TNM"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructurDefinition/mii-pr-bildgebung-TNM-radiologische-befundungsprozedur"
//Translation
* insert Translation(^name, en-US, MII_PR_Imaging_TNM_Radiological_Read_Procedure)
* insert Translation(^title, de-DE, TNM Befundung)
* insert Translation(^title, en-US, TNM radiological read-procedure)
* insert Translation(^description, de-DE, radiologische Befundung nach TNM)
* insert Translation(^description, en-US, This radiological procedure profile describes the radiological reading process following TNM criteria. It derives from the Radiological_Read_Procedure and needs to define which entity and in which version the read was performed.)
//Meta
* ^status = #draft
* insert PR_CS_VS_Version
* insert PR_CS_VS_Date
* insert Publisher
* insert LicenseCodeableCCBY40
* id MS
* meta MS
* meta.source MS
* meta.profile MS
//Profile
* code 1..1
* code from MII_VS_Bildgebung_TNM_Radiological_Read_Procedure (required)
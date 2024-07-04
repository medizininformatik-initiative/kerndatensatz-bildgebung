Profile: MII_PR_Bildgebung_TNMRadiologischeBefundungsprozedur
Parent: MII_PR_Bildgebung_RadiologischeBefundungsprozedur
Id: mii-pr-bildgebung-TNMRadiologischeBefundungsprozedur
Title: "MII PR Bildgebung TNMRadiologischeBefundungsprozedur"
Description: "Spezifiziert die radiologische Befundungsprozedur nach TNM"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructurDefinition/TNMRadiologicalReadProcedure"
* insert Translation(^name, en-US, MII_PR_Bildgebung_TNMRadiologicalReadProcedure)
* insert Translation(^title, en-US, MII PR Bildgebung TNMRadiologicalReadProcedure)
* insert Translation(^description, en-US, This radiological procedure profile describes the radiological reading process following TNM criteria. It derives from the Radiological_Read_Procedure and needs to define which entity and in which version the read was performed.)
* insert PR_CS_VS_Version
* id MS
* meta MS
* meta.source MS
* meta.profile MS
* code 1..1
* code from MII_VS_Bildgebung_TNMRadiologicalReadProcedures (required)
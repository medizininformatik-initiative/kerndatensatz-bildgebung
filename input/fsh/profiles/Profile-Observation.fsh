Profile: MII_PR_Bildgebung_RadiologischeBeobachtung
Parent: Observation
Id: mii-pr-bildgebung-radiologischeBeobachtung
Title: "MII PR BildgebendeVerfahren Radiologische Beobachtung"
Description: "Dieses Profil beschreibt den Befund ... radiologischer Bildgebung."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/Observation"
* insert Translation(^name, en-US, MII_PR_Bildgebung_Observation)
* insert Translation(^title, en-US, MII PR Bildgebung Observation)
* insert Translation(^description, en-US, The profile describes a observation for radiological images.)
* insert PR_CS_VS_Version
* partOf MS
* partOf only Reference (Radiological_Read_Procedure)
* status MS
* category MS
* code MS
* subject MS
* issued MS
* value[x] MS
* bodySite MS
* component MS
// extension BIldnummer
// extension Instance UID
// extension Bodystructure

//Head
Profile: MII_PR_Bildgebung_Radiologische_Beobachtung
Parent: Observation
Id: mii-pr-bildgebung-radiologische-beobachtung
Title: "MII PR BildgebendeVerfahren Radiologische Beobachtung"
Description: "Dieses Profil beschreibt den Befund/eine Beobachtung in der radiologischer Bildgebung."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-radiologische-beobachtung"
//Translation
* insert Translation(^name, en-US, MII_PR_Imaging_Observation)
* insert Translation(^title, en-US, MII PR Imaging Observation)
* insert Translation(^description, en-US, The profile describes a observation for radiological images.)
* insert PR_CS_VS_Version
//Profile
* partOf MS
* partOf only Reference (MII_PR_Bildgebung_Radiologische_Befundungsprozedur)
* status MS
* category MS
* code MS
* subject MS
* issued MS
* value[x] MS
* bodySite MS
* component MS
// extension Bildnummer
// extension Instance UID
// extension Bodystructure

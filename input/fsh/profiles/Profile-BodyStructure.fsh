//Head
Profile: MII_PR_Bildgebung_Koerperstruktur
Parent: BodyStructure
Id: mii-pr-bildgebung-koerperstruktur
Title: "MII PR Bildgebung Körperstruktur"
Description: "Dieses Profil beschreibt die dargestellte Körperstrukturen nach Morphologie und Lokalisation."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-koerperstruktur"
//Translation
* insert Translation(^name, en-US, MII_PR_Imaging_BodyStructure)
* insert Translation(^title, en-US, MII PR Imaging BodyStructure)
* insert Translation(^description, en-US, The profile describes the examined bodystructure in morphology and location.)
//Meta
* insert PR_CS_VS_Version
* insert Publisher
* insert KDS_Copyright
* id MS
* meta MS
* meta.source MS
* meta.profile MS
//Profile
* morphology MS
* location MS
* locationQualifier MS
* patient MS
* patient only Reference(Patient)
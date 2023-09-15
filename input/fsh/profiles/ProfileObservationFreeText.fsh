Profile: MIIRadiologyFreeText
Parent: Observation
Id: MIIRadiologyFreeText
Title: "MII Radiology FreeText"
Description: "Dieses Profil beschreibt die Resultate einer Bildgebung als Freitext ."

* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/ObservationFreeText"
* insert Translation(^name, en-US, MII_PR_ObservationFreeText)
* insert Translation(^title, en-US, MII PR ObservationFreeText)
* insert Translation(^description, en-US, The profile describes the findings of an observations for imaging data as free text.)
* insert PR_CS_VS_Version

* identifier MS
// * status = registered
// TODO: codesystem prüfen und geeigneten code verwenden
* code MS
* value[x] only string
* value[x] MS


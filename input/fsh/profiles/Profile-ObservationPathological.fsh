Profile: MIIRadiologyPathological
Parent: Observation
Id: MIIRadiologyPathological
Title: "MII Radiology Pathological"
Description: "Dieses Profil beschreibt ob der Befund pathologisch ist oder nicht."

* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/ObservationPathological"
* insert Translation(^name, en-US, MII_PR_ObservationPathological)
* insert Translation(^title, en-US, MII PR ObservationPathological)
* insert Translation(^description, en-US, The profile describes the expansion observations for radiological images.)
* insert PR_CS_VS_Version

* identifier MS
// * status = registered
// TODO: codesystem prüfen und geeigneten code verwenden
* code MS
* value[x] only boolean
* value[x] MS







Profile: MIIRadiologyLocalization
Parent: Observation
Id: MIIRadiologyLocalization
Title: "MII Radiology Localization"
Description: "Dieses Profil beschreibt die Lokalisation des pathologischen Befunds."

* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/ObservationLocalization"
* insert Translation(^name, en-US, MII_PR_ObservationLocalization)
* insert Translation(^title, en-US, MII PR ObservationLocalization)
* insert Translation(^description, en-US, The profile describes the localization of pathological finding.)
* insert PR_CS_VS_Version

* identifier MS
// * status = registered
// TODO: korrekten Code auswählen. (body organ structure?)
* code MS
Profile: MIIRadiologyObservation
Parent: Observation
Id: MIIRadiologyObservation
Title: "MII Radiology Observation"
Description: "Dieses Profil beschreibt die Resultate ... radiologischer Bildgebung."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/Observation"
* insert Translation(^name, en-US, MII_PR_Bildgebung_Observation)
* insert Translation(^title, en-US, MII PR Bildgebung Observation)
* insert Translation(^description, en-US, The profile describes the observations ...... for radiological images.)
* insert PR_CS_VS_Version

* identifier MS
* basedOn only Reference(ServiceRequest)
// partOf, status, category, code
* subject only Reference(Patient)
* subject MS
// focus
* encounter MS
* effective MS
// issued, performer

* category 1.. MS
* coding 1.. MS
* system 1.. MS
* code 1.. MS
* category.code = imaging

* code MS
* coding from TODO (preferred)  // TODO find suitable snomed? observable entity
* coding 1.. MS
* code 1.. MS
* system 1.. MS

// parent observation has members that describe the findings
* hasMember 1..4 MS
* hasMember only Reference(Observation)
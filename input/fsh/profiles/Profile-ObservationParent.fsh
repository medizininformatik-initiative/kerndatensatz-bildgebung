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

// parent observation hat dann Feld über welches member abgefragt werden können
* hasMember 1..4 MS
* hasMember only Reference(Observation)

* component 1..*
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = code
* component ^slicing.rules = #open
* component contains is-pathological 0..1 MS
and localisation 0..1 MS
and morphology 0..1 MS
and expansion
* component[is-pathological] only

* code MS
* value[x] MS


------------------------------------------------------------------------------

Option 1:
- mehrere obs.components mit spezifischen extra definierten und geslicten teilen
- Schwierigkeit "Ausdehnung" da slicing im slicing nicht möglich

Option 2:
- eine "parent Observation"
- diese hat bis zu 4 members bei obs.hasMember
- hier kann Ausdehnung geslict werden
- dadurch auch leichter abfragbar, da nicht super spezifisch



//Head
Profile: MII_PR_Bildgebung_Radiologische_Beobachtung
Parent: Observation
Id: mii-pr-bildgebung-radiologische-beobachtung
Title: "MII PR Bildgebung Radiologische Beobachtung"
Description: "Dieses Profil beschreibt den Befund/eine Beobachtung in der radiologischer Bildgebung."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-radiologische-beobachtung"
//Translation
* insert Translation(^name, en-US, MII_PR_Imaging_Radiological_Observation)
* insert Translation(^title, en-US, MII PR Imaging Radiological Observation)
* insert Translation(^description, en-US, The profile describes a observation for radiological images.)
* insert PR_CS_VS_Version
//Meta
* id MS
* meta MS
* meta.source MS
* meta.profile MS
//Profile
* extension contains
  numberOfImage 0..1 and
  SOPInstanceUID 0..1 and
  http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.bodyStructure named bodyStructure 0..* MS
* extension[bodyStructure].valueReference only Reference(MII_PR_Bildgebung_Koerperstruktur)
* extension[numberOfImage].id
* extension[SOPInstanceUID].id 
* partOf MS
* partOf only Reference (MII_PR_Bildgebung_Radiologische_Befundungsprozedur)
* status MS
* category MS
* code MS
* subject MS
* subject only Reference(Patient)
* issued MS
* value[x] MS
* bodySite MS
* hasMember MS
* hasMember only Reference(MII_PR_Bildgebung_Radiologische_Beobachtung)
* derivedFrom MS
* derivedFrom only Reference(MII_PR_Bildgebung_Bildgebungsstudie)
* component MS

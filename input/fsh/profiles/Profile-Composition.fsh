//Head
Profile: MII_PR_Bildgebung_Semistrukt_Befundbericht
Parent: Composition
Id: mii-pr-bildgebung-semistrukt-befundbericht
Title: "MII PR Bildgebung Semistrukturierter Befundbericht"
Description: "Dieses Profil beschreibt den semistrukturierten Befundbericht"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-semistrukt-befundbericht"
//Translation
* insert Translation(^name, en-US, MII_PR_Imaging_Composition)
* insert Translation(^title, en-US, MII PR Imaging Composition)
* insert Translation(^description, en-US, The profile describes a semistructured report.)
* insert PR_CS_VS_Version
//Meta
* id MS
* meta MS
* meta.source MS
* meta.profile MS
//Profile
* status MS
* type MS
* subject MS
* subject only Reference(Patient)
* date MS
* author MS
* author only Reference(Practitioner)
* title MS
* section MS
* section.title MS
* section.code MS
* section.author MS
* section.text MS
* section.entry MS
* section.entry only Reference(Observation)
* section.section MS

Profile: MII_PR_Bildgebung_SemistrukturierterBefundbericht
Parent: Composition
Id: mii-pr-bildgebung-semistrukturierterBefundbericht
Title: "MII PR Bildgebung Semistrukturierter Befundbericht"
Description: "Dieses Profil beschreibt den semistrukturierten Befundbericht"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/Composition"
* insert Translation(^name, en-US, MII_PR_Bildgebung_Composition)
* insert Translation(^title, en-US, MII PR Bildgebung Composition)
* insert Translation(^description, en-US, The profile describes a semistructured report.)
* insert PR_CS_VS_Version
* id MS
* meta MS
* meta.source MS
* meta.profile MS
* status MS
* type MS
* subject MS
* subject only Reference(Patient)
* date MS
* author MS
* author only Reference(Practitioner)
* title MS
* section MS // TODO section slicing
* section.titel
* section.code
* section.author
* section.text
* section.entry
//TODO: * entry only Reference(Observation)
//TODO: * section.section MS

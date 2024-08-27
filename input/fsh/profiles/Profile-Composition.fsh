//Head
Profile: MII_PR_Bildgebung_Semistrukt_Befundbericht
Parent: Composition
Id: mii-pr-bildgebung-semistrukt-befundbericht
Title: "MII PR Bildgebung Semistrukturierter Befundbericht"
Description: "Dieses Profil bietet die Möglichkeit, den Befundbericht in einer semi-strukturierten Weise abzubilden. Es dient damit als Ergänzung zum eigentlichen Befundbericht"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-semistrukt-befundbericht"
//Translation
* insert Translation(^name, en-US, MII_PR_Imaging_Composition)
* insert Translation(^title, en-US, MII PR Imaging Composition)
* insert Translation(^description, en-US, The profile describes a semistructured report. It is an addition for the main medical report.)
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
* section ^slicing.discriminator.type = #profile
* section ^slicing.discriminator.path = "Composition.section.entry().resolve()"
* section ^slicing.rules = #open
* section contains
    diagRep 1..1
* section[diagRep].entry only Reference(MII_PR_Bildgebung_Radiologischer_Befund)
* section.title MS
* section.code MS
* section.author MS
* section.text MS
* section.entry MS
* section.section MS

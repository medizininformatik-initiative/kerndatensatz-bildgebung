//Head
Profile: MII_PR_Bildgebung_Semistrukt_Befundbericht
Parent: Composition
Id: mii-pr-bildgebung-semistrukt-befundbericht
Title: "MII PR Bildgebung Semistrukturierter Befundbericht"
Description: "Dieses Profil bietet die Möglichkeit, den Befundbericht in einer semi-strukturierten Weise abzubilden. Es dient damit als Ergänzung zum eigentlichen Befundbericht"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-semistrukt-befundbericht"
//Translation Meta
* insert Translation(^name, en-US, MII_PR_Imaging_Composition)
* insert Translation(^title, en-US, MII PR Imaging Composition)
* insert Translation(^description, en-US, The profile describes a semistructured report. It is an addition for the main medical report.)
//Meta
* insert PR_CS_VS_Version
* insert Publisher
* insert KDS_Copyright
* id MS
* meta MS
* meta.source MS
* meta.profile MS
//Translation Profile
* insert Translation(status ^short, de-DE, Status)
* insert Translation(status ^short, en-US, status)
* insert Translation(status ^definition, de-DE, vorläufig | engültig | geändert | fehlerhafte Eingabe)
* insert Translation(status ^definition, en-US, preliminary | final | amended | entered-in-error)
* insert Translation(subject ^short, de-DE, Person)
* insert Translation(subject ^short, en-US, person)
* insert Translation(subject ^definition, de-DE, Person\, auf die sich die Komposition bezieht)
* insert Translation(subject ^definition, en-US, person\, which this composition is about)
* insert Translation(date ^short, de-DE, Erstellungsdatum)
* insert Translation(date ^short, en-US, date)
* insert Translation(date ^definition, de-DE, Zeitpunkt der Erstellung)
* insert Translation(date ^definition, en-US, date of creation)
* insert Translation(author ^short, de-DE, Autor)
* insert Translation(author ^short, en-US, author)
* insert Translation(author ^definition, de-DE, Autor der Komposition)
* insert Translation(author ^definition, en-US, author of the composition)
* insert Translation(title ^short, de-DE, Titel)
* insert Translation(title ^short, en-US, title)
* insert Translation(title ^definition, de-DE, Titel der Komposition)
* insert Translation(title ^definition, en-US, title of this composition)
* insert Translation(section ^short, de-DE, Befundabschnitt)
* insert Translation(section ^short, en-US, section)
* insert Translation(section ^definition, de-DE, 1. Abschnitt immer der Befundbericht\, 2.-X. Abschnitt können Beobachtungen oder Freitext sein. Unterteilt in Titel\, Code\, Autor\, Text und Eintrag)
* insert Translation(section ^definition, en-US, 1. section is the report\, 2.-X. sections are observations or text. Subdivided in title\, code\, author\, text and entry)
//Profile
* status MS
* type MS
* subject 1..1 MS
* subject only Reference(Patient)
* date MS
* author MS
* author only Reference(Practitioner)
* title MS
* section MS
* section ^slicing.discriminator.type = #profile
* section ^slicing.discriminator.path = "Composition.section.entry.resolve()"
* section ^slicing.rules = #open
* section contains
    diagRep 1..1
* section[diagRep].entry only Reference(MII_PR_Bildgebung_Radiologischer_Befund)
* section.title MS
* section.code MS
* section.author MS
* section.text MS
* section.entry 1..* MS
* section.section MS

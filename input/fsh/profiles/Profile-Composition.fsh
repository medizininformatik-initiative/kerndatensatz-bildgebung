//Head
Profile: MII_PR_Bildgebung_Semistrukt_Befundbericht
Parent: Composition
Id: mii-pr-bildgebung-semistrukt-befundbericht
Title: "MII PR Bildgebung Semistrukturierter Befundbericht"
Description: "Dieses Profil bietet die Möglichkeit, den Befundbericht in einer semi-strukturierten Weise abzubilden. Es dient damit als Ergänzung zum eigentlichen Befundbericht"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-semistrukt-befundbericht"
//Translation Meta
* insert Translation(^name, en-US, MII_PR_Imaging_Composition)
* insert Translation(^title, de-DE, Befundbericht semistrukturiert)
* insert Translation(^title, en-US, composition)
* insert Translation(^description, de-DE, Beschreibt den semistrukturierten Befundbericht)
* insert Translation(^description, en-US, The profile describes a semistructured report. It is an addition for the main medical report.)
//Meta
* insert PR_CS_VS_Version
* insert PR_CS_VS_Date
* insert Publisher
* insert LicenseCodeableCCBY40
* id MS
* meta MS
* meta.source MS
* meta.profile MS
//Profile
* status MS
* status ^short = "Status"
* status ^definition = "vorläufig | engültig | geändert | fehlerhafte Eingabe"
* type MS
* type ^short = "Kompositionstyp"
* type ^definition = "Typ der Komposition"
* type.coding 1.. MS
* type.coding ^slicing.discriminator.type = #pattern
* type.coding ^slicing.discriminator.path = "$this"
* type.coding ^slicing.rules = #open
* type.coding contains
    loinc 0..1 MS
* type.coding[loinc] ^patternCoding.system = $loinc
* type.coding[loinc] = $loinc#18748-4
* type.coding[loinc].display = "Diagnostic imaging study"
* type.coding.system 1.. MS
* type.coding.code 1.. MS
* subject 1..1 MS
* subject only Reference(Patient)
* subject ^short = "Person"
* subject ^definition = "Person, auf die sich die Komposition bezieht"
* date MS
* date ^short = "Erstellungsdatum"
* date ^definition = "Zeitpunkt der Erstellung"
* author MS
* author only Reference(Practitioner)
* author ^short = "Autor"
* author ^definition = "Autor der Komposition"
* title MS
* title ^short = "Titel"
* title ^definition = "Titel der Komposition"
* section MS
* section ^short = "Befundabschnitt"
* section ^definition = "1. Abschnitt immer der Befundbericht, 2.-X. Abschnitt können Beobachtungen oder Freitext sein. Unterteilt in Titel, Code, Autor, Text und Eintrag"
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section contains
    diagRep 1..1
* section[diagRep].entry only Reference(MII_PR_Bildgebung_Radiologischer_Befund)
* section.title MS
* section.title ^short = "Befundabschnittstitel"
* section.title ^definition = "Titel des Befundabschnitt"
* section.code MS
* section.code ^short = "Abschnitttyp"
* section.code ^definition = "Typ des Abschnitts"
* section[diagRep].code = $loinc#18782-3 "Radiology Study observation (narrative)"
* section.code.coding.system 1.. MS
* section.code.coding.code 1.. MS
* section.author MS
* section.author ^short = "Abschnittsautor"
* section.author ^definition = "Autor des Abschnitts"
* section.text MS
* section.text ^short = "Abschnitttext"
* section.text ^definition = "Text im Abschnitt"
* section.entry 1..* MS
* section.entry ^short = "Abschnittseintrag"
* section.entry ^definition = "Eintrag in einem Abschnitt"
* section.section MS
* section.section ^short = "weiterer Abschnitt"
* section.section ^definition = "weiterer Abschnitt in der Komposition"

//Translation Profile
* insert Translation(status ^short, de-DE, Status)
* insert Translation(status ^short, en-US, status)
* insert Translation(status ^definition, de-DE, vorläufig | engültig | geändert | fehlerhafte Eingabe)
* insert Translation(status ^definition, en-US, preliminary | final | amended | entered-in-error)
* insert Translation(type ^short, de-DE, Kompositionstyp)
* insert Translation(type ^short, en-US, compositiontype)
* insert Translation(type ^definition, de-DE, Typ der Komposition)
* insert Translation(type ^definition, en-US, type of the composition)
* insert AddLoincCodingTranslation(type.coding[loinc])
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
* insert Translation(section.title ^short, de-DE, Befundabschnittstitel)
* insert Translation(section.title ^short, en-US, sectiontitle)
* insert Translation(section.title ^definition, de-DE, Titel des Befundabschnitt)
* insert Translation(section.title ^definition, en-US, section title)
* insert Translation(section.code ^short, de-DE, Abschnitttyp)
* insert Translation(section.code ^short, en-US, section type)
* insert Translation(section.code ^definition, de-DE, Typ des Abschnitts)
* insert Translation(section.code ^definition, en-US, type of section)
* insert AddLoincCodingTranslation(section[diagRep].code)
* insert Translation(section.author ^short, de-DE, Abschnittsautor)
* insert Translation(section.author ^short, en-US, section-author)
* insert Translation(section.author ^definition, de-DE, Autor des Abschnitts)
* insert Translation(section.author ^definition, en-US, author of this section)
* insert Translation(section.text ^short, de-DE, Abschnitttext)
* insert Translation(section.text ^short, en-US, section text)
* insert Translation(section.text ^definition, de-DE, Text im Abschnitt)
* insert Translation(section.text ^definition, en-US, text of this section)
* insert Translation(section.entry ^short, de-DE, Abschnittseintrag)
* insert Translation(section.entry ^short, en-US, section entry)
* insert Translation(section.entry ^definition, de-DE, Eintrag in einem Abschnitt)
* insert Translation(section.entry ^definition, en-US, entry of this section)
* insert Translation(section.section ^short, de-DE, weiterer Abschnitt)
* insert Translation(section.section ^short, en-US, additional section)
* insert Translation(section.section ^definition, de-DE, weiterer Abschnitt in der Komposition)
* insert Translation(section.section ^definition, en-US, additional section of this composition)
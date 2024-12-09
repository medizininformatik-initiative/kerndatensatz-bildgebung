//Head
Profile: MII_PR_Bildgebung_Radiologische_Befundungsprozedur
Parent: $miiProcedure
Id: mii-pr-bildgebung-radiologische-befundungsprozedur
Title: "MII PR Bildgebung Radiologische Befundungsprozedur"
Description: "Diese Profil beschreibt die radiologische Befundungsprozedur. Es legt fest, dass es sich hierbei um eine reine diagnostische Prozedur handelt"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-radiologische-befundungsprozedur"
//Translation Meta
* insert Translation(^name, en-US, MII_PR_Imaging_Radiological_Readprocedure)
* insert Translation(^title, en-US, MII PR Imaging Radiological Readprocedure)
* insert Translation(^description, en-US, This FHIR resource profile specifically characterizes the radiological reading process.)
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
* status ^definition = "Vorbereitung | in Arbeit | nicht durchgeführt | pausiert | abgebrochen | abgeschlossen | Eingabe fehlerhaft | unbekannt"
* category 1..1 MS
* category = $SCT#165197003
* category ^short = "Kategorie"
* category ^definition = "Diagnostische Maßnahmen | Bildgebende Diagnostik | Operationen | Medikamente | Nichtoperative therapeutische Maßnahmen | Ergänzende Maßnahmen"
* code MS
* code ^short = "Code"
* code ^definition = "ode aus OPS - Operationen- und Prozedurenschlüssel, SNOMED CT oder andere."
* subject MS
* subject only Reference(Patient)
* subject ^short = "Person"
* subject ^definition = "Person, auf die sich die Befundungprozedur bezieht"
* performed[x] MS
* performed[x] ^short = "Durchführungsdatum"
* performed[x] ^definition = "Durchführungsdatum oder -zeitraum der Prozedur."
* report 1..* MS 
* report ^definition = "In cases where follow ups are performed (e.g. RECIST or TNM) this procedure might be used in more than one diagnostic report this way we guarantee that the tumor categories stay the same over time."
* report ^short = "Bericht"
* report ^definition = "Referenz auf den Bericht"

//Translation Profile
* insert Translation(status ^short, de-DE, Status)
* insert Translation(status ^short, en-US, Status)
* insert Translation(status ^definition, de-DE, Vorbereitung | in Arbeit | nicht durchgeführt | pausiert | abgebrochen | abgeschlossen | Eingabe fehlerhaft | unbekannt)
* insert Translation(status ^definition, en-US, preparation | in-progress | not-done | on-hold | stopped | completed | entered-in-error | unknown)
* insert Translation(category ^short, de-DE, Kategorie)
* insert Translation(category ^short, en-US, Category)
* insert Translation(category ^definition, de-DE, Diagnostische Maßnahmen | Bildgebende Diagnostik | Operationen | Medikamente | Nichtoperative therapeutische Maßnahmen | Ergänzende Maßnahmen)
* insert Translation(category ^definition, en-US, Diagnostic procedures | Imaging procedures | Operations | Medications | Non-operative therapeutic procedures | Other procedures)
* insert Translation(code ^short, de-DE, Code)
* insert Translation(code ^short, en-US, Code)
* insert Translation(code ^definition, de-DE, Code aus OPS - Operationen- und Prozedurenschlüssel\, SNOMED CT oder andere.)
* insert Translation(code ^definition, en-US, Code from OPS - Operationen- und Prozedurenschlüssel\, SNOMED CT or other.)
* insert Translation(subject ^short, de-DE, Person)
* insert Translation(subject ^short, en-US, person)
* insert Translation(subject ^definition, de-DE, Person\, auf die sich die Befundungprozedur bezieht)
* insert Translation(subject ^definition, en-US, person\, which this read procedure is about)
* insert Translation(performed[x] ^short, de-DE, Durchführungsdatum)
* insert Translation(performed[x] ^short, en-US, Performed date)
* insert Translation(performed[x] ^definition, de-DE, Durchführungsdatum oder -zeitraum der Prozedur.)
* insert Translation(performed[x] ^definition, en-US, The date or period of time the procedure was performed.)
* insert Translation(report ^short, de-DE, Bericht)
* insert Translation(report ^short, en-US, report)
* insert Translation(report ^definition, de-DE, Referenz auf den Bericht)
* insert Translation(report ^definition, en-US, reference on the report)

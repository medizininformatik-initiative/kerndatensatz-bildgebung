//Head
Profile: MII_PR_Bildgebung_Bildgebungsprozedur
Parent: $miiProcedure
Id: mii-pr-bildgebung-bildgebungsprozedur
Title: "MII PR Bildgebung Bildgebungsprozedur"
Description: "Beschreibt die Tätigkeiten, wie eine Bildgebung ausgeführt wird."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-bildgebungsprozedur"
//Translation Meta
* insert Translation(^name, en-US, MII_PR_Imaging_Imaging_Procedure)
* insert Translation(^title, en-US, MII PR Imaging Imaging Procedure)
* insert Translation(^description, en-US, The profile describes a advisory for medical care.)
//Meta
* insert PR_CS_VS_Version
* insert Publisher
* insert KDS_Copyright
* id MS
* meta MS
* meta.source MS
* meta.profile MS
//Profile
* basedOn 1..* MS
* basedOn only Reference(MII_PR_Bildgebung_Anforderung_Bildgebung)
* status MS
* category 1.. MS 
* category.coding 1.. MS 
* category.coding[sct] ^patternCodeableConcept = $SCT#363679005
* code MS
* code.coding MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    loinc 0..1 MS
* code.coding[loinc] ^patternCoding.system = $loinc
* subject MS
* subject only Reference(Patient)
* performed[x] MS

//Translation Profile
* insert Translation(basedOn ^short, de-DE, Basiert auf)
* insert Translation(basedOn ^short, en-US, based on)
* insert Translation(basedOn ^definition, de-DE, Basiert auf einem Anforderung)
* insert Translation(basedOn ^definition, en-US, based on an service request)
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
* insert Translation(code ^definition, de-DE, Code aus LOINC)
* insert Translation(code ^definition, en-US, Code from LOINC)
* insert Translation(subject ^short, de-DE, Person)
* insert Translation(subject ^short, en-US, person)
* insert Translation(subject ^definition, de-DE, Person\, auf die sich die Prozedur bezieht)
* insert Translation(subject ^definition, en-US, person\, which this procedure is about)
* insert Translation(performed[x] ^short, de-DE, Durchführungsdatum)
* insert Translation(performed[x] ^short, en-US, Performed date)
* insert Translation(performed[x] ^definition, de-DE, Durchführungsdatum oder -zeitraum der Prozedur.)
* insert Translation(performed[x] ^definition, en-US, The date or period of time the procedure was performed.)

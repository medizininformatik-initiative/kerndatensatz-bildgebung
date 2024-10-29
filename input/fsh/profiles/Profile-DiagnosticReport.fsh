//Head
Profile: MII_PR_Bildgebung_Radiologischer_Befund
Parent: DiagnosticReport
Id: mii-pr-bildgebung-radiologischer-befund
Title: "MII PR Bildgebung Radiologischer Befund"
Description: "Diese Ressource beschreibt einen radiologischen Befund"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-radiologischer-befund"
//Translation Meta
* insert Translation(^name, en-US, MII_PR_Imaging_Diagnostic_Report)
* insert Translation(^title, en-US, MII PR Imaging Diagnostic Report)
* insert Translation(^description, en-US, The profile describes a diagnostic report for a radiological image.)
//Meta
* insert PR_CS_VS_Version
* insert Publisher
* insert KDS_Copyright
* id MS
* meta MS
* meta.source MS
* meta.profile MS
//Translation Profile
//* insert Translation(extension[supportingInfo] ^short, de-DE, Zusatzinformation)
//* insert Translation(extension[supportingInfo] ^short, en-US, additional information)
//* insert Translation(extension[supportingInfo] ^definition, de-DE, Zusatzinformation zum Befundbericht)
//* insert Translation(extension[supportingInfo] ^definition, en-US, additional information for the report)
* insert Translation(basedOn ^short, de-DE, Anforderung)
* insert Translation(basedOn ^short, en-US, request)
* insert Translation(basedOn ^definition, de-DE, Anforderung\, die den Befundbericht ausgelöst hat)
* insert Translation(basedOn ^definition, en-US, request\, which triggered the report)
* insert Translation(status ^short, de-DE, Status)
* insert Translation(status ^short, en-US, status)
* insert Translation(status ^definition, de-DE, angemeldet | unvollständig | vorläufig | endgültig | geändert | korrigiert | angefügt | abgebrochen | fehlerhafte Eingabe | unbekannt )
* insert Translation(status ^definition, en-US, registered | partial | preliminary | final | amended | corrected | appended | cancelled | entered-in-error | unknown)
* insert Translation(category ^short, de-DE, Autor)
* insert Translation(category ^short, en-US, category)
* insert Translation(category ^definition, de-DE, Autor der Komposition)
* insert Translation(category ^definition, en-US, category of the composition)
* insert Translation(code ^short, de-DE, Autor)
* insert Translation(code ^short, en-US, code)
* insert Translation(code ^definition, de-DE, Autor der Komposition)
* insert Translation(code ^definition, en-US, code of the composition)
* insert Translation(subject ^short, de-DE, Person)
* insert Translation(subject ^short, en-US, person)
* insert Translation(subject ^definition, de-DE, Person\, auf die sich die Befundbericht bezieht)
* insert Translation(subject ^definition, en-US, person\, which this report is about)
* insert Translation(effective[x] ^short, de-DE, Erstellungsdatum)
* insert Translation(effective[x] ^short, en-US, effective[x])
* insert Translation(effective[x] ^definition, de-DE, Zeitpunkt der Erstellung)
* insert Translation(effective[x] ^definition, en-US, date of creation)

//* insert Translation(title ^short, de-DE, Titel)
//* insert Translation(title ^short, en-US, title)
//* insert Translation(title ^definition, de-DE, Titel der Komposition)
//* insert Translation(title ^definition, en-US, title of this composition)
//* insert Translation(section ^short, de-DE, Befundabschnitt)
//* insert Translation(section ^short, en-US, section)
//* insert Translation(section ^definition, de-DE, 1. Abschnitt immer der Befundbericht\, 2.-X. Abschnitt können Beobachtungen oder Freitext sein. Unterteilt in Titel\, Code\, Autor\, Text und Eintrag)
//* insert Translation(section ^definition, en-US, 1. section is the report\, 2.-X. sections are observations or text. Subdivided in title\, code\, code\, text and entry)
//Profile
* extension contains
  http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.supportingInfo named supportingInfo 0..* MS
* extension[supportingInfo].extension[reference] 1..1 MS
* extension[supportingInfo].extension[type] 1..1 MS
* extension[supportingInfo].extension[reference].valueReference only Reference(DiagnosticReport or Procedure)
* basedOn MS
* basedOn only Reference(MII_PR_Bildgebung_Anforderung_Bildgebung or CarePlan)
* status MS 
* category 1.. MS 
* category.coding 1.. MS 
* category.coding ^slicing.discriminator.type = #pattern
* category.coding ^slicing.discriminator.path = "$this"
* category.coding ^slicing.rules = #open
* category.coding contains
    loinc 0..1 and
    diagnostic-service-sections 0..1 and 
    sct 1..1
* category.coding[loinc] = $loinc#18748-4
* category.coding[diagnostic-service-sections] = $DSS#RAD
* category.coding[sct] = $SCT#4201000179104 " Imaging report (record artifact)"
* code MS
* subject 1..1 MS
* subject only Reference(Patient) 
* encounter MS
* effective[x] MS
* effectiveDateTime MS
* effectivePeriod MS
* issued MS
* result MS
* result only Reference(Observation) 
* imagingStudy 1.. MS
* imagingStudy only Reference(MII_PR_Bildgebung_Bildgebungsstudie)
* conclusion MS
* conclusionCode MS
* conclusionCode.coding MS
* conclusionCode.coding ^slicing.discriminator.type = #pattern
* conclusionCode.coding ^slicing.discriminator.path = "$this"
* conclusionCode.coding ^slicing.rules = #open
* conclusionCode.coding contains
    icd10-gm 0..* MS and
    sct 0..* MS
* conclusionCode.coding[icd10-gm] ^patternCoding.system = $icd10-gm
* conclusionCode.coding[sct] ^patternCoding.system = $SCT
* conclusionCode.coding[sct].code from MII_VS_Bildgebung_Diagnostic_Report_Coding (preferred)
* presentedForm MS

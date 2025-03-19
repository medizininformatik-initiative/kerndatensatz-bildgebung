//Head
Profile: MII_PR_Bildgebung_Kontrastmittelgabe
Parent: $miiMedicationAdministration
Id: mii-pr-bildgebung-kontrastmittelgabe
Title: "MII PR Bildgebung Konstrastmittelgabe"
Description: "Dieses Profil bietet die Möglichkeit die Kontrastmittelgabe aus dem RIS zu erfassen und ist somit die Alternative zu der Erfassung der Kontrastmittelgabe aus den DICOM-Metadaten."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-kontrastmittelgabe"
//Translation Meta
* insert Translation(^name, en-US, MII_PR_Imaging_Contrast_Medication_Administration)
* insert Translation(^title, de-DE, Kontrastmittelgabe)
* insert Translation(^title, en-US, contrast medication administration)
* insert Translation(^description, de-DE, Beschreibt die Kontrastmittelgabe)
* insert Translation(^description, en-US, The profile describes medication administration for contrastmedication.)
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
* partOf MS
* partOf ^short = "Teil von"
* partOf ^definition = "Teil einer weiteren Medikationsverabreichung"
* status MS
* status ^short = "Status"
* status ^definition = "in Durchführung | nicht durchgeführt | in Wartestellung | abgeschlossen | Eingabe fehlerhaft | abgebrochen | unbekannt"
* medication[x] MS
* medication[x] ^short = "Medikation"
* medication[x] ^definition = "Medikation, die verarbreicht wurde. Code oder Referenz auf Medication-Objekt."
* subject MS
* subject only Reference(Patient)
* subject ^short = "Person"
* subject ^definition = "Person, an der sich die untersuchte Körperstruktur befindet"
* effective[x] only Period
* effective[x] ^short = "Zeitpunkt oder Zeitraum"
* effective[x] ^definition = "Zeitpunkt oder Zeitraum in dem die Medikation verabreicht wurde."
* dosage 1..1 MS
* dosage ^short = "Dosierung"
* dosage ^definition = "Details der Medikamentendosierung, wie Dosis, Menge, Applikationsort, Verabreichungsweg, etc."
* dosage.dose 1..1 MS
* dosage.dose ^short = "Dosis"
* dosage.dose ^definition = "Dosis der Medikamentenverabreichung."

// Translation Profil
* insert Translation(partOf ^short, de-DE, Teil von)
* insert Translation(partOf ^short, en-US, part of)
* insert Translation(partOf ^definition, de-DE, Teil einer weiteren Medikationsverabreichung)
* insert Translation(partOf ^definition, en-US, part of another medication administration)
* insert Translation(status ^short, de-DE, Status)
* insert Translation(status ^short, en-US, status)
* insert Translation(status ^definition, de-DE, in Durchführung | nicht durchgeführt | in Wartestellung | abgeschlossen | Eingabe fehlerhaft | abgebrochen | unbekannt)
* insert Translation(status ^definition, en-US, in-progress | not-done | on-hold | completed | entered-in-error | stopped | unknown)
* insert Translation(medication[x] ^short, de-DE, Medikation)
* insert Translation(medication[x] ^short, en-US, medication)
* insert Translation(medication[x] ^definition, de-DE, Medikation\, die verarbreicht wurde. Code oder Referenz auf Medication-Objekt.)
* insert Translation(medication[x] ^definition, en-US, The medication that was administered. Code or a reference to a medication resource.)
* insert Translation(subject ^short, de-DE, Person)
* insert Translation(subject ^short, en-US, intent)
* insert Translation(subject ^definition, de-DE, Person\, an der sich die untersuchte Körperstruktur befindet)
* insert Translation(subject ^definition, en-US, person\, who contains the described body structure)
* insert Translation(effective[x] ^short, de-DE, Zeitpunkt oder Zeitraum)
* insert Translation(effective[x] ^short, en-US, Date or period)
* insert Translation(effective[x] ^definition, de-DE, Zeitpunkt oder Zeitraum in dem die Medikation verabreicht wurde.)
* insert Translation(effective[x] ^definition, en-US, The date or time period over which the medication was administered.)
* insert Translation(dosage ^short, de-DE, Dosierung)
* insert Translation(dosage ^short, en-US, Dosage)
* insert Translation(dosage ^definition, de-DE, Details der Medikamentendosierung\, wie Dosis\, Menge\, Applikationsort\, Verabreichungsweg\, etc.)
* insert Translation(dosage ^definition, en-US, Describes the medication dosage information details e.g. dose\, rate\, site\, route\, etc.)
* insert Translation(dosage.dose ^short, de-DE, Dosis)
* insert Translation(dosage.dose ^short, en-US, dose)
* insert Translation(dosage.dose ^definition, de-DE, Dosis der Medikamentenverabreichung.)
* insert Translation(dosage ^definition, en-US, dose of the medication administration.)

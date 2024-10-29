//Head
Profile: MII_PR_Bildgebung_Kontrastmittelgabe
Parent: $miiMedicationAdministration
Id: mii-pr-bildgebung-kontrastmittelgabe
Title: "MII PR Bildgebung Konstrastmittelgabe"
Description: "Dieses Profil bietet die Möglichkeit die Kontrastmittelgabe aus dem RIS zu erfassen und ist somit die Alternative zu der Erfassung der Kontrastmittelgabe aus den DICOM-Metadaten."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-kontrastmittelgabe"
//Translation Meta
* insert Translation(^name, en-US, MII_PR_Imaging_Contrast_Medication_Administration)
* insert Translation(^title, en-US, MII PR Imaging Contrast Medication Administration)
* insert Translation(^description, en-US, The profile describes medication administration for contrastmedication.)
//Meta
* insert PR_CS_VS_Version
* insert Publisher
* insert KDS_Copyright
* id MS
* meta MS
* meta.source MS
* meta.profile MS
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
//Profile
* partOf MS
* status MS
* medication[x] MS
* subject MS
* subject only Reference(Patient)
* effective[x] only Period
* dosage 1..1 MS
* dosage.dose 1..1 MS
//Head
Profile: MII_PR_Bildgebung_Kontrastmittelgabe
Parent: $miiMedicationAdministration
Id: mii-pr-bildgebung-kontrastmittelgabe
Title: "MII PR Bildgebung Konstrastmittelgabe"
Description: "Dieses Profil bietet die Möglichkeit die Kontrastmittelgabe aus dem RIS zu erfassen und ist somit die Alternative zu der Erfassung der Kontrastmittelgabe aus den DICOM-Metadaten."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-kontrastmittelgabe"
//Translation
* insert Translation(^name, en-US, MII_PR_Imaging_Contrast_Medication_Administration)
* insert Translation(^title, en-US, MII PR Imaging Contrast Medication Administration)
* insert Translation(^description, en-US, The profile describes medication administration for contrastmedication.)
//Meta
* insert PR_CS_VS_Version
* id MS
* meta MS
* meta.source MS
* meta.profile MS
//Profile
* status MS
* medication[x]
* subject MS
* subject only Reference(Patient)
* effective[x] only Period
* dosage.dose 1..1
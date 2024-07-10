//Head
Profile: MII_PR_Bildgebung_MedicationAdministration_GabeRadiopharmakon
Parent: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration
Id: mii-pr-bildgebung-medicationadministration-gaberadiopharmakon
Title: "MII PR Bildgebung MedicationAdministration GabeRadiopharmakon"
Description: "Dieses Profil beschreibt die Gabe eines Radiopharmakons zur medizinischen Bildgebung."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-medicationadministration-gaberadiopharmakon"
//Translation
* insert Translation(^name, en-US, MII_PR_Imaging_MedicationAdministration_RadiopharmaceuticalAdministration)
* insert Translation(^title, en-US, MII PR Imaging MedicationAdministration RadiopharmaceuticalAdministration)
* insert Translation(^description, en-US, The profile describes the metadata of an DICOM imaging study.)
* insert PR_CS_VS_Version
//Meta
* id MS
* meta MS
* meta.source MS
* meta.profile MS
//Profile
* effective[x] only Period
* dosage.dose 1..1
* dosage.dose.unit = "Megabecquerel"
* dosage.dose.code = #MBq
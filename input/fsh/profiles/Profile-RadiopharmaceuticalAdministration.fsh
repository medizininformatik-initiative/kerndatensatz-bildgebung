Profile: MII_PR_MedicationAdministration_GabeRadiopharmakon
Parent: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration
Id: mii-pr-medicationadministration-gaberadiopharmakon
Title: "MII PR MedicationAdministration GabeRadiopharmakon"
Description: "Dieses Profil beschreibt die Gabe eines Radiopharmakons zur medizinischen Bildgebung."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/GabeRadiopharmakon"
* insert Translation(^name, en-US, MII_PR_MedicationAdministration RadiopharmaceuticalAdministration)
* insert Translation(^title, en-US, MII PR MedicationAdministration RadiopharmaceuticalAdministration)
* insert Translation(^description, en-US, The profile describes the metadata of an DICOM imaging study.)
* insert PR_CS_VS_Version

* effective[x] only Period
* dosage.dose 1..1
* dosage.dose.unit = "Megabecquerel"
* dosage.dose.code = #MBq
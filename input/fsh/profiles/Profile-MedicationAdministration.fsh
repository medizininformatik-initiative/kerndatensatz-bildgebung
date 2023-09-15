Profile: MII_PR_BildgebendeVerfahren_MedicationAdministration
Parent: $miiMedicationAdministration
Id: mii-pr-bildgebendeverfahren-medicationadministration
Title: "MII PR BildgebendeVerfahren MedicationAdministration"
Description: "TODO"
* partOf 1..* MS
* partOf ^slicing.discriminator.type = #profile
* partOf ^slicing.discriminator.path = "$this"
* partOf ^slicing.rules = #open
* partOf contains
    bildgebendeverfahrenProcedure 1..* MS
// fixme MII Ref
* partOf[bildgebendeverfahrenProcedure] only Reference(MII_PR_BildgebendeVerfahren_Procedure)
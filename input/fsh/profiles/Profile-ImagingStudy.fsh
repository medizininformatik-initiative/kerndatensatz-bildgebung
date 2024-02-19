Profile: MII_PR_ImagingStudy_ImagingStudy
Parent: ImagingStudy
Id: mii-pr-imagingstudy-imagingstudy
Title: "MII PR ImagingStudy ImagingStudy"
Description: "Dieses Profil beschreibt die Bildgebung anhand der DICOM-Metadaten auf Studien-, Serien- sowie Instanzen-Ebene der jeweiligen DICOM-Studie."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/ImagingStudy"
* insert Translation(^name, en-US, MII_PR_Bildgebung_ImagingStudy)
* insert Translation(^title, en-US, MII PR Bildgebung ImagingStudy)
* insert Translation(^description, en-US, The profile describes the metadata of an DICOM imaging study.)
* insert PR_CS_VS_Version

* identifier MS 
* status MS
* modality 1..* MS
* modality from https://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_33.html (required)
* started MS
* numberOfSeries MS
* numberOfInstances MS
* procedureCode MS
* reasonCode MS
* reasonCode from $reasonCode (preferred)
* description MS

* series MS 
* series.uid MS 
* series.number MS
* series.modality MS 
* series.modality from https://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_33.html (required)
* series.description MS
* series.numberOfInstances MS
* series.bodySite MS 
* series.bodySite from $bodySite (required)
* series.laterality MS
* series.laterality from $laterality (required)
* series.started 0..1 MS
* series.manufacturer 0..1 MS
* series.manufacturerModelName 0..1 MS
* series.contrastBolus 1..1 MS
* series.contrastBolusDetails 0..* #todo: reference kds-medicationstatement
* series.modalityMR 0..1
* series.modalityMR.scanningSequence 1..*
* series.modalityMR.sequenceVariant 1..1
* series.modalityMR.magneticFieldStrength 1..1
* series.modalityCT 0..1
* series.modalityCT.CTDIvolume 0..1
* series.modalityCT.kvp 0..1
* series.modalityCT.tubeCurrent 0..1
* series.modalityCT.exposition 0..1
* series.modalityCT.expositionTime 0..1
* series.modalityMG 0..1
* series.modalityMG.kvp 0..1
* series.modalityMG.tubeCurrent 0..1
* series.modalityMG.exposition 0..1
* series.modalityMG.expositionTime 0..1
* series.modalityCR 0..1
* series.modalityCR.kvp 0..1
* series.modalityCR.tubeCurrent 0..1
* series.modalityCR.exposition 0..1
* series.modalityCR.expositionTime 0..1
* series.modalityDX 0..1
* series.modalityDX.kvp 0..1
* series.modalityDX.tubeCurrent 0..1
* series.modalityDX.exposition 0..1
* series.modalityDX.expositionTime 0..1
* series.modalityNM 0..1
* series.modalityNM.radiopharmaceutical 0..1
* series.modalityNM.radionuclideTotalDose 0..1
* series.modalityNM.radiopharmaceuticalStartDateTime 0..1
* series.modalityNM.radiopharmaceuticalStopDateTime 0..1
* series.modalityNM.radionuclideHalfLife 0..1
* series.modalityNM.rescaleType 0..1
* series.modalityPT 0..1
* series.modalityPT.radiopharmaceutical 0..1
* series.modalityPT.radionuclideTotalDose 0..1
* series.modalityPT.radiopharmaceuticalStartDateTime 0..1
* series.modalityPT.radiopharmaceuticalStopDateTime 0..1
* series.modalityPT.radionuclideHalfLife 0..1
* series.modalityPT.rescaleType 0..1
* series.instance 0..* MS
* series.instance.uid 1..1 MS
* series.instance.sopClass 1..1 MS
* series.instance.sopClass from https://dicom.nema.org/medical/dicom/current/output/chtml/part04/sect_B.5.html
* series.instance.number 0..1 MS
* series.instance.title 0..1 MS

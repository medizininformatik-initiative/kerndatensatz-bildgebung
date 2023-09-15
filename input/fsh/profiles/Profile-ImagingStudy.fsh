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

* identifier 0..* MS 
* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/imagingstudy-status (required)
* modality 0..* MS 
* modality from https://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_29.html (extensible)
* started 0..1 MS
* numberOfSeries 0..1 MS
* numberOfInstances 0..1 MS
* procedureCode 0..* MS
* procedureCode from $radlex (extensible)
* reasonCode 0..* MS
* reasonCode from $reasonCode (preferred)
* note 0..* MS
* description 0..1 MS

* series 0..* MS 
* series.uid 1..1 MS 
* series.number 0..1 MS
* series.modality 1..1 MS 
* series.modality from https://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_29.html (extensible)
* series.description 0..1 MS
* series.numberOfInstances 0..1 MS
* series.bodySite 0..1 MS 
* series.bodySite from $bodySite
* series.laterality 0..1 MS
* series.laterality from $laterality
* series.started 0..1 MS
* series.performer 0..* MS 
* series.performer.function 0..1 MS 
* series.performer.function from $performerFunction
* series.performer.actor 1..1 MS
* series.instance 0..*
* series.instance.uid 1..1
* series.instance.sopClass 1..1
* series.instance.sopClass from https://dicom.nema.org/medical/dicom/current/output/chtml/part04/sect_B.5.html
* series.instance.number 0..1
* series.instance.title 0..1 

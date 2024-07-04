Profile: MII_PR_Bildgebung_ImagingStudy
Parent: ImagingStudy
Id: mii-pr-bildgebung-imagingstudy
Title: "MII PR ImagingStudy ImagingStudy"
Description: "Dieses Profil beschreibt die Bildgebung anhand der DICOM-Metadaten auf Studien-, Serien- sowie Instanzen-Ebene der jeweiligen DICOM-Studie."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/ImagingStudy"
* insert Translation(^name, en-US, MII_PR_Bildgebung_ImagingStudy)
* insert Translation(^title, en-US, MII PR Bildgebung ImagingStudy)
* insert Translation(^description, en-US, The profile describes the metadata of an DICOM imaging study.)
* insert PR_CS_VS_Version

* extension contains
    MII_EX_ImagingReason named bildgebungsgrund 0..1    

* identifier MS
* status MS
* modality 0..* MS
* modality from https://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_33.html (required)
* started MS
* basedOn MS
* endpoint MS
* numberOfSeries MS
* numberOfInstances MS
* procedureReference MS
* reasonReference MS
* description MS
* subject MS
* encounter MS

* series MS
* series.extension contains
  MII_EX_Modalitaet_CT named modalitätCT 0..1 and
  MII_EX_Modalitaet_MG_CR_DX named modalitätMR_CR_DX 0..1 and
  MII_EX_Modalitaet_MR named modalitätMR 0..1 and
  MII_EX_Modalitaet_PT_NM named modalitätPT_NM 0..1 and
  MII_EX_ImagingContrast named kontrastmittel 0..1 and
  MII_EX_ImagingDevice named gerät 0..1

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
* series.instance 0..* MS
* series.instance.uid 1..1 MS
* series.instance.sopClass 1..1 MS
* series.instance.sopClass from https://dicom.nema.org/medical/dicom/current/output/chtml/part04/sect_B.5.html
* series.instance.number 0..1 MS
* series.instance.title 0..1 MS

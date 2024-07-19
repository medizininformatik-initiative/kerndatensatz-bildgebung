//Head
Profile: MII_PR_Bildgebung_Bildgebungsstudie
Parent: ImagingStudy
Id: mii-pr-bildgebung-bildgebungsstudie
Title: "MII PR Bildgebung Bildgebungsstudie"
Description: "Dieses Profil beschreibt die Bildgebung anhand der DICOM-Metadaten auf Studien-, Serien- sowie Instanzen-Ebene der jeweiligen DICOM-Studie."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-bildgebungsstudie"
//Translation
* insert Translation(^name, en-US, MII_PR_Imaging_Imaging_Study)
* insert Translation(^title, en-US, MII PR Imaging Imaging Study)
* insert Translation(^description, en-US, The profile describes the metadata of an DICOM imaging study.)
//Meta
* insert PR_CS_VS_Version
* id MS
* meta MS
* meta.source MS
* meta.profile MS
//Studienebene
* extension contains
  //Extension Studienebene
  MII_EX_Bildgebung_Bildgebungsgrund named bildgebungsgrund 0..1 
* status MS
* modality MS
* modality from https://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_33.html (required)
* subject MS
* subject only Reference(Patient)
* encounter MS
* started MS
* basedOn MS
* endpoint MS
* numberOfSeries MS
* numberOfInstances MS
* procedureReference MS
* reasonReference MS
* description MS
//Serieebene
* series MS
* series.extension contains
  //Extension Serienebene
  MII_EX_Bildgebung_Modalitaet_CT named modalitätCT 0..1 and
  MII_EX_Bildgebung_Modalitaet_MG_CR_DX named modalitätMG_CR_DX 0..1 and
  MII_EX_Bildgebung_Modalitaet_MR named modalitätMR 0..1 and
  MII_EX_Bildgebung_Modalitaet_PT_NM named modalitätPT_NM 0..1 and
  MII_EX_Bildgebung_Kontrastmittel named kontrastmittel 0..1 and
  MII_EX_Bildgebung_Geraete_Hersteller named gerät 0..1
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
* series.started MS
//Instanzebene
* series.instance MS
* series.instance.extension contains
  //Extension Instanzebene
  MII_EX_Bildgebung_Instanz_Serie named imagingInstance 0..1
* series.instance.uid MS
* series.instance.sopClass MS
* series.instance.sopClass from https://dicom.nema.org/medical/dicom/current/output/chtml/part04/sect_B.5.html (required)
* series.instance.number MS

//Head
Extension: MII_EX_Bildgebung_Bildgebungsgrund
Id: mii-ex-bildgebung-bildgebungsgrund
Title: "MII EX Bildgebung Bildgebungsgrund"
Description: "Die Extension ermöglicht es, den Bildgebungsgrund aus dem entsprechenden DICOM Tag [0040,1002] auf Studien-Ebene anzugeben."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-bildgebungsgrund"
//Translation
* insert Translation(^name, en-US, MII_EX_Imaging_Imaging_Reason)
* insert Translation(^title, en-US, MII EX Imaging Imaging Reason)
* insert Translation(^description, en-US, The extension allows specifying the reason for the imaging procedure from the corresponding DICOM tag [0040/1002] at the study level.)
//Meta
* insert PR_CS_VS_Version
* insert KDS_Copyright
* insert Publisher
* insert ExtensionContext(ImagingStudy)
* ^experimental = false
//Extension
* value[x]  only string

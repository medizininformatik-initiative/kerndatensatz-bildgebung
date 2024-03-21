Extension: MII_EX_ImagingStudy
Id: mii-ex-imagingReason
Title: "MII EX ImagingStudy"
Description: "Die Extension ermöglicht es, den Bildbegungsgrund aus dem entsprechenden DICOM Tag auf Studien-Ebene anzugeben."
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/wirkstoffrelation" #TODO
* insert Translation(^name, en-US, MII_EX_ImagingStudy)
* insert Translation(^title, en-US, MII_EX_ImagingStudy)
* insert Translation(^description, en-US, The extension allows specifying the reason for the imaging procedure from the corresponding DICOM tag at the study level.)
* insert PR_CS_VS_Version
* ^experimental = false
* insert Publisher
* insert ExtensionContext(ImagingStudy)

* value[x]  only string

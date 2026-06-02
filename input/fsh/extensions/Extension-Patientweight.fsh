//Head
Extension: MII_EX_Bildgebung_Gewicht
Id: mii-ex-bildgebung-gewicht
Title: "MII EX Bildgebung Körpergewicht"
Description: "Die Extension ermöglicht es, das Körpergewicht aus dem entsprechenden DICOM Tag [0010,1030] auf Studien-Ebene anzugeben."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-gewicht"
//Translation
* insert Translation(^name, en-US, MII_EX_Imaging_Weight)
* insert Translation(^title, en-US, MII EX Imaging Weight)
* insert Translation(^description, en-US, The extension allows specifying the patient weight from the corresponding DICOM tag [0010\,1030] at the study level.)
//Meta
* insert PR_CS_VS_Version
* insert LicenseCodeableCCBY40
* insert Publisher
* insert ExtensionContext(ImagingStudy)
* ^experimental = false
//Extension
* value[x]  only Reference
* valueReference only Reference($de-weight) 

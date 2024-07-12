//Head
Extension: MII_EX_Bildgebung_Bildnummer
Id: mii-ex-bildgebung-bildnummer
Title: "MII EX Bildgebung Bildnummer"
Description: "Die Extension ermöglicht es, den Bildnummer aus dem entsprechenden DICOM Tag auf Studien-Ebene anzugeben."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-bildnummer"
//Translation
* insert Translation(^name, en-US, MII_EX_Imaging_Imagenumber)
* insert Translation(^title, en-US, MII EX Imaging Imagenumber)
* insert Translation(^description, en-US, The extension allows specifying the reason for the imaging procedure from the corresponding DICOM tag at the study level.)
//Meta
* insert PR_CS_VS_Version
* ^experimental = false
* insert Publisher
* insert ExtensionContext(Observation)
//Extension
* value[x]  only unsignedInt

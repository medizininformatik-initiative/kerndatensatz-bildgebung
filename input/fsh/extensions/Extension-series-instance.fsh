//Head
Extension: MII_EX_Bildgebung_Instanz_Serie
Id: mii-ex-bildgebung-instanz-serie
Title: "MII EX Bildgebung Serie zur Instanz"
Description: "Die Extension ermöglicht es, Informationen zur ausgewählten Serie auf Instanz-Ebene anzugeben."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-serie"
//Translation
* insert Translation(^name, en-US, MII_EX_ImagingStudy)
* insert Translation(^title, en-US, MII_EX_ImagingStudy)
* insert Translation(^description, en-US, The extension allows specifying information about the selected series at the instance level.)
//Meta
* insert PR_CS_VS_Version
* ^experimental = false
* insert Publisher
* insert ExtensionContext(ImagingStudy.series.instance)
//Extension
* extension contains
    pixelSpacing(x) 0..1 MS and
    pixelSpacing(y) 0..1 MS and
    sliceThickness 0..1 MS and
    imageType 0..1 MS
* extension[pixelSpacing(x)].value[x]  only string
* extension[pixelSpacing(y)].value[x]  only string
* extension[sliceThickness].value[x]  only decimal
* extension[imageType].value[x]  only string

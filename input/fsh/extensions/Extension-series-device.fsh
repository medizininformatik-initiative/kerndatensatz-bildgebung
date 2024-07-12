//Head
Extension: MII_EX_Bildgebung_Geraete_Hersteller
Id: mii-ex-bildgebung-geraet-hersteller
Title: "MII EX Bildgebung Gerät und Hersteller"
Description: "Die Extension ermöglicht es, Informationen zum verwendeten Gerät und dessen Hersteller auf Serien-Ebene anzugeben."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-geraet-hersteller"
//Translation
* insert Translation(^name, en-US, MII_EX_Imaging_Device_Manufacturer)
* insert Translation(^title, en-US, MII EX Imaging Device and Manufacturer)
* insert Translation(^description, en-US, The extension allows specifying information about the device used and its manufacturer at the series level.)
//Meta
* insert PR_CS_VS_Version
* ^experimental = false
* insert Publisher
* insert ExtensionContext(ImagingStudy.series)
//Extension
* extension contains
    manufacturer 0..1 MS and
    manufacturerModelName 0..1 MS
* extension[manufacturer].value[x]  only string
* extension[manufacturerModelName].value[x]  only string

Extension: MII_EX_ImagingStudy
Id: mii-ex-imagingstudy
Title: "MII EX ImagingStudy"
Description: "Die Extension ermöglicht es, Informationen zum verwendeten Gerät und dessen Hersteller auf Serien-Ebene anzugeben."
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/wirkstoffrelation" #TODO
* insert Translation(^name, en-US, MII_EX_ImagingStudy)
* insert Translation(^title, en-US, MII_EX_ImagingStudy)
* insert Translation(^description, en-US, The extension allows specifying information about the device used and its manufacturer at the series level.)
* insert PR_CS_VS_Version
* ^experimental = false
* insert Publisher
* insert ExtensionContext(ImagingStudy.series)
* extension contains
    manufacturer 0..1 MS
    manufacturerModelName 0..1 MS

* extension[manufacturer].value[x]  only string
* extension[manufacturerModelName].value[x]  only string

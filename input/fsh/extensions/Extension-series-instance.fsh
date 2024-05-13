Extension: MII_EX_ImagingInstance
Id: mii-ex-imagingInstance
Title: "MII EX ImagingInstance"
Description: "Die Extension ermöglicht es, Informationen zur ausgewählten Serie auf Instanz-Ebene anzugeben."
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/wirkstoffrelation" //TODO
* insert Translation(^name, en-US, MII_EX_ImagingStudy)
* insert Translation(^title, en-US, MII_EX_ImagingStudy)
* insert Translation(^description, en-US, The extension allows specifying information about the selected series at the instance level.)
* insert PR_CS_VS_Version
* ^experimental = false
* insert Publisher
* insert ExtensionContext(ImagingStudy.series.instance)
* extension contains
    pixelSpacing 0..1 MS and
    sliceThickness 0..1 MS and
    imageType 0..1 MS

* extension[pixelSpacing].value[x]  only string
* extension[sliceThickness].value[x]  only decimal
* extension[imageType].value[x]  only string

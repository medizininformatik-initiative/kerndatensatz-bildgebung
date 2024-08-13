//Head
Extension: MII_EX_Bildgebung_Instanz_Details
Id: mii-ex-bildgebung-instanz-details
Title: "MII EX Bildgebung Instanzdetails"
Description: "Die Extension ermöglicht es, Informationen zur ausgewählten Serie auf Instanz-Ebene anzugeben."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-details"
//Translation
* insert Translation(^name, en-US, MII_EX_Instance_Details)
* insert Translation(^title, en-US, MII EX Instance Details)
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
* extension[pixelSpacing(x)].value[x]  only SimpleQuantity
* extension[pixelSpacing(x)].valueQuantity.unit = "millimeter" 
* extension[pixelSpacing(x)].valueQuantity.system = "http://unitsofmeasure.org"
* extension[pixelSpacing(x)].valueQuantity.code = #mm
* extension[pixelSpacing(y)].value[x]  only SimpleQuantity
* extension[pixelSpacing(y)].valueQuantity.unit = "millimeter" 
* extension[pixelSpacing(y)].valueQuantity.system = "http://unitsofmeasure.org"
* extension[pixelSpacing(y)].valueQuantity.code = #mm
* extension[sliceThickness].value[x]  only SimpleQuantity
* extension[sliceThickness].valueQuantity.unit = "millimeter" 
* extension[sliceThickness].valueQuantity.system = "http://unitsofmeasure.org"
* extension[sliceThickness].valueQuantity.code = #mm
* extension[imageType].value[x]  only string

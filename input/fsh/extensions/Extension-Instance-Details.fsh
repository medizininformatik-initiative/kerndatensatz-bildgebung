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
* insert LicenseCodeableCCBY40
* insert Publisher
* insert ExtensionContext(ImagingStudy.series.instance)
* ^experimental = false
//Extension
* extension contains
    pixelSpacingX 0..1 MS and
    pixelSpacingY 0..1 MS and
    sliceThickness 0..1 MS and
    imageType 0..* MS and
    burnedInAnnotation 0..1 MS
* extension[pixelSpacingX].value[x] only SimpleQuantity
* extension[pixelSpacingX].valueQuantity.unit = "millimeter" 
* extension[pixelSpacingX].valueQuantity.system = "http://unitsofmeasure.org"
* extension[pixelSpacingX].valueQuantity.code = #mm
* extension[pixelSpacingY].value[x] only SimpleQuantity
* extension[pixelSpacingY].valueQuantity.unit = "millimeter" 
* extension[pixelSpacingY].valueQuantity.system = "http://unitsofmeasure.org"
* extension[pixelSpacingY].valueQuantity.code = #mm
* extension[sliceThickness].value[x] only SimpleQuantity
* extension[sliceThickness].valueQuantity.unit = "millimeter" 
* extension[sliceThickness].valueQuantity.system = "http://unitsofmeasure.org"
* extension[sliceThickness].valueQuantity.code = #mm
* extension[imageType].value[x] only CodeableConcept
* extension[imageType].valueCodeableConcept.coding ^slicing.discriminator.type = #value
* extension[imageType].valueCodeableConcept.coding ^slicing.discriminator.path = "coding"
* extension[imageType].valueCodeableConcept.coding ^slicing.rules = #open
* extension[imageType].valueCodeableConcept.coding contains
    pixelData 0..* and
    patientExamination 0..* and
    modalityCT 0..* and
    modalityMR 0..* and
    modalityNM 0..* and
    implementationNM 0..*
* extension[imageType].valueCodeableConcept.coding[pixelData] from MII_VS_Bildgebung_Instance_Image_Type_Pixel_Data
* extension[imageType].valueCodeableConcept.coding[patientExamination] from MII_VS_Bildgebung_Instance_Image_Type_Patient_Examination
* extension[imageType].valueCodeableConcept.coding[modalityCT] from MII_VS_Bildgebung_Instance_Image_Type_CT
* extension[imageType].valueCodeableConcept.coding[modalityMR] from MII_VS_Bildgebung_Instance_Image_Type_MR
* extension[imageType].valueCodeableConcept.coding[modalityNM] from MII_VS_Bildgebung_Instance_Image_Type_NM
* extension[imageType].valueCodeableConcept.coding[implementationNM] from MII_VS_Bildgebung_Instance_Image_Type_NM_Implementation
* extension[burnedInAnnotation].value[x]  only boolean
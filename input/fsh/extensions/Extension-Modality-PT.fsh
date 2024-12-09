//Head
Extension: MII_EX_Bildgebung_Modalitaet_PT
Id: mii-ex-bildgebung-modalitaet-pt
Title: "MII EX Bildgebung Modalität PT"
Description: "Die Extension ermöglicht es die Ressourcen und Machbarkeitsanalysen auf PT Daten zu erweitern."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-pt"
//Translation
* insert Translation(^name, en-US, MII_EX_Imaging_Modality_PT)
* insert Translation(^title, en-US, MII EX Imaging Modality PT)
* insert Translation(^description, en-US, The extension allows to extend the resources and feasibility analysis to PT data.)
//Meta
* insert PR_CS_VS_Version
* insert LicenseCodeableCCBY40
* insert Publisher
* insert ExtensionContext(ImagingStudy.series)
* ^experimental = false
//Extension
* extension contains
    radiopharmaceutical 0..1 and
    radionuclide 0..1 and
    tracerExposureTime 0..1 and
    units 0..1 and
    radionuclideTotalDose 0..1 and
    radionuclideHalfLife 0..1 and
    seriesType 0..*
* extension[radiopharmaceutical].value[x] only CodeableConcept
* extension[radiopharmaceutical].valueCodeableConcept from $radiopharmaceutical_PET (extensible)
* extension[radiopharmaceutical].valueCodeableConcept.text MS
* extension[radionuclide].value[x] only CodeableConcept
* extension[radionuclide].valueCodeableConcept from $radionuclide_PET (extensible)
* extension[radionuclide].valueCodeableConcept.text MS
* extension[tracerExposureTime].value[x] only SimpleQuantity
* extension[tracerExposureTime].valueQuantity.unit = "Seconds" 
* extension[tracerExposureTime].valueQuantity.system = "http://unitsofmeasure.org"
* extension[tracerExposureTime].valueQuantity.code = #s
* extension[units].value[x] only CodeableConcept
* extension[units].valueCodeableConcept from $units (extensible)
* extension[radionuclideTotalDose].value[x] only SimpleQuantity
* extension[radionuclideTotalDose].valueQuantity.unit = "Becquerel" 
* extension[radionuclideTotalDose].valueQuantity.system = "http://unitsofmeasure.org"
* extension[radionuclideTotalDose].valueQuantity.code = #Bq
* extension[radionuclideHalfLife].value[x] only SimpleQuantity
* extension[radionuclideHalfLife].valueQuantity.unit = "Seconds" 
* extension[radionuclideHalfLife].valueQuantity.system = "http://unitsofmeasure.org"
* extension[radionuclideHalfLife].valueQuantity.code = #s
* extension[seriesType].valueCodeableConcept
* extension[seriesType].valueCodeableConcept.coding ^slicing.discriminator.type = #value
* extension[seriesType].valueCodeableConcept.coding ^slicing.discriminator.path = "coding"
* extension[seriesType].valueCodeableConcept.coding ^slicing.rules = #open
* extension[seriesType].valueCodeableConcept.coding contains
    spacial 0..* and
    volumetric 0..*
* extension[seriesType].valueCodeableConcept.coding[spacial] from MII_VS_Bildgebung_PT_Series_Type_Spacial
* extension[seriesType].valueCodeableConcept.coding[volumetric] from MII_VS_Bildgebung_PT_Series_Type_Volumetric
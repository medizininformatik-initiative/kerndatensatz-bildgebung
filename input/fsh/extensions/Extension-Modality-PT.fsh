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
* insert KDS_Copyright
* insert Publisher
* insert ExtensionContext(ImagingStudy.series)
* ^experimental = false
//Extension
* extension contains
 radiopharmaceutical 0..1 MS and
    radionuclide 0..1 MS and
    tracerExposureTime 0..1 MS and
    units 0..1 MS and
    radionuclideTotalDose 0..1 MS and
    radionuclideHalfLife 0..1 MS and
    seriesType 0..1 MS
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
* extension[seriesType].value[x] only string
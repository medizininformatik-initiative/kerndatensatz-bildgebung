//Head
Extension: MII_EX_Bildgebung_Modalitaet_MG_CR_DX
Id: mii-ex-bildgebung-modalitaet-mg-cr-dx
Title: "MII EX Bildgebung Modalität MG/CR/DX"
Description: "Die Extension ermöglicht es die Ressourcen und Machbarkeitsanalysen auf MG, CR & DX Daten zu erweitern."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mg-cr-dx"
//Translation
* insert Translation(^name, en-US, MII_EX_Imaging_Modality_MG_CR_DX)
* insert Translation(^title, en-US, MII EX Imaging Modality MG_CR_DX)
* insert Translation(^description, en-US, The extension allows to extend the resources and feasibility analysis to MG\, CR & DX data.)
//Meta
* insert PR_CS_VS_Version
* insert KDS_Copyright
* insert Publisher
* insert ExtensionContext(ImagingStudy.series)
* ^experimental = false
//Extension
* extension contains
    KVP 0..1 and
    exposureTime 0..1 and 
    exposure 0..1 and
    xRayTubeCurrent 0..1 and
    viewPosition 0..1
* extension[KVP].value[x] only SimpleQuantity
* extension[KVP].valueQuantity.unit = "kilovolt" 
* extension[KVP].valueQuantity.system = "http://unitsofmeasure.org"
* extension[KVP].valueQuantity.code = #kV
* extension[exposureTime].value[x] only SimpleQuantity
* extension[exposureTime].valueQuantity.unit = "milliseconds" 
* extension[exposureTime].valueQuantity.system = "http://unitsofmeasure.org"
* extension[exposureTime].valueQuantity.code = #ms
* extension[exposure].value[x] only SimpleQuantity
* extension[exposure].valueQuantity.unit = "milliampere second" 
* extension[exposure].valueQuantity.system = "http://unitsofmeasure.org"
* extension[exposure].valueQuantity.code = #mA.s
* extension[xRayTubeCurrent].value[x] only SimpleQuantity
* extension[xRayTubeCurrent].valueQuantity.unit = "milliampere" 
* extension[xRayTubeCurrent].valueQuantity.system = "http://unitsofmeasure.org"
* extension[xRayTubeCurrent].valueQuantity.code = #mA
* extension[viewPosition].value[x] only CodeableConcept
* extension[viewPosition].valueCodeableConcept from MII_VS_Bildgebung_ImagingStudy_series_viewPosition (preferred)
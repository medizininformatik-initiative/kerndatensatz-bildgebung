//HEad
Extension: MII_EX_Bildgebung_Modalitaet_CT
Id: mii-ex-bildgebung-modalitaet-ct
Title: "MII EX Bildgebung Modalität CT"
Description: "Die Extension ermöglicht es die Ressourcen und Machbarkeitsanalysen auf CT Daten zu erweitern."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-ct"
//Translation
* insert Translation(^name, en-US, MII_EX_Imaging_Modality_CT)
* insert Translation(^title, en-US, MII EX Imaging Modality CT)
* insert Translation(^description, en-US, The extension allows to extend the resources and feasibility analysis to CT data.)
//Meta
* insert PR_CS_VS_Version
* insert KDS_Copyright
* insert Publisher
* insert ExtensionContext(ImagingStudy.series)
* ^experimental = false
//Extension
* extension contains
    CTDIvol 0..1 and
    KVP 0..1 and
    exposureTime 0..1 and
    exposure 0..1 and
    xRayTubeCurrent 0..1
* extension[CTDIvol].value[x]  only SimpleQuantity
* extension[CTDIvol].valueQuantity.unit = "milligray" 
* extension[CTDIvol].valueQuantity.system = "http://unitsofmeasure.org"
* extension[CTDIvol].valueQuantity.code = #mGy
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

Extension: MII_EX_Modalitaet_CT
Id: mii-ex-modalitaet-ct
Title: "MII EX Modality CT"
Description: "Die Extension ermöglicht es die Ressourcen und Machbarkeitsanalysen auf CT Daten zu erweitern."
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/wirkstoffrelation" //TODO
* insert Translation(^name, en-US, MII_EX_Modality_CT)
* insert Translation(^title, en-US, MII EX Modality CT)
* insert Translation(^description, en-US, The extension allows to extend the resources and feasibility analysis to CT data.)
* insert PR_CS_VS_Version
* ^experimental = false
* insert Publisher
* insert ExtensionContext(ImagingStudy.Series)
* extension contains
    CTDIvol 0..1 and
    tubeVoltage 0..1 and
    exposureTime 0..1 and
    exposure 0..1 and
    xRayTubeCurrent 0..1

* extension[CTDIvol].value[x]  only SimpleQuantity
* extension[CTDIvol].valueQuantity.unit = "milligray" 
* extension[CTDIvol].valueQuantity.system = "http://unitsofmeasure.org"
* extension[CTDIvol].valueQuantity.code = #mGy
* extension[tubeVoltage].value[x] only SimpleQuantity
* extension[tubeVoltage].valueQuantity.unit = "kilovolt" 
* extension[tubeVoltage].valueQuantity.system = "http://unitsofmeasure.org"
* extension[tubeVoltage].valueQuantity.code = #kV
* extension[exposureTime].value[x] only SimpleQuantity
* extension[exposureTime].valueQuantity.unit = "milliseconds" 
* extension[exposureTime].valueQuantity.system = "http://unitsofmeasure.org"
* extension[exposureTime].valueQuantity.code = #ms
* extension[exposure].value[x] only SimpleQuantity
* extension[exposure].valueQuantity.unit = "milliampere-seconds" 
* extension[exposure].valueQuantity.system = "http://unitsofmeasure.org"
* extension[exposure].valueQuantity.code = #mA.s
* extension[xRayTubeCurrent].value[x] only SimpleQuantity
* extension[xRayTubeCurrent].valueQuantity.unit = "milliampere" 
* extension[xRayTubeCurrent].valueQuantity.system = "http://unitsofmeasure.org"
* extension[xRayTubeCurrent].valueQuantity.code = #mA

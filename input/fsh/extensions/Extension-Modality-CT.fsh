Extension: MII_EX_Modalitaet_CT
Id: mii-ex-modalitaet-ct
Title: "MII EX Modality CT"
Description: "Die Extension ermöglicht es die Ressourcen und Machbarkeitsanalysen auf CT Daten zu erweitern."
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/wirkstoffrelation" #TODO
* insert Translation(^name, en-US, MII_EX_Modality_CT)
* insert Translation(^title, en-US, MII EX Modality CT)
* insert Translation(^description, en-US, The extension allows to extend the resources and feasibility analysis to CT data.)
* insert PR_CS_VS_Version
* ^experimental = false
* insert Publisher
* insert ExtensionContext(ImagingStudy.Series)
* extension contains
    CTDIvol 0..1 
    tubeVoltage 0..1
    exposureTime 0..1
    exposure 0..1
    xRayTubeCurrent 0..1

* extension[CTDIvol].value[x]  only SimpleQuantity
* #extension[magneticFieldStrength].valueQuantity.unit="Tesla"  
* extension[tubeVoltage].value[x] only SimpleQuantity
* extension[exposureTime].value[x] only SimpleQuantity
* extension[exposure].value[x] only SimpleQuantity
* extension[xRayTubeCurrent].value[x] only SimpleQuantity


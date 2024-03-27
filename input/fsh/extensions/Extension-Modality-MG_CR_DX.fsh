Extension: MII_EX_Modalitaet_MG_CR_DX
Id: mii-ex-modalitaet-mg-cr-dx
Title: "MII EX Modality MG/CR/DX"
Description: "Die Extension ermöglicht es die Ressourcen und Machbarkeitsanalysen auf MG, CR & DX Daten zu erweitern."
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/wirkstoffrelation" //TODO
* insert Translation(^name, en-US, MII_EX_Modality_MG_CR_DX)
* insert Translation(^title, en-US, MII EX Modality MG_CR_DX)
* insert Translation(^description, en-US, The extension allows to extend the resources and feasibility analysis to MG\, CR & DX data.)
* insert PR_CS_VS_Version
* ^experimental = false
* insert Publisher
* insert ExtensionContext(ImagingStudy.Series)
* extension contains
    KVP 0..1 and
    exposureTime 0..1 and 
    exposure 0..1 and
    xRayTubeCurrent 0..1 
* extension[KVP].value[x]
* extension[exposureTime].value[x] only SimpleQuantity
* extension[exposure].value[x] only SimpleQuantity
* extension[xRayTubeCurrent].value[x] only SimpleQuantity

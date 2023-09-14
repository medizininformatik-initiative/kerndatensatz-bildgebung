Extension: MII_EX_Modalitaet_MR
Id: mii-ex-modalitaet-mr
Title: "MII EX Modality MR"
Description: "Die Extension ermöglicht es die Ressourcen und Machbarkeitsanalysen auf MR Daten zu erweitern."
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/wirkstoffrelation"
* insert Translation(^name, en-US, MII_EX_Modality_MR)
* insert Translation(^title, en-US, MII EX Modality MR)
* insert Translation(^description, en-US, The extension allows to extend the resources and feasibility analysis to MR data.)
* insert PR_CS_VS_Version
* ^experimental = true
* insert ExtensionContext(ImagingStudy.Series)
* extension contains
    magneticFieldStrength 1..1 
* extension[magneticFieldStrength].value[x]
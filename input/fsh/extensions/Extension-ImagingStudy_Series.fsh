Extension: MII_EX_ImagingStudy
Id: mii-ex-imagingstudy
Title: "MII EX ImagingStudy"
Description: "Die Extension ermöglicht es, die Ressourcen und Machbarkeitsanalysen der ImagingStudy auf Serien-Ebene zu erweiteren."
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/wirkstoffrelation" #TODO
* insert Translation(^name, en-US, MII_EX_ImagingStudy)
* insert Translation(^title, en-US, MII_EX_ImagingStudy)
* insert Translation(^description, en-US, The extension allows to extend the resources and feasibility analysis in the ImagingStudy on series level.)
* insert PR_CS_VS_Version
* ^experimental = false
* insert Publisher
* insert ExtensionContext(ImagingStudy.Series)
* extension contains
    manufacturer 0..1 MS
    manufacturerModelName 0..1 MS
    contrastBolus 1..1 MS
    contrastBolusDetails 0..* 

* extension[manufacturer].value[x]  only string
* extension[manufacturerModelName].value[x]  only string
* extension[contrastBolus].value[x]  only boolean
* extension[contrastBolusDetails].value[x]  #todo: reference kds-medicationstatement

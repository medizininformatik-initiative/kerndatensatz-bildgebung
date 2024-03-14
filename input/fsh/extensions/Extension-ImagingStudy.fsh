Extension: MII_EX_ImagingStudy
Id: mii-ex-imagingstudy
Title: "MII EX ImagingStudy"
Description: "Die Extension ermöglicht es, die Ressourcen und Machbarkeitsanalysen der ImagingStudy auf Studien-Ebene zu erweiteren."
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/wirkstoffrelation" #TODO
* insert Translation(^name, en-US, MII_EX_ImagingStudy)
* insert Translation(^title, en-US, MII_EX_ImagingStudy)
* insert Translation(^description, en-US, The extension allows to extend the resources and feasibility analysis in the ImagingStudy on study level.)
* insert PR_CS_VS_Version
* ^experimental = false
* insert Publisher
* insert ExtensionContext(ImagingStudy)
* extension contains
    reason 0..1

* extension[reason].value[x]  only string

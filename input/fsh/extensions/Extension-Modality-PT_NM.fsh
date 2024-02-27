Extension: MII_EX_Modalitaet_PT_NM
Id: mii-ex-modalitaet-pt_nm
Title: "MII EX Modality PT/NM"
Description: "Die Extension ermöglicht es die Ressourcen und Machbarkeitsanalysen auf PT & NM Daten zu erweitern."
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/wirkstoffrelation" #TODO
* insert Translation(^name, en-US, MII_EX_Modality_PT_NM)
* insert Translation(^title, en-US, MII EX Modality PT/NM)
* insert Translation(^description, en-US, The extension allows to extend the resources and feasibility analysis to PT & NM data.)
* insert PR_CS_VS_Version
* ^experimental = false
* insert Publisher
* insert ExtensionContext(ImagingStudy.Series)
* extension contains
    radiopharmaceutical 0..1
    radiopharmaceuticalStartTime 0..1
    radiopharmaceuticalStopTime 0..1
    rescaleType 0..1
    radionuclideTotalDose 0..1
    radionuclideHalfLife 0..1
* extension[radiopharmaceutical].value[x]
* extension[radiopharmaceuticalStopTime].value[x]
* extension[radiopharmaceuticalStopTime].value[x]
* extension[rescaleType].value[x]
* extension[radionuclideTotalDose].value[x] only SimpleQuantity
* extension[radionuclideTotalDose].valueQuantity.unit="Becquerel" 
* extension[radionuclideTotalDose].valueQuantity.system="http://unitsofmeasure.org"
* extension[radionuclideTotalDose].valueQuantity.code=#Bq
* extension[radionuclideHalfLife].value[x]


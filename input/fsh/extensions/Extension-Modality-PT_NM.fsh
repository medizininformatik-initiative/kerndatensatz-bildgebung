//Head
Extension: MII_EX_Bildgebung_Modalitaet_PT_NM
Id: mii-ex-bildgebung-modalitaet-pt-nm
Title: "MII EX Bildgebung Modalität PT/NM"
Description: "Die Extension ermöglicht es die Ressourcen und Machbarkeitsanalysen auf PT & NM Daten zu erweitern."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-pt-nm"
//Translation
* insert Translation(^name, en-US, MII_EX_Imaging_Modality_PT_NM)
* insert Translation(^title, en-US, MII EX Imaging Modality PT/NM)
* insert Translation(^description, en-US, The extension allows to extend the resources and feasibility analysis to PT & NM data.)
//Meta
* insert PR_CS_VS_Version
* ^experimental = false
* insert Publisher
* insert ExtensionContext(ImagingStudy.Series)
//Extension
* extension contains
    radiopharmaceutical 0..1 MS and
    radiopharmaceuticalStartTime 0..1 MS and
    rescaleType 0..1 MS and
    radionuclideTotalDose 0..1 MS and
    radionuclideHalfLife 0..1 MS
* extension[radiopharmaceutical].value[x] only CodeableConcept
* extension[radiopharmaceutical].valueCodeableConcept from $radiopharmaceutical (extensible)
* extension[radiopharmaceutical].valueCodeableConcept.text MS
* extension[radiopharmaceuticalStartTime].value[x] only dateTime
* extension[rescaleType].value[x] only CodeableConcept
* extension[rescaleType].valueCodeableConcept from $rescaleType (extensible)
* extension[radionuclideTotalDose].value[x] only SimpleQuantity
* extension[radionuclideTotalDose].valueQuantity.unit = "Megabecquerel" 
* extension[radionuclideTotalDose].valueQuantity.system = "http://unitsofmeasure.org"
* extension[radionuclideTotalDose].valueQuantity.code = #MBq
* extension[radionuclideHalfLife].value[x] only SimpleQuantity
* extension[radionuclideHalfLife].valueQuantity.unit = "Seconds" 
* extension[radionuclideHalfLife].valueQuantity.system = "http://unitsofmeasure.org"
* extension[radionuclideHalfLife].valueQuantity.code = #s

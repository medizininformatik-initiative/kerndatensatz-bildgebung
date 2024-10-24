//Head
Extension: MII_EX_Bildgebung_Modalitaet_MR
Id: mii-ex-bildgebung-modalitaet-mr
Title: "MII EX Bildgebung Modalität MR"
Description: "Die Extension ermöglicht es die Ressourcen und Machbarkeitsanalysen auf MR Daten zu erweitern."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mr"
//Translation
* insert Translation(^name, en-US, MII_EX_Imaging_Modality_MR)
* insert Translation(^title, en-US, MII EX Imaging Modality MR)
* insert Translation(^description, en-US, The extension allows to extend the resources and feasibility analysis to MR data.)
//Meta
* insert PR_CS_VS_Version
* insert KDS_Copyright
* insert Publisher
* insert ExtensionContext(ImagingStudy.series)
* ^experimental = false
//Extension
* extension contains
    magneticFieldStrength 0..1 and
    scanningSequence 0..1 and
    scanningSequenceVariant 0..1
* extension[magneticFieldStrength].value[x]  only SimpleQuantity
* extension[magneticFieldStrength].valueQuantity.unit = "tesla" 
* extension[magneticFieldStrength].valueQuantity.system = "http://unitsofmeasure.org"
* extension[magneticFieldStrength].valueQuantity.code = #T
* extension[scanningSequence].value[x] only string //erstmal String bis Lösung für DICOM URLS gelöst
* extension[scanningSequenceVariant].value[x] only string //erstmal String bis Lösung für DICOM URLS gelöst


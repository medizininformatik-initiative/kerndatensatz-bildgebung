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
* insert LicenseCodeableCCBY40
* insert Publisher
* insert ExtensionContext(ImagingStudy.series)
* ^experimental = false
//Extension
* extension contains
    magneticFieldStrength 0..1 and
    scanningSequence 0..* and
    scanningSequenceVariant 0..* and
    echoTime 0..1 and
    repetitionTime 0..1 and
    inversionTime 0..1 and
    flipAngle 0..1
* extension[magneticFieldStrength].value[x]  only SimpleQuantity
* extension[magneticFieldStrength].valueQuantity.unit = "tesla" 
* extension[magneticFieldStrength].valueQuantity.system = $ucum
* extension[magneticFieldStrength].valueQuantity.code = #T
* extension[scanningSequence].value[x] only CodeableConcept
* extension[scanningSequence].valueCodeableConcept from MII_VS_Bildgebung_MR_Scanning_Sequence (required)
* extension[scanningSequenceVariant].value[x] only CodeableConcept
* extension[scanningSequenceVariant].valueCodeableConcept from MII_VS_Bildgebung_MR_Scanning_Sequence_Variant (required)
* extension[echoTime].value[x]  only SimpleQuantity
* extension[echoTime].valueQuantity.unit = "milliseconds" 
* extension[echoTime].valueQuantity.system = $ucum
* extension[echoTime].valueQuantity.code = #ms
* extension[inversionTime].value[x]  only SimpleQuantity
* extension[inversionTime].valueQuantity.unit = "milliseconds" 
* extension[inversionTime].valueQuantity.system = $ucum
* extension[inversionTime].valueQuantity.code = #ms
* extension[repetitionTime].value[x]  only SimpleQuantity
* extension[repetitionTime].valueQuantity.unit = "milliseconds" 
* extension[repetitionTime].valueQuantity.system = $ucum
* extension[repetitionTime].valueQuantity.code = #ms
* extension[flipAngle].value[x]  only SimpleQuantity
* extension[flipAngle].valueQuantity.unit = "plane angle degree"
* extension[flipAngle].valueQuantity.system = $ucum
* extension[flipAngle].valueQuantity.code = #deg
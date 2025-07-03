//HEad
Extension: MII_EX_Bildgebung_Modalitaet_US
Id: mii-ex-bildgebung-modalitaet-us
Title: "MII EX Bildgebung Modalität US"
Description: "Die Extension ermöglicht es die Ressourcen und Machbarkeitsanalysen auf US Daten zu erweitern."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-us"
//Translation
* insert Translation(^name, en-US, MII_EX_Imaging_Modality_US)
* insert Translation(^title, en-US, MII EX Imaging Modality US)
* insert Translation(^description, en-US, The extension allows to extend the resources and feasibility analysis to US data.)
//Meta
* insert PR_CS_VS_Version
* insert LicenseCodeableCCBY40
* insert Publisher
* insert ExtensionContext(ImagingStudy.series)
* ^experimental = false
//Extension
* extension contains
    transducerType 0..1 and
    transducerFrequency 0..1 and
    pulseRepetitionFrequency 0..1 and
    ultrasoundColor 0..1
* extension[transducerFrequency].value[x] only SimpleQuantity
* extension[transducerFrequency].valueQuantity.unit = "kilohertz" 
* extension[transducerFrequency].valueQuantity.system = "http://unitsofmeasure.org"
* extension[transducerFrequency].valueQuantity.code = #kHz
* extension[pulseRepetitionFrequency].value[x] only SimpleQuantity
* extension[pulseRepetitionFrequency].valueQuantity.unit = "hertz" 
* extension[pulseRepetitionFrequency].valueQuantity.system = "http://unitsofmeasure.org"
* extension[pulseRepetitionFrequency].valueQuantity.code = #Hz
* extension[ultrasoundColor].value[x]  only boolean
* extension[transducerType].value[x] only CodeableConcept
* extension[transducerType].valueCodeableConcept from MII_VS_Bildgebung_US_Transducer_Type (required)
//Head
Profile: MII_PR_Bildgebung_Radiologische_Messung
Parent: MII_PR_Bildgebung_Radiologische_Beobachtung
Id: mii-pr-bildgebung-radiologische-messung
Title: "MII PR Bildgebung Radiologische Messung"
Description: "Dieses Profil beschreibt eine Messung in der radiologischer Bildgebung. Es bietet die Möglichkeit strukturiert Messungen abzubilden und den Befundbericht zu ergänzen."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-radiologische-messung"
//Translation Meta
* insert Translation(^name, en-US, MII_PR_Imaging_Radiological_Observation)
* insert Translation(^title, de-DE, radiologische Messung)
* insert Translation(^title, en-US, radiological observation)
* insert Translation(^description, de-DE, Beschreibt eine radiologische Messung)
* insert Translation(^description, en-US, The profile describes a observation for radiological images.)
//Meta
* insert PR_CS_VS_Version
* insert PR_CS_VS_Date
* insert Publisher
* insert LicenseCodeableCCBY40
//Profile
* category.coding ^slicing.discriminator.type = #pattern
* category.coding ^slicing.discriminator.path = "$this"
* category.coding ^slicing.rules = #open
* category.coding contains
    sct 0..1 MS
* category.coding[sct] ^patternCoding.system = $SCT
* category.coding[sct] = $SCT#122869004
* category.coding[sct].display = "Measurement procedure (procedure)"
* value[x] only Quantity
* valueQuantity.system = $ucum
* method MS
* method.coding 1.. MS
* method.coding ^slicing.discriminator.type = #pattern
* method.coding ^slicing.discriminator.path = "$this"
* method.coding ^slicing.rules = #open
* method.coding contains
    sct 0..1 MS
* method.coding[sct] ^patternCoding.system = $SCT
* method.coding.system 1.. MS
* method.coding.code 1.. MS
* component.value[x] only Quantity
* component.valueQuantity.system = $ucum
* component.code.coding.system = $SCT

//Translation Profile
* insert AddSnomedCodingTranslation(category.coding[sct])
* insert Translation(method ^short, de-DE, Methode)
* insert Translation(method ^short, en-US, Method)
* insert Translation(method ^definition, de-DE, detaillierte Messmethode)
* insert Translation(method ^definition, en-US, detailed method of this measurement)

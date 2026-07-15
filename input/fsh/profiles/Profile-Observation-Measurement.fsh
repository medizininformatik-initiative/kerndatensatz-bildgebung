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
* category MS
* category ^short = "Kategorie"
* category ^definition = "Klassifikation in diagnostischen Fachbereich und Gruppe"
* category.coding 1.. MS
* category.coding ^slicing.discriminator.type = #pattern
* category.coding ^slicing.discriminator.path = "$this"
* category.coding ^slicing.rules = #open
* category.coding contains
    sct 0..1 MS
* category.coding[sct] ^patternCoding.system = $SCT
* category.coding[sct] = $SCT#122869004
* category.coding[sct].display = "Measurement procedure (procedure)"
* category.coding.system 1.. MS
* category.coding.code 1.. MS
* value[x] only Quantity
* valueQuantity.system = $ucum
* component MS
* component.value[x] only Quantity
* component.valueQuantity.system = $ucum
* component.code.coding.system = $SCT
* component ^short = "Bestandteile"
* component ^definition = "Detailierte Bestandteile der Messung"
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

//Translation Profile
* insert Translation(category ^short, de-DE, Kategorie)
* insert Translation(category ^short, en-US, Category)
* insert Translation(category ^definition, de-DE, Klassifikation in diagnostischen Fachbereich und Gruppe)
* insert Translation(category ^definition, en-US, Classification of the diagnostic service section)
* insert AddLoincCodingTranslation(category.coding[loinc])
* insert Translation(value[x] ^short, de-DE, Messwert)
* insert Translation(value[x] ^short, en-US, Value)
* insert Translation(value[x] ^definition, de-DE, Wert der Analyse)
* insert Translation(value[x] ^definition, en-US, Value of the analysis)
* insert Translation(component ^short, de-DE, Bestandteile)
* insert Translation(component ^short, en-US, components)
* insert Translation(component ^definition, de-DE, detailierte Bestandteile der Messung)
* insert Translation(component ^definition, en-US, detailed components of this observation)
* insert Translation(method ^short, de-DE, Methode)
* insert Translation(method ^short, en-US, Method)
* insert Translation(method ^definition, de-DE, detaillierte Messmethode)
* insert Translation(method ^definition, en-US, detailed method of this measurement)

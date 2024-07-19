//bildnummer
//SOPInstanz
//issued
//value[x]
//bodySite
//component

Instance: mii-sp-bildgebung-observation-body-structure
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-observation-body-structure"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Observation_Body_Structure"
* status = #active
* experimental = false
* date = "2024-07-19"
* description = "Suchparameter für Observation.bodyStructure"
* code = #bodyStructure
* base = #Observation
* type = #reference
* expression = "Observation.bodyStructure"
* target = #BodyStructure

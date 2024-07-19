Instance: mii-sp-bildgebung-care-plan-intent
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-care-plan-intent"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Care_Plan_Intent"
* status = #active
* experimental = false
* date = "2024-07-19"
* description = "Suchparameter für CarePlan.intent"
* code = #intent
* base = #CarePlan
* type = #token
* expression = "CarePlan.intent"
* modifier[+] = #text
* modifier[+] = #not
* modifier[+] = #above
* modifier[+] = #below
* modifier[+] = #in
* modifier[+] = #not-in

Instance: mii-sp-bildgebung-care-plan-description
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-care-plan-description"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Care_Plan_Description"
* status = #active
* experimental = false
* date = "2024-07-19"
* description = "Suchparameter für CarePlan.description"
* code = #description
* base = #CarePlan
* type = #token
* expression = "CarePlan.description"
* modifier[+] = #text
* modifier[+] = #not
* modifier[+] = #above
* modifier[+] = #below
* modifier[+] = #in
* modifier[+] = #not-in

Instance: mii-sp-bildgebung-care-plan-supporting-info
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-care-plan-supporting-info"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Care_Plan_SupportingInfo"
* status = #active
* experimental = false
* date = "2024-07-19"
* description = "Suchparameter für CarePlan.supportingInfo"
* code = #supporting-info
* base = #CarePlan
* type = #reference
* expression = "CarePlan.supportingInfo"
* target = #Observation
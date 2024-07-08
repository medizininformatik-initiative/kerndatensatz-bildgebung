// TODO for all Profiles


Instance: mii-sp-bildgebung-medication-ingredient-strength-numerator
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-bildgebung/SearchParameter/Medication-IngredientStrengthNumerator"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Medication_Ingredient_Strength_Numerator"
* status = #active
* experimental = false
* date = "2022-06-28"
* description = "Suchparameter für Medication.ingredient.strength.numerator"
* code = #ingredient-strength-numerator
* base = #Medication
* type = #quantity
* expression = "Medication.ingredient.strength.numerator"
* comparator[+] = #eq 
* comparator[+] = #gt 
* comparator[+] = #lt
* comparator[+] = #ge 
* comparator[+] = #le 

Instance: mii-sp-bildgebung-medication-ingredient-strength-denominator
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-bildgebung/SearchParameter/Medication-IngredientStrengthDenominator"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Medication_Ingredient_Strength_Denominator"
* status = #active
* experimental = false
* date = "2022-06-28"
* description = "Suchparameter für Medication.ingredient.strength.denominator"
* code = #ingredient-strength-denominator
* base = #Medication
* type = #quantity
* expression = "Medication.ingredient.strength.denominator"
* comparator[+] = #eq 
* comparator[+] = #gt 
* comparator[+] = #lt
* comparator[+] = #ge 
* comparator[+] = #le 

Instance: mii-sp-bildgebung-medication-ingredient-strength
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-bildgebung/SearchParameter/Medication-IngredientStrength"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Medication_Ingredient_Strength"
* status = #active
* experimental = false
* date = "2022-09-22"
* description = "Suchparameter für Medication.ingredient.strength"
* code = #ingredient-strength
* base = #Medication
* type = #composite
* expression = "Medication.ingredient.strength"

Instance: mii-sp-bildgebung-medication-reasonreference
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-bildgebung/SearchParameter/Medication-ReasonReference"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Medication_ReasonReference"
* status = #active
* experimental = false
* date = "2022-06-28"
* description = "Suchparameter für (MedicationAdministration|MedicationStatement).reasonReference"
* code = #reason-reference
* base[+] = #MedicationStatement
* base[+] = #MedicationAdministration 
* type = #reference
* expression = "MedicationAdministration.reasonReference | MedicationStatement.reasonReference"
* target[+] = #Condition
* target[+] = #Observation
* target[+] = #DiagnosticReport

Instance: mii-sp-bildgebung-dosage-site
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-bildgebung/SearchParameter/Dosage-Site"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Dosage_Site"
* status = #active
* experimental = false
* date = "2024-06-28"
* description = "Suchparameter für (MedicationAdministration|MedicationStatement).dosage.site | MedicationRequest.dosageInstruction.site"
* code = #dosage-site
* base[0] = #MedicationStatement
* base[+] = #MedicationAdministration
* base[+] = #MedicationRequest
* type = #token
* expression = "MedicationAdministration.dosage.site | MedicationStatement.dosage.site | MedicationRequest.dosageInstruction.site"
* modifier[+] = #text
* modifier[+] = #in
* modifier[+] = #not-in
* modifier[+] = #below
* modifier[+] = #above

Instance: mii-sp-bildgebung-dosage-route
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-bildgebung/SearchParameter/Dosage-Route"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Dosage_Route"
* status = #active
* experimental = false
* date = "2024-06-28"
* description = "Suchparameter für (MedicationAdministration|MedicationStatement).dosage.route | MedicationRequest.dosageInstruction.route"
* code = #dosage-route
* base[0] = #MedicationStatement
* base[+] = #MedicationAdministration
* base[+] = #MedicationRequest
* type = #token
* expression = "MedicationAdministration.dosage.route | MedicationStatement.dosage.route | MedicationRequest.dosageInstruction.route"
* modifier[+] = #text
* modifier[+] = #in
* modifier[+] = #not-in
* modifier[+] = #below
* modifier[+] = #above

Instance: mii-sp-bildgebung-dosage-doserange-low
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-bildgebung/SearchParameter/Dosage-DoseRangeLow"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Dosage_DoseRangeLow"
* status = #active
* experimental = false
* date = "2024-06-28"
* description = "Suchparameter für MedicationStatement.dosage.doseAndRate.doseRange.low | MedicationRequest.dosageInstruction.doseAndRate.doseRange.low"
* code = #doserange-low
* base[0] = #MedicationStatement
* base[+] = #MedicationRequest
* type = #quantity
* expression = "MedicationStatement.dosage.doseAndRate.dose.ofType(Range).low | MedicationRequest.dosageInstruction.doseAndRate.dose.ofType(Range).low"
* comparator[+] = #eq 
* comparator[+] = #gt 
* comparator[+] = #lt
* comparator[+] = #ge 
* comparator[+] = #le 

Instance: mii-sp-bildgebung-dosage-doserange-high
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-bildgebung/SearchParameter/Dosage-DoseRangeHigh"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Dosage_DoseRangeHigh"
* status = #active
* experimental = false
* date = "2024-06-28"
* description = "Suchparameter für MedicationStatement.dosage.doseAndRate.doseRange.high | MedicationRequest.dosageInstruction.doseAndRate.doseRange.high"
* code = #doserange-high
* base[0] = #MedicationStatement
* base[+] = #MedicationRequest
* type = #quantity
* expression = "MedicationStatement.dosage.doseAndRate.dose.ofType(Range).high | MedicationRequest.dosageInstruction.doseAndRate.dose.ofType(Range).high"
* comparator[+] = #eq 
* comparator[+] = #gt 
* comparator[+] = #lt
* comparator[+] = #ge 
* comparator[+] = #le 

Instance: mii-sp-bildgebung-dosage-doserange
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-bildgebung/SearchParameter/Dosage-DoseRange"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Dosage_DoseRange"
* status = #active
* experimental = false
* date = "2024-06-28"
* description = "Suchparameter für MedicationStatement.dosage.doseAndRate.doseRange | MedicationRequest.dosageInstruction.doseAndRate.doseRange"
* code = #doserange
* base[0] = #MedicationStatement
* base[+] = #MedicationRequest
* type = #composite
* expression = "MedicationStatement.dosage.doseAndRate.dose.ofType(Range) | MedicationRequest.dosageInstruction.doseAndRate.dose.ofType(Range)"
* component[0].definition = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/Dosage-DoseRangeLow"
* component[=].expression = "low"
* component[+].definition = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/Dosage-DoseRangeHigh"
* component[=].expression = "high"

Instance: mii-sp-bildgebung-dosage-dosequantity
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-bildgebung/SearchParameter/Dosage-DoseQuantity"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Dosage_DoseQuantity"
* status = #active
* experimental = false
* date = "2024-06-28"
* description = "Suchparameter für MedicationStatement.dosage.doseAndRate.doseQuantity | MedicationRequest.dosageInstruction.doseAndRate.doseQuantity | MedicationAdministration.dosage.dose"
* code = #dose-quantity
* base[0] = #MedicationStatement
* base[+] = #MedicationRequest
* base[+] = #MedicationAdministration
* type = #quantity
* expression = "MedicationStatement.dosage.doseAndRate.dose.ofType(Quantity) | MedicationRequest.dosageInstruction.doseAndRate.dose.ofType(Quantity) | MedicationAdministration.dosage.dose"
* comparator[+] = #eq 
* comparator[+] = #gt 
* comparator[+] = #lt
* comparator[+] = #ge 
* comparator[+] = #le 

Instance: mii-sp-bildgebung-dosage-raterange-low
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-bildgebung/SearchParameter/Dosage-RateRangeLow"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Dosage_RateRangeLow"
* status = #active
* experimental = false
* date = "2024-06-28"
* description = "Suchparameter für MedicationStatement.dosage.doseAndRate.rateRange.low | MedicationRequest.dosageInstruction.doseAndRate.rateRange.low"
* code = #raterange-low
* base[0] = #MedicationStatement
* base[+] = #MedicationRequest
* type = #quantity
* expression = "MedicationStatement.dosage.doseAndRate.rate.ofType(Range).low | MedicationRequest.dosageInstruction.doseAndRate.rate.ofType(Range).low"
* comparator[+] = #eq 
* comparator[+] = #gt 
* comparator[+] = #lt
* comparator[+] = #ge 
* comparator[+] = #le 

Instance: mii-sp-bildgebung-dosage-raterange-high
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-bildgebung/SearchParameter/Dosage-RateRangeHigh"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Dosage_RateRangeHigh"
* status = #active
* experimental = false
* date = "2024-06-28"
* description = "Suchparameter für MedicationStatement.dosage.doseAndRate.rateRange.high | MedicationRequest.dosageInstruction.doseAndRate.rateRange.high"
* code = #raterange-high
* base[0] = #MedicationStatement
* base[+] = #MedicationRequest
* type = #quantity
* expression = "MedicationStatement.dosage.doseAndRate.rate.ofType(Range).high | MedicationRequest.dosageInstruction.doseAndRate.rate.ofType(Range).high"
* comparator[+] = #eq 
* comparator[+] = #gt 
* comparator[+] = #lt
* comparator[+] = #ge 
* comparator[+] = #le 

Instance: mii-sp-bildgebung-dosage-raterange
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-bildgebung/SearchParameter/MedicationStatement-RateRange"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Dosage_RateRange"
* status = #active
* experimental = false
* date = "2024-06-28"
* description = "Suchparameter für MedicationStatement.dosage.doseAndRate.rateRange | MedicationRequest.dosageInstruction.doseAndRate.rateRange"
* code = #raterange
* base[0] = #MedicationStatement
* base[+] = #MedicationRequest
* type = #composite
* expression = "MedicationStatement.dosage.doseAndRate.rate.ofType(Range) | MedicationRequest.dosageInstruction.doseAndRate.rate.ofType(Range)"
* component[0].definition = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/Dosage-RateRangeLow"
* component[=].expression = "low"
* component[+].definition = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/Dosage-RateRangeHigh"
* component[=].expression = "high"

Instance: mii-sp-bildgebung-dosage-ratequantity
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-bildgebung/SearchParameter/Dosage-RateQuantity"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Dosage_RateQuantity"
* status = #active
* experimental = false
* date = "2024-06-28"
* description = "Suchparameter für MedicationStatement.dosage.doseAndRate.rateQuantity | MedicationAdministration.dosage.rateQuantity | MedicationRequest.dosageInstruction.doseAndRate.rateQuantity"
* code = #ratequantity
* base[0] = #MedicationStatement
* base[+] = #MedicationAdministration
* base[+] = #MedicationRequest
* type = #quantity
* expression = "MedicationStatement.dosage.doseAndRate.rate.ofType(Quantity) | MedicationAdministration.dosage.rate.ofType(Quantity) | MedicationRequest.dosageInstruction.doseAndRate.rate.ofType(Quantity)"
* comparator[+] = #eq 
* comparator[+] = #gt 
* comparator[+] = #lt
* comparator[+] = #ge 
* comparator[+] = #le 

Instance: mii-sp-bildgebung-list-mode
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-bildgebung/SearchParameter/List-Mode"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_List_Mode"
* status = #active
* experimental = false
* date = "2022-06-28"
* description = "Suchparameter für List.mode"
* code = #mode
* base = #List 
* type = #token
* expression = "List.mode"

Instance: mii-sp-bildgebung-dosage-rateratio-numerator
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-bildgebung/SearchParameter/Dosage-RateRatioNumerator"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Dosage_RateRatioNumerator"
* status = #active
* experimental = false
* date = "2024-06-27"
* description = "Suchparameter für MedicationStatement.dosage.doseAndRate.rateRatio.numerator | MedicationAdministration.dosage.rate.ofType(Ratio).numerator | MedicationRequest.dosageInstruction.doseAndRate.rate.ofType(Ratio).numerator"
* code = #rateratio-numerator
* base[0] = #MedicationStatement
* base[+] = #MedicationAdministration
* base[+] = #MedicationRequest
* type = #quantity
* expression = "MedicationStatement.dosage.doseAndRate.rate.ofType(Ratio).numerator | MedicationAdministration.dosage.rate.ofType(Ratio).numerator | MedicationRequest.dosageInstruction.doseAndRate.rate.ofType(Ratio).numerator"
* comparator[+] = #eq 
* comparator[+] = #gt 
* comparator[+] = #lt
* comparator[+] = #ge 
* comparator[+] = #le 

Instance: mii-sp-bildgebung-dosage-rateratio-denominator
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-bildgebung/SearchParameter/Dosage-RateRatioDenominator"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Dosage_RateRatioDenominator"
* status = #active
* experimental = false
* date = "2024-06-27"
* description = "Suchparameter für MedicationStatement.dosage.doseAndRate.rateRatio.denominator | MedicationAdministration.dosage.rate.ofType(Ratio).denominator | MedicationRequest.dosageInstruction.doseAndRate.rate.ofType(Ratio).denominator"
* code = #rateratio-denominator
* base[0] = #MedicationStatement
* base[+] = #MedicationAdministration
* base[+] = #MedicationRequest
* type = #quantity
* expression = "MedicationStatement.dosage.doseAndRate.rate.ofType(Ratio).denominator | MedicationAdministration.dosage.rate.ofType(Ratio).denominator | MedicationRequest.dosageInstruction.doseAndRate.rate.ofType(Ratio).denominator"
* comparator[+] = #eq 
* comparator[+] = #gt 
* comparator[+] = #lt
* comparator[+] = #ge 
* comparator[+] = #le 

Instance: mii-sp-bildgebung-dosage-rateratio
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-bildgebung/SearchParameter/Dosage-RateRatio"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Dosage_RateRatio"
* status = #active
* experimental = false
* date = "2024-06-27"
* description = "MedicationStatement.dosage.doseAndRate.rate.ofType(Ratio) | MedicationAdministration.dosage.rate.ofType(Ratio) | MedicationRequest.dosageInstruction.doseAndRate.rate.ofType(Ratio)"
* code = #rateratio
* base[0] = #MedicationStatement
* base[+] = #MedicationAdministration
* base[+] = #MedicationRequest
* type = #composite
* expression = "MedicationStatement.dosage.doseAndRate.rate.ofType(Ratio) | MedicationAdministration.dosage.rate.ofType(Ratio) | MedicationRequest.dosageInstruction.doseAndRate.rate.ofType(Ratio)"
* component[0].definition = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/Dosage-RateRatioNumerator"
* component[=].expression = "numerator"
* component[+].definition = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/SearchParameter/Dosage-RateRatioDenominator"
* component[=].expression = "denominator"
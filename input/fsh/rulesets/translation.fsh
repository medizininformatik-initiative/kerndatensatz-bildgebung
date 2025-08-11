RuleSet: Translation(path, language, translation)
* {path}.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* {path}.extension[=].extension[0].url = "lang"
* {path}.extension[=].extension[0].valueCode = #{language}
* {path}.extension[=].extension[1].url = "content"
* {path}.extension[=].extension[1].valueString = "{translation}"

RuleSet: AddSnomedCodingTranslation(path)
* {path} ^short = "SNOMED CT Code"
* insert Translation({path} ^short, de-DE, SNOMED CT Code)
* insert Translation({path} ^short, en-US, SNOMED CT code)
* {path} ^definition = "Ein Verweis auf einen von SNOMED CT definierten Code"
* insert Translation({path} ^definition, de-DE, Ein Verweis auf einen von SNOMED CT definierten Code)
* insert Translation({path} ^definition, en-US, A reference to a code defined by SNOMED CT)

RuleSet: AddLoincCodingTranslation(path)
* {path} ^short = "LOINC Code"
* insert Translation({path} ^short, de-DE, LOINC Code)
* insert Translation({path} ^short, en-US, LOINC code)
* {path} ^definition = "Ein Verweis auf einen vom LOINC definierten Code"
* insert Translation({path} ^definition, de-DE, Ein Verweis auf einen von LOINC definierten Code)
* insert Translation({path} ^definition, en-US, A reference to a code defined by LOINC)

RuleSet: AddRadLexCodingTranslation(path)
* {path} ^short = "RadLex Code"
* insert Translation({path} ^short, de-DE, RadLex Code)
* insert Translation({path} ^short, en-US, RadLex code)
* {path} ^definition = "Ein Verweis auf einen vom RadLex definierten Code"
* insert Translation({path} ^definition, de-DE, Ein Verweis auf einen von RadLex definierten Code)
* insert Translation({path} ^definition, en-US, A reference to a code defined by RadLex)

RuleSet: AddOpsCodingTranslation(path)
* {path} ^short = "Operationen- und Prozedurenschlüssel (OPS) Code"
* insert Translation({path} ^short, de-DE, OPS Code)
* insert Translation({path} ^short, en-US, OPS code)
* {path} ^definition = "Ein Verweis auf einen vom Operationen- und Prozedurenschlüssel (OPS) definierten Code"
* insert Translation({path} ^definition, de-DE, Ein Verweis auf einen vom Operationen- und Prozedurenschlüssel definierten Code)
* insert Translation({path} ^definition, en-US, A reference to a code defined by the German Procedure Classification OPS)

RuleSet: AddDSSCodingTranslation(path)
* {path} ^short = "Diagnostic Service Section Code"
* insert Translation({path} ^short, de-DE, Diagnostische Serviceabteilung Code)
* insert Translation({path} ^short, en-US, Diagnostic-service-section code)
* {path} ^definition = "Ein Verweis auf einen von HL7 International definierten Code zur diagnostischen Serviceabteilung"
* insert Translation({path} ^definition, de-DE, Ein Verweis auf einen von HL7 International definierten Code)
* insert Translation({path} ^definition, en-US, A reference to a code defined by HL7 International)

RuleSet: AddICDCodingTranslation(path)
* {path} ^short = "ICD-10-GM Code"
* insert Translation({path} ^short, de-DE, ICD-10-GM Code)
* insert Translation({path} ^short, en-US, ICD-10-GM code)
* {path} ^definition = "Ein Verweis auf einen vom Bfarm"
* insert Translation({path} ^definition, de-DE, Ein Verweis auf einen vom Bundesinstitut für Arzneimittel und Medizinprodukte definierten Code)
* insert Translation({path} ^definition, en-US, A reference to a code defined by the german Federal Institute for Drugs and Medical Devices)

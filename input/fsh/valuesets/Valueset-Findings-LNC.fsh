ValueSet: MII_VS_Bildgebung_Findings_LNC
Id: mii-vs-bildgebung-findings-lnc
Title: "MII VS Bildgebung Findings Loinc"
Description: "Import the ValueSet for LOINC Findings"
* insert Publisher
* insert PR_CS_VS_Version
* insert LOINC_Copyright
* insert PR_CS_VS_Date
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^experimental = false
* include codes from system $loinc where SYSTEM = $loinc#LP310005-6 and METHOD_TYP = $loinc#LP6486-7
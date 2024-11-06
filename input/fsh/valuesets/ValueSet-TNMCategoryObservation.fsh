// TNM Categories Valueset
ValueSet: MII_VS_Bildgebung_TNM_Category_Observation
Id: mii-vs-bildgebung-tnm-category-observation
Title: "Valueset for Categories of a BodyStructure in the context of one TNM procedure"
Description: "This Valueset contains the coded for the different categories for BodyStructures in the context of TNM (Tumor|Node|Metastase)"
* insert Publisher
* insert PR_CS_VS_Version
* insert LOINC_Copyright
* insert PR_CS_VS_Date
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^experimental = false
* ^status = #draft
* $loinc#21905-5 "Primary tumor.clinical [Class] Cancer"
* $loinc#21906-3 "Regional lymph nodes.clinical [Class] Cancer"
* $loinc#21907-1 "Distant metastases.clinical [Class] Cancer"
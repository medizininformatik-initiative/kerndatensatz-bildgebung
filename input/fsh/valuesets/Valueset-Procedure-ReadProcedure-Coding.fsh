// TNM Procedures Valueset
ValueSet: VS_TNM_Radiological_Read_Procedures
Id: vs-tnm-radiological-read-procedure
Title: "Valueset for TNM Radiological Read Procedures"
Description: "This Valueset contains the snomed codes of the different TNM tumor staging systems"
* ^url = "https://www.vision-zero-oncology.de/fhir/ValueSet/vs-tnm-radiological-read-procedure"
* include codes from system $SCT where concept descendent-of #254293002


// RECIST Procedures Valueset
ValueSet: VS_RECIST_Radiological_Read_Procedures
Id: vs-recist-radiological-read-procedure
Title: "Valueset for RECIST Radiological Read Procedures"
Description: "TODO"
* ^url = "https://www.vision-zero-oncology.de/fhir/ValueSet/vs_recist_radiological_read_procedure"
* $SCT#103337004 "In partial remission" //TODO value set contains differern available RECIST versions (TODO start with current versions?)


// TNM Categories Valueset
ValueSet: VS_TNM_Category_Observation
Id: vs-tnm-category-observation
Title: "Valueset for Categories of a BodyStructure in the context of one TNM procedure"
Description: "This Valueset contains the coded for the different categories for BodyStructures in the context of TNM (Tumor|Node|Metastase)"
* ^url = "https://www.vision-zero-oncology.de/fhir/ValueSet/vs-tnm-category-observation"
* $LNC#21905-5 "Primary tumor.clinical [Class] Cancer"
* $LNC#21906-3 "Regional lymph nodes.clinical [Class] Cancer"
* $LNC#21907-1 "Distant metastases.clinical [Class] Cancer"

// RECIST Categories Valueset
ValueSet: VS_RECIST_Category_Observation
Id: vs-recsit-category-observation
Title: "Valueset for Categories of a BodyStructure in the context of one RECIST procedure"
Description: "TODO"
* ^url = "https://www.vision-zero-oncology.de/fhir/ValueSet/vs-recsit-category-observation"
* $SCT#103337004 "In partial remission" //TODO
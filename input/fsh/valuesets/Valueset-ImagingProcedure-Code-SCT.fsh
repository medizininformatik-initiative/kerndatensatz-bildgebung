ValueSet: MII_VS_Bildgebung_ImagingProcedure_Code_SCT
Id: mii-vs-bildgebung-imaging-procedure-code-sct
Title: "MII VS Bildgebung ImagingProcedure Code SCT"
Description: "Import the ValueSet for Imaging Procedures"
* insert Publisher
* insert PR_CS_VS_Version
* insert SNOMED_Copyright
* insert PR_CS_VS_Date
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^experimental = false
* include codes from system $SCT-version where constraint = "< 363679005 | Imaging (procedure) |"
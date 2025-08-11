ValueSet: MII_VS_Bildgebung_ServiceRequest_Code_SCT
Id: mii-vs-bildgebung-service-request-code-sct
Title: "MII VS Bildgebung ServiceRequest Code SCT"
Description: "Import the ValueSet for ServiceRequest"
* insert Publisher
* insert PR_CS_VS_Version
* insert SNOMED_Copyright
* insert PR_CS_VS_Date
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^experimental = false
* include codes from system $SCT-version where constraint = "< 400999005 | Procedure requested (situation) |"
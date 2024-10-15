ValueSet: MII_VS_Bildgebung_Service_Request_Reason
Id: mii-vs-bildgebung-service-request-reason
Title: "MII VS Bildgebung ServiceRequest Reason"
Description: "Imports the ValueSet for clinical findings"
* insert Publisher
* insert PR_CS_VS_Version
* insert SNOMED_Copyright
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^experimental = false
* ^date = "2024-08-30"
* include codes from system $SCT where concept descendent-of #404684003 "Clinical finding (finding)"
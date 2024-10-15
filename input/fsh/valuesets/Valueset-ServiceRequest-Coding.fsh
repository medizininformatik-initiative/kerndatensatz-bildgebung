ValueSet: MII_VS_Bildgebung_Service_Request_Coding
Id: mii-vs-bildgebung-service-request-coding
Title: "MII VS Bildgebung ServiceRequest Coding"
Description: "Import the ValueSet for Imaging Procedures"
* insert Publisher
* insert PR_CS_VS_Version
* insert SNOMED_Copyright
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^experimental = false
* ^date = "2024-08-30"
* include codes from system $SCT where concept descendent-of #363679005 "Imaging (procedure)"
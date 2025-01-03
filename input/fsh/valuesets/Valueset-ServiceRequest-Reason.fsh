ValueSet: MII_VS_Bildgebung_Service_Request_Reason
Id: mii-vs-bildgebung-service-request-reason
Title: "MII VS Bildgebung ServiceRequest Reason"
Description: "Imports the ValueSet for clinical findings"
* insert Publisher
* insert PR_CS_VS_Version
* insert SNOMED_Copyright
* insert PR_CS_VS_Date
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^experimental = false
* include codes from system $SCT-version where constraint = "< 404684003 |Clinical finding (finding)|"
ValueSet: MII_VS_Bildgebung_ServiceRequest_Code_SCT
Id: mii-vs-bildgebung-service-request-code-sct
Title: "MII VS Bildgebung ServiceRequest Code SCT"
Description: "Import the ValueSet for ServiceRequest"
* insert Publisher
* insert PR_CS_VS_Version
* insert PR_CS_VS_Date
* insert SNOMED_Copyright
* insert LicenseCodeableCCBY40
* insert CRMIShareableValueSet
* insert CRMIPublishableValueSet
* insert CRMIKnowledgeCapabilitiesValueSet
* insert CRMIVersionPolicyStrict
* insert CRMIPackageSourceDefinitionalResource
* insert CRMIResourceEffectivePeriod
* insert CRMIArtifactContributors
* insert CRMIApprovalDate(2024-12-19)
* insert CRMIArtifactTopic(http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl, C115715)
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^experimental = false
* include codes from system $sct where constraint = "< 400999005 | Procedure requested (situation) |"
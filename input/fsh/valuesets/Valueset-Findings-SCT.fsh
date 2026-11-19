ValueSet: MII_VS_Bildgebung_Findings_SCT
Id: mii-vs-bildgebung-findings-sct
Title: "MII VS Bildgebung Findings SCT"
Description: "Import the ValueSet for Diagnostic Reports and Service Request"
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
* include codes from system $sct where constraint = "< 404684003 | Clinical finding (finding)|"
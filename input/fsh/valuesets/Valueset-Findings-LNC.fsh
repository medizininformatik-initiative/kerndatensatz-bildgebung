ValueSet: MII_VS_Bildgebung_Findings_LNC
Id: mii-vs-bildgebung-findings-lnc
Title: "MII VS Bildgebung Findings Loinc"
Description: "Import the ValueSet for LOINC Findings"
* insert Publisher
* insert PR_CS_VS_Version
* insert PR_CS_VS_Date
* insert LOINC_Copyright
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
* include codes from system $loinc where SYSTEM = $loinc#LP310005-6 and METHOD_TYP = $loinc#LP6486-7
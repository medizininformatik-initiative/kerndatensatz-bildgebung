ValueSet: MII_VS_Bildgebung_Diagnostic_Report_Code_LNC
Id: mii-vs-bildgebung-diagnostic-report-code-lnc
Title: "MII VS Bildgebung DiagnosticReport Code Loinc"
Description: "Import the ValueSet for Diagnostic Reports"
* insert Publisher
* insert PR_CS_VS_Version
* insert PR_CS_VS_Date
* insert LOINC_Copyright
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
* include codes from system $loinc where SCALE_TYP = $loinc#LP32888-7 and CLASS = $loinc#RAD

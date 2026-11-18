//Head
Extension: MII_EX_Bildgebung_SOP_Instanz_UID
Id: mii-ex-bildgebung-sop-instanz-uid
Title: "MII EX Bildgebung SOPInstanz"
Description: "Die Extension ermöglicht es, den SOPInstanz aus dem entsprechenden DICOM Tag auf Studien-Ebene anzugeben."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-sop-instanz-uid"
//Translation
* insert Translation(^name, en-US, MII_EX_Imaging_SOPInstance)
* insert Translation(^title, en-US, MII EX Imaging SOPInstance)
* insert Translation(^description, en-US, The extension allows specifying the reason for the imaging procedure from the corresponding DICOM tag at the study level.)
//Meta
* insert PR_CS_VS_Version
* insert LicenseCodeableCCBY40
* insert Publisher
* insert CRMIShareableStructureDefinition
* insert CRMIPublishableStructureDefinition
* insert CRMIKnowledgeCapabilitiesStructureDefinition
* insert CRMIVersionPolicyStrict
* insert CRMIPackageSourceDefinitionalResource
* insert CRMIArtifactUsageExtension
* insert CRMIApprovalDate(2024-12-19)
* insert CRMIResourceEffectivePeriod
* insert CRMIArtifactTopic(http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl, C115715)
* insert CRMIArtifactContributors
* insert ExtensionContext(Observation)
* ^experimental = false
//Extension
* value[x]  only id

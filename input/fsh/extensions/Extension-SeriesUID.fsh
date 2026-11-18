//Head
Extension: MII_EX_Bildgebung_Serie_UID
Id: mii-ex-bildgebung-serie-uid
Title: "MII EX Bildgebung Bildnummer"
Description: "Die Extension ermöglicht es, den Bildnummer aus dem entsprechenden DICOM Tag auf Studien-Ebene anzugeben."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-series-uid"
//Translation
* insert Translation(^name, en-US, MII_EX_Imaging_Imagenumber)
* insert Translation(^title, en-US, MII EX Imaging Imagenumber)
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

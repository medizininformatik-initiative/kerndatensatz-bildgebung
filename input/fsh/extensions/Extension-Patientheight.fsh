//Head
Extension: MII_EX_Bildgebung_Groesse
Id: mii-ex-bildgebung-groesse
Title: "MII EX Bildgebung Körpergröße"
Description: "Die Extension ermöglicht es, die Körpergröße aus dem entsprechenden DICOM Tag [0010,1020] auf Studien-Ebene anzugeben."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-groesse"
//Translation
* insert Translation(^name, en-US, MII_EX_Imaging_Height)
* insert Translation(^title, en-US, MII EX Imaging Patient Height)
* insert Translation(^description, en-US, The extension allows specifying the patient height from the corresponding DICOM tag [0010/1020] at the study level.)
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
* insert ExtensionContext(ImagingStudy)
* ^experimental = false
//Extension
* value[x]  only Reference
* valueReference only Reference($de-height)

//Head
Extension: MII_EX_Bildgebung_Kontrastmittel
Id: mii-ex-bildgebung-kontrastmittel
Title: "MII EX Bildgebung Kontrastmittel"
Description: "Die Extension ermöglicht es, die Gabe von Kontrastmitteln auf Serien-Ebene anzugeben."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-kontrastmittel"
//Translation
* insert Translation(^name, en-US, MII_EX_ImagingStudy)
* insert Translation(^title, en-US, MII_EX_ImagingStudy)
* insert Translation(^description, en-US, The extension allows specifying the administration of contrast agents at the series level.)
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
* insert ExtensionContext(ImagingStudy.series)
* ^experimental = false
//Extension
* extension contains
    contrastBolus 1..1 MS and
    contrastBolusDetails 0..* 
* extension[contrastBolus].value[x]  only boolean
* extension[contrastBolusDetails].value[x] only Reference
* extension[contrastBolusDetails].valueReference only Reference(MedicationAdministration or MedicationStatement)

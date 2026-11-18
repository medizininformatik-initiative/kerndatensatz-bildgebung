//Head
Extension: MII_EX_Bildgebung_Schichtdicke
Id: mii-ex-bildgebung-serie-schichtdicke
Title: "MII EX Bildgebung Schichtdicke"
Description: "Die Extension ermöglicht es, die Schichtdicke auf Serien-Ebene anzugeben, anstelle der individuellen Angabe auf Instanz-Ebene."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-serie-schichtdicke"
//Translation
* insert Translation(^name, en-US, MII_EX_ImagingStudy)
* insert Translation(^title, en-US, MII_EX_ImagingStudy)
* insert Translation(^description, en-US, The extension allows specifying the slice thickness at the series level instead of the individual values at instance level.)
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
* value[x] 1..1 MS
* value[x] only SimpleQuantity
* valueQuantity.unit = "millimeter" 
* valueQuantity.system = $ucum
* valueQuantity.code = #mm

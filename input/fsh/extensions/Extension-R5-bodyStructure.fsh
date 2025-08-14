//Head
Extension: MII_EX_Bildgebung_Body_Structure_R5
Id: mii-ex-bildgebung-body-structure-r5
Title: "MII EX Bildgebung BodyStructure R5"
Description: "Die Extension ermöglicht es auf die BodyStructure zu referenzieren"
* ^url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.bodyStructure"
//Translation
* insert Translation(^name, en-US, MII_EX_Imaging_Body_Structure_R5)
* insert Translation(^title, en-US, MII EX Imaging Body Structure R5)
* insert Translation(^description, en-US, The extension allows the use of R5-bodyStructure in Observation.)
//Meta
* insert PR_CS_VS_Version
* insert LicenseCodeableCCBY40
* insert Publisher
* insert ExtensionContext(Observation)
* ^experimental = false
//Extension
* value[x] 1.. MS
* value[x] only Reference(BodyStructure)
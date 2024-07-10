//Head
Extension: MII_EX_Bildgebung_Observation_Imaging
Id: mii-ex-bildgebung-observation-imaging
Title: "MII EX Bildgebung Observation Imaging"
Description: "Die Extension ermöglicht es, einer Beobachtung die Bildnummer hinzuzufügen"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-observation-imaging"
//Translation
* insert Translation(^name, en-US, MII_EX_Imaging_Observation_Imaging)
* insert Translation(^title, en-US, MII EX Imaging Observation Imaging)
* insert Translation(^description, en-US, The extension allows an observation to Reference to Imagenumbers)
* insert PR_CS_VS_Version
* ^experimental = false
* insert Publisher
* insert ExtensionContext(Observation)
//Profile
* extension contains
  numberOfImage 0..1 and
  SOPInstanceUID 0..1 and
  http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.bodyStructure named bodyStructure 0..* MS //TODO Erklärung Extension, vll externe Extension

* extension[bodyStructure].extension[reference].valueReference only Reference(Observation)
* extension[numberOfImage].id
* extension[SOPInstanceUID].id
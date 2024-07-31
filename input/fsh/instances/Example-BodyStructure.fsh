Instance: mii-exa-bildgebung-koerperstruktur
InstanceOf: MII_PR_Bildgebung_Koerperstruktur
Usage: #example
Title: "MII Example Bildgebung BodyStructure"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-koerperstruktur"
* patient = Reference(Patient/example)
//* morphology = $bodyStructure#31593006
* location = $SCT#43799004
//* locationQualifier = $locationQualifier#255561001
* description = "Exampletext"
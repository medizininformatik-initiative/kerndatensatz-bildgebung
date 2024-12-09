CodeSystem: MII_CS_Bildgebung_Scanning_Sequence
Id: mii-cs-bildgebung-scanning-sequence
Title: "MII CS Bildgebung Scanning Sequence"
Description: "Scanning Sequence für MR Untersuchungen"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/CodeSystem/mii-cs-bildgebung-scanning-sequence"
* insert Translation(^name, en-US, MII_CS_Imaging_Scanning_Sequence)
* insert Translation(^title, en-US, MII CS Imaging Scanning Sequence)
* insert Translation(^description, en-US, Codes for scanning-sequence in radiological images)
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* insert LicenseCodeableCCBY40 
* insert PR_CS_VS_Date
* ^caseSensitive = true
* ^valueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/ValueSet/mii-vs-bildgebung-mr-scanning-sequence"
* ^content = #complete
* #SE "Spin Echo"
* #IR "Inversion Recovery"
* #GR "Gradient Recalled"
* #EP "Echo Planar"
* #RM "Research Mode"
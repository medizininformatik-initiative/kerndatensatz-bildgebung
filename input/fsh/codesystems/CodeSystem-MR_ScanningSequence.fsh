CodeSystem: MII_CS_Bildgebung_Scanning_Sequence
Id: mii-cs-bildgebung-scanning-sequence
Title: "MII CS Bildgebung Scanning Sequence"
Description: "Scanning Sequence für MR Untersuchungen"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/CodeSystem/mii-cs-bildgebung-scanning-sequence"
* insert PR_CS_VS_Version
* insert Publisher
* insert PR_CS_VS_Date
* ^status = #active
* ^caseSensitive = true
* ^valueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/ValueSet/mii-vs-bildgebung-mr-scanning-sequence"
* ^content = #complete
* #SE "Spin Echo"
* #IR "Inversion Recovery"
* #GR "Gradient Recalled"
* #EP "Echo Planar"
* #RM "Research Mode"
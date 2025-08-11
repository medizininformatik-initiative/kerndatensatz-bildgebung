CodeSystem: MII_CS_Bildgebung_Scanning_Sequence_Variant
Id: mii-cs-bildgebung-scanning-sequence-variant
Title: "MII CS Bildgebung Scanning Sequence Variant"
Description: "Scanning Sequence Varianten für MR Untersuchungen"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/CodeSystem/mii-cs-bildgebung-scanning-sequence-variant"
* insert Translation(^name, en-US, MII_CS_Imaging_Scanning_Sequence_Variant)
* insert Translation(^title, en-US, MII CS Imaging Scanning Sequence Variant)
* insert Translation(^description, en-US, Codes for scanning-sequence-variant in radiological images)
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* insert LicenseCodeableCCBY40 
* insert PR_CS_VS_Date
* ^caseSensitive = true
* ^valueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/ValueSet/mii-vs-bildgebung-scanning-sequence-variant"
* ^content = #complete
* #SK "segmented k-space"
* #MTC "magnetization transfer contrast"
* #SS "steady state"
* #TRSS "time reversed steady state"
* #SP "spoiled"
* #MP "MAG prepared"
* #OSP "oversampling phase"
* #NONE "no sequence variant"
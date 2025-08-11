CodeSystem: MII_CS_Bildgebung_Transducer_Type
Id: mii-cs-bildgebung-transducer-type
Title: "MII CS Bildgebung Transducer Type"
Description: "Schallkopftyp für US Untersuchungen"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/CodeSystem/mii-cs-bildgebung-transducer-type"
* insert Translation(^name, en-US, MII_CS_Imaging_Transducer_Type)
* insert Translation(^title, en-US, MII CS Imaging Transducer Type)
* insert Translation(^description, en-US, Codes for transducer types in radiological ultrasound images)
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* insert LicenseCodeableCCBY40 
* insert PR_CS_VS_Date
* ^caseSensitive = true
* ^valueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/ValueSet/mii-vs-bildgebung-us-transducer-type"
* ^content = #complete
* #SECTOR_PHASED "Sector Phased"
* #SECTOR_MECH "Sector Mech"
* #SECTOR_ANNULAR "Sector Annular"
* #LINEAR "Linear"
* #CURVED_LINEAR "Curved Linear"
* #SINGLE_CRYSTAL "Single Crystal"
* #SPLIT_XTAL_CWD "Split Xtal CWD"
* #IV_PHASED "IV Phased"
* #IV_ROT_XTAL "IV Rot XTAL"
* #IV_ROT_MIRROR "IV Rot Mirror"
* #ENDOCAV_PA "Endocav PA"
* #ENDOCAV_MECH "Endocav Mech"
* #ENDOCAV_CLA "EndocavCLA"
* #ENDOCAV_AA "Endocav AA"
* #ENDOCAV_LINEAR "Endocav Linear"
* #VECTOR_PHASED "Vector Phased"
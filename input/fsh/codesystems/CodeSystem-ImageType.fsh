CodeSystem: MII_CS_Bildgebung_Instance_Image_Type
Id: mii-cs-bildgebung-instance-image-type
Title: "MII CS Bildgebung Instance Image Type"
Description: "Image type für Radiologische Bilder"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/CodeSystem/mii-cs-bildgebung-instance-image-type"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* ^date = "2024-10-30"
* ^caseSensitive = true
* ^valueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/ValueSet/mii-vs-bildgebung-instance-image-type"
* ^content = #complete
* #PDC "Pixel Data Characteristics"
* #PDC ^property[0].code = #child
* #PDC ^property[=].valueCode = #ORIGINAL 
* #PDC ^property[+].code = #child
* #PDC ^property[=].valueCode = #DERIVED 
* #ORIGINAL "identifies an original image"
* #ORIGINAL ^property[0].code = #parent
* #ORIGINAL ^property[=].valueCode = #PDC
* #DERIVED "identifies an derived image"
* #DERIVED ^property[0].code = #parent
* #DERIVED ^property[=].valueCode = #PDC
* #PEC "Patient Examination Characteristics"
* #PEC ^property[0].code = #child
* #PEC ^property[=].valueCode = #PRIMARY
* #PEC ^property[+].code = #child
* #PEC ^property[=].valueCode = #SECONDARY  
* #PRIMARY "identifies a primary image"
* #PRIMARY ^property[0].code = #parent
* #PRIMARY ^property[=].valueCode = #PEC
* #SECONDARY "identifies a secondary image"
* #SECONDARY ^property[0].code = #parent
* #SECONDARY ^property[=].valueCode = #PEC
* #MSC "Modality Specific Characteristics"
* #MSC ^property[0].code = #child
* #MSC ^property[=].valueCode = #CT
* #MSC ^property[+].code = #child
* #MSC ^property[=].valueCode = #MR 
* #MSC ^property[+].code = #child
* #MSC ^property[=].valueCode = #CR
* #CT "CT Specific Characteristics"
* #CT ^property[0].code = #parent
* #CT ^property[=].valueCode = #MSC
* #MR "MR Specific Characteristics"
* #MR ^property[0].code = #parent
* #MR ^property[=].valueCode = #MSC
* #CR "CR Specific Characteristics"
* #CR ^property[0].code = #parent
* #CR ^property[=].valueCode = #MSC
* #ISI "Implemetation Specific Identifiers"
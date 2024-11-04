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
* #CT ^property[+].code = #child
* #CT ^property[=].valueCode = #AXIAL
* #CT ^property[+].code = #child
* #CT ^property[=].valueCode = #LOCALIZER
* #AXIAL "a CT Cross-sectional Image"
* #AXIAL ^property[0].code = #parent
* #AXIAL ^property[=].valueCode = #CT
* #LOCALIZER "a CT Localizer Image"
* #LOCALIZER ^property[0].code = #parent
* #LOCALIZER ^property[=].valueCode = #CT
* #MR "MR Specific Characteristics"
* #MR ^property[0].code = #parent
* #MR ^property[=].valueCode = #MSC
* #MR ^property[0].code = #child
* #MR ^property[=].valueCode = #DENSITYMAP
* #MR ^property[0].code = #child
* #MR ^property[=].valueCode = #DIFFUSIONMAP
* #MR ^property[0].code = #child
* #MR ^property[=].valueCode = #IMAGEADDITION
* #MR ^property[0].code = #child
* #MR ^property[=].valueCode = #MODULUSSUBTRACT
* #MR ^property[0].code = #child
* #MR ^property[=].valueCode = #MPR
* #MR ^property[0].code = #child
* #MR ^property[=].valueCode = #OTHER
* #MR ^property[0].code = #child
* #MR ^property[=].valueCode = #PHASEMAP
* #MR ^property[0].code = #child
* #MR ^property[=].valueCode = #PHASESUBTRACT
* #MR ^property[0].code = #child
* #MR ^property[=].valueCode = #PROJECTIONIMAGE
* #MR ^property[0].code = #child
* #MR ^property[=].valueCode = #T1MAP
* #MR ^property[0].code = #child
* #MR ^property[=].valueCode = #T2MAP
* #MR ^property[0].code = #child
* #MR ^property[=].valueCode = #VELOCITYMAP
* #DENSITYMAP "Density Map"
* #DENSITYMAP ^property[0].code = #parent
* #DENSITYMAP ^property[=].valueCode = #MR
* #DIFFUSIONMAP "Diffusion Map"
* #DIFFUSIONMAP ^property[0].code = #parent
* #DIFFUSIONMAP ^property[=].valueCode = #MR
* #IMAGEADDITION "Image Addition"
* #IMAGEADDITION ^property[0].code = #parent
* #IMAGEADDITION ^property[=].valueCode = #MR
* #MODULUSSUBTRACT "Modulus Substract"
* #MODULUSSUBTRACT ^property[0].code = #parent
* #MODULUSSUBTRACT ^property[=].valueCode = #MR
* #MPR "MPR"
* #MPR ^property[0].code = #parent
* #MPR ^property[=].valueCode = #MR
* #OTHER "Other"
* #OTHER ^property[0].code = #parent
* #OTHER ^property[=].valueCode = #MR
* #PHASEMAP "Phase Map"
* #PHASEMAP ^property[0].code = #parent
* #PHASEMAP ^property[=].valueCode = #MR
* #PHASESUBTRACT "Phase Substract"
* #PHASESUBTRACT ^property[0].code = #parent
* #PHASESUBTRACT ^property[=].valueCode = #MR
* #PROJECTIONIMAGE "Projection Image"
* #PROJECTIONIMAGE ^property[0].code = #parent
* #PROJECTIONIMAGE ^property[=].valueCode = #MR
* #T1MAP "T1 Map"
* #T1MAP ^property[0].code = #parent
* #T1MAP ^property[=].valueCode = #MR
* #T2MAP "T2 Map"
* #T2MAP ^property[0].code = #parent
* #T2MAP ^property[=].valueCode = #MR
* #VELOCITYMAP "Velocity Map"
* #VELOCITYMAP ^property[0].code = #parent
* #VELOCITYMAP ^property[=].valueCode = #MR
* #DX "DX Specific Characteristics"
* #DX ^property[0].code = #parent
* #DX ^property[=].valueCode = #MSC
* #ISI "Implemetation Specific Identifiers"
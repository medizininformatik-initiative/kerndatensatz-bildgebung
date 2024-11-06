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
* ^content = #complete
//Pixel Data Characteristics
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
//Patient Examinatiion Characteristics
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
//Modality Specific Characteristics
* #MSC "Modality Specific Characteristics"
* #MSC ^property[0].code = #child
* #MSC ^property[=].valueCode = #CT
* #MSC ^property[+].code = #child
* #MSC ^property[=].valueCode = #MR 
* #MSC ^property[+].code = #child
* #MSC ^property[=].valueCode = #CR
* #MSC ^property[+].code = #child
* #MSC ^property[=].valueCode = #NM
* #MSC ^property[+].code = #child
* #MSC ^property[=].valueCode = #XR
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
* #NM "NM Specific Characteristics"
* #NM ^property[0].code = #parent
* #NM ^property[=].valueCode = #MSC
* #NM ^property[+].code = #child
* #NM ^property[=].valueCode = #STATIC
* #NM ^property[+].code = #child
* #NM ^property[=].valueCode = #DYNAMIC
* #NM ^property[+].code = #child
* #NM ^property[=].valueCode = #GATED
* #NM ^property[+].code = #child
* #NM ^property[=].valueCode = #WHOLEBODY
* #NM ^property[+].code = #child
* #NM ^property[=].valueCode = #TOMO
* #NM ^property[+].code = #child
* #NM ^property[=].valueCode = #GATEDTOMO
* #NM ^property[+].code = #child
* #NM ^property[=].valueCode = #RECONTOMO
* #NM ^property[+].code = #child
* #NM ^property[=].valueCode = #RECONGATEDTOMO
* #STATIC "Static"
* #STATIC ^property[0].code = #parent
* #STATIC ^property[=].valueCode = #NM
* #DYNAMIC "Dynamic"
* #DYNAMIC ^property[+].code = #parent
* #DYNAMIC ^property[=].valueCode = #NM
* #GATED "Gated"
* #GATED ^property[+].code = #parent
* #GATED ^property[=].valueCode = #NM
* #WHOLEBODY "Whole Body"
* #WHOLEBODY ^property[+].code = #parent
* #WHOLEBODY ^property[=].valueCode = #NM
* #TOMO "Tomo"
* #TOMO ^property[+].code = #parent
* #TOMO ^property[=].valueCode = #NM
* #GATEDTOMO "Gated Tomo"
* #GATEDTOMO ^property[+].code = #parent
* #GATEDTOMO ^property[=].valueCode = #NM
* #RECONTOMO "Recon Tomo"
* #RECONTOMO ^property[+].code = #parent
* #RECONTOMO ^property[=].valueCode = #NM
* #RECONGATEDTOMO "Recon Gated Tomo"
* #RECONGATEDTOMO ^property[+].code = #parent
* #RECONGATEDTOMO ^property[=].valueCode = #NM
//Implemation Specific Identifiers
* #ISI "Implemetation Specific Identifiers"
* #ISI ^property[0].code = #child
* #ISI ^property[=].valueCode = #NMI
* #NMI "NM implematation"
* #NMI ^property[0].code = #parent
* #NMI ^property[=].valueCode = #ISI
* #NMI ^property[+].code = #child
* #NMI ^property[=].valueCode = #EMISSION
* #NMI ^property[+].code = #child
* #NMI ^property[=].valueCode = #TRANSMISSION
* #EMISSION "Emission"
* #EMISSION ^property[0].code = #parent
* #EMISSION ^property[=].valueCode = #NMI
* #TRANSMISSION "Transmission"
* #TRANSMISSION ^property[+].code = #parent
* #TRANSMISSION ^property[=].valueCode = #NMI
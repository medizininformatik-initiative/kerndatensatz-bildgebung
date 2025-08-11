CodeSystem: MII_CS_Bildgebung_Instance_Image_Type
Id: mii-cs-bildgebung-instance-image-type
Title: "MII CS Bildgebung Instance Image Type"
Description: "Image type für Radiologische Bilder"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/CodeSystem/mii-cs-bildgebung-instance-image-type"
* insert Translation(^name, en-US, MII_CS_Imaging_Image_Type)
* insert Translation(^title, en-US, MII CS Imaging Image Type)
* insert Translation(^description, en-US, Codes for Image Type in radiological images)
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* insert LicenseCodeableCCBY40 
* insert PR_CS_VS_Date
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
* #MSC ^property[+].code = #child
* #MSC ^property[=].valueCode = #US
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
* #US "US Specific Characteristics"
* #US ^property[0].code = #parent
* #US ^property[=].valueCode = #MSC
* #US ^property[+].code = #child
* #US ^property[=].valueCode = #ADOMINAL
* #US ^property[+].code = #child
* #US ^property[=].valueCode = #BREAST
* #US ^property[+].code = #child
* #US ^property[=].valueCode = #CHEST
* #US ^property[+].code = #child
* #US ^property[=].valueCode = #ENDOCAVITARY
* #US ^property[+].code = #child
* #US ^property[=].valueCode = #ENDORECTAL
* #US ^property[+].code = #child
* #US ^property[=].valueCode = #ENDOVAGINAL
* #US ^property[+].code = #child
* #US ^property[=].valueCode = #EPICARDIAL
* #US ^property[+].code = #child
* #US ^property[=].valueCode = #FETAL_HEART
* #US ^property[+].code = #child
* #US ^property[=].valueCode = #GYNECOLOGY
* #US ^property[+].code = #child
* #US ^property[=].valueCode = #INTRACARDIAC
* #US ^property[+].code = #child
* #US ^property[=].valueCode = #INTRAOPERATIVE
* #US ^property[+].code = #child
* #US ^property[=].valueCode = #INTRAVASCULAR
* #US ^property[+].code = #child
* #US ^property[=].valueCode = #MUSCULOSKELETAL
* #US ^property[+].code = #child
* #US ^property[=].valueCode = #NEONATAL_HEAD
* #US ^property[+].code = #child
* #US ^property[=].valueCode = #OBSTETRICAL
* #US ^property[+].code = #child
* #US ^property[=].valueCode = #OPHTHALMIC
* #US ^property[+].code = #child
* #US ^property[=].valueCode = #PEDIATRIC
* #US ^property[+].code = #child
* #US ^property[=].valueCode = #PELVIC
* #US ^property[+].code = #child
* #US ^property[=].valueCode = #RETROPERITONEAL
* #US ^property[+].code = #child
* #US ^property[=].valueCode = #SCROTAL
* #US ^property[+].code = #child
* #US ^property[=].valueCode = #SMALL_PARTS
* #US ^property[+].code = #child
* #US ^property[=].valueCode = #TEE
* #US ^property[+].code = #child
* #US ^property[=].valueCode = #THYROID
* #US ^property[+].code = #child
* #US ^property[=].valueCode = #TRANSCRANIAL
* #US ^property[+].code = #child
* #US ^property[=].valueCode = #TTE
* #US ^property[+].code = #child
* #US ^property[=].valueCode = #US_BIOPSY
* #US ^property[+].code = #child
* #US ^property[=].valueCode = #VASCULAR
* #ABDOMINAL "ABDOMINAL"
* #ABDOMINAL ^property[0].code = #parent
* #ABDOMINAL ^property[=].valueCode = #US
* #BREAST "BREAST"
* #BREAST ^property[+].code = #parent
* #BREAST ^property[=].valueCode = #US
* #CHEST "CHEST"
* #CHEST ^property[+].code = #parent
* #CHEST ^property[=].valueCode = #US
* #ENDOCAVITARY "ENDOCAVITARY"
* #ENDOCAVITARY ^property[+].code = #parent
* #ENDOCAVITARY ^property[=].valueCode = #US
* #ENDORECTAL "ENDORECTAL"
* #ENDORECTAL ^property[+].code = #parent
* #ENDORECTAL ^property[=].valueCode = #US
* #ENDOVAGINAL "ENDOVAGINAL"
* #ENDOVAGINAL ^property[+].code = #parent
* #ENDOVAGINAL ^property[=].valueCode = #US
* #EPICARDIAL "EPICARDIAL"
* #EPICARDIAL ^property[+].code = #parent
* #EPICARDIAL ^property[=].valueCode = #US
* #FETAL_HEART "FETAL HEART"
* #FETAL_HEART ^property[+].code = #parent
* #FETAL_HEART ^property[=].valueCode = #US
* #GYNECOLOGY "GYNECOLOGY"
* #GYNECOLOGY ^property[+].code = #parent
* #GYNECOLOGY ^property[=].valueCode = #US
* #INTRACARDIAC "INTRACARDIAC"
* #INTRACARDIAC ^property[+].code = #parent
* #INTRACARDIAC ^property[=].valueCode = #US
* #INTRAOPERATIVE "INTRAOPERATIVE"
* #INTRAOPERATIVE ^property[+].code = #parent
* #INTRAOPERATIVE ^property[=].valueCode = #US
* #INTRAVASCULAR "INTRAVASCULAR"
* #INTRAVASCULAR ^property[+].code = #parent
* #INTRAVASCULAR ^property[=].valueCode = #US
* #MUSCULOSKELETAL "MUSCULOSKELETAL"
* #MUSCULOSKELETAL ^property[+].code = #parent
* #MUSCULOSKELETAL ^property[=].valueCode = #US
* #NEONATAL_HEAD "NEONATAL HEAD"
* #NEONATAL_HEAD ^property[+].code = #parent
* #NEONATAL_HEAD ^property[=].valueCode = #US
* #OBSTETRICAL "OBSTETRICAL"
* #OBSTETRICAL ^property[+].code = #parent
* #OBSTETRICAL ^property[=].valueCode = #US
* #OPHTHALMIC "OPHTHALMIC"
* #OPHTHALMIC ^property[+].code = #parent
* #OPHTHALMIC ^property[=].valueCode = #US
* #PEDIATRIC "PEDIATRIC"
* #PEDIATRIC ^property[+].code = #parent
* #PEDIATRIC ^property[=].valueCode = #US
* #PELVIC "PELVIC"
* #PELVIC ^property[+].code = #parent
* #PELVIC ^property[=].valueCode = #US
* #RETROPERITONEAL "RETROPERITONEAL"
* #RETROPERITONEAL ^property[+].code = #parent
* #RETROPERITONEAL ^property[=].valueCode = #US
* #SCROTAL "SCROTAL"
* #SCROTAL ^property[+].code = #parent
* #SCROTAL ^property[=].valueCode = #US
* #SMALL_PARTS "SMALL PARTS"
* #SMALL_PARTS ^property[+].code = #parent
* #SMALL_PARTS ^property[=].valueCode = #US
* #TEE "TEE"
* #TEE ^property[+].code = #parent
* #TEE ^property[=].valueCode = #US
* #THYROID "THYROID"
* #THYROID ^property[+].code = #parent
* #THYROID ^property[=].valueCode = #US
* #TRANSCRANIAL "TRANSCRANIAL"
* #TRANSCRANIAL ^property[+].code = #parent
* #TRANSCRANIAL ^property[=].valueCode = #US
* #TTE "TTE"
* #TTE ^property[+].code = #parent
* #TTE ^property[=].valueCode = #US
* #US_BIOPSY "US BIOPSY"
* #US_BIOPSY ^property[+].code = #parent
* #US_BIOPSY ^property[=].valueCode = #US
* #VASCULAR "VASCULAR"
* #VASCULAR ^property[+].code = #parent
* #VASCULAR ^property[=].valueCode = #US
//Implemation Specific Identifiers
* #ISI "Implemetation Specific Identifiers"
* #ISI ^property[0].code = #child
* #ISI ^property[=].valueCode = #NMI
* #ISI ^property[+].code = #child
* #ISI ^property[=].valueCode = #USI
* #NMI "NM Implematation"
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
* #USI "US Implemantation"
* #USI ^property[0].code = #parent
* #USI ^property[=].valueCode = #ISI
* #USI ^property[+].code = #child
* #USI ^property[=].valueCode = #0001
* #USI ^property[+].code = #child
* #USI ^property[=].valueCode = #0002
* #USI ^property[0].code = #child
* #USI ^property[=].valueCode = #0004
* #USI ^property[+].code = #child
* #USI ^property[=].valueCode = #0008
* #USI ^property[+].code = #child
* #USI ^property[=].valueCode = #0010
* #USI ^property[0].code = #child
* #USI ^property[=].valueCode = #0020
* #USI ^property[+].code = #child
* #USI ^property[=].valueCode = #0040
* #USI ^property[+].code = #child
* #USI ^property[=].valueCode = #0100
* #USI ^property[0].code = #child
* #USI ^property[=].valueCode = #0200
* #USI ^property[+].code = #child
* #USI ^property[=].valueCode = #0400
* #0001 "2D Imaging"
* #0001 ^property[+].code = #parent
* #0001 ^property[=].valueCode = #USI
* #0002 "M-Mode"
* #0002 ^property[+].code = #parent
* #0002 ^property[=].valueCode = #USI
* #0004 "CW Doppler"
* #0004 ^property[+].code = #parent
* #0004 ^property[=].valueCode = #USI
* #0008 "PW Doppler"
* #0008 ^property[+].code = #parent
* #0008 ^property[=].valueCode = #USI
* #0010 "Color Doppler"
* #0010 ^property[+].code = #parent
* #0010 ^property[=].valueCode = #USI
* #0020 "Color M-Mode"
* #0020 ^property[+].code = #parent
* #0020 ^property[=].valueCode = #USI
* #0040 "3D Rendering"
* #0040 ^property[+].code = #parent
* #0040 ^property[=].valueCode = #USI
* #0100 "Color Power Mode"
* #0100 ^property[+].code = #parent
* #0100 ^property[=].valueCode = #USI
* #0200 "Tissue Characterization"
* #0200 ^property[+].code = #parent
* #0200 ^property[=].valueCode = #USI
* #0400 "Spatially-related frames"
* #0400 ^property[+].code = #parent
* #0400 ^property[=].valueCode = #USI

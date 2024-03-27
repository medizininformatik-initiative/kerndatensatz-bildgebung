Extension: MII_EX_ImagingContrast
Id: mii-ex-imagingContrast
Title: "MII EX ImagingContrast"
Description: "Die Extension ermöglicht es, die Gabe von Kontrastmitteln auf Serien-Ebene anzugeben."
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/wirkstoffrelation" //TODO
* insert Translation(^name, en-US, MII_EX_ImagingStudy)
* insert Translation(^title, en-US, MII_EX_ImagingStudy)
* insert Translation(^description, en-US, The extension allows specifying the administration of contrast agents at the series level.)
* insert PR_CS_VS_Version
* ^experimental = false
* insert Publisher
* insert ExtensionContext(ImagingStudy.series)
* extension contains
    contrastBolus 1..1 MS and
    contrastBolusDetails 0..* 

* extension[contrastBolus].value[x]  only boolean
* extension[contrastBolusDetails].value[x]  only Reference(MedicationStatement)

CodeSystem: MII_CS_Bildgebung_Series_Type
Id: mii-cs-bildgebung-series-type
Title: "MII CS Bildgebung Series Type"
Description: "Series Type für PET Untersuchungen"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/CodeSystem/mii-cs-bildgebung-series-type"
* insert Translation(^name, en-US, MII_CS_Imaging_Series_Type)
* insert Translation(^title, en-US, MII CS Imaging Series Type)
* insert Translation(^description, en-US, Codes for series Type in radiological images)
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* insert LicenseCodeableCCBY40 
* insert PR_CS_VS_Date
* ^caseSensitive = true
* ^content = #complete
* #STATIC "a group of images at varying spatial locations at the same time"
* #DYNAMIC "a group of images at a set of spatial locations (e.g., slices) at varying time slices, with all spatial locations acquired at all time slices"
* #GATED "a group of images at the same spatial location, same starting and ending time, but acquired in different time slots of (possibly) different R-R intervals"
* #WHOLEBODY "same as STATIC, except covering multiple transverse fields of view (and therefore acquired at a different time)"
* #IMAGE "a tomographic image slice"
* #REPROJECTION "a projection image derived from forward projection through slices of tomographic images, using the algorithm defined in Reprojection Method (0054,1004)"
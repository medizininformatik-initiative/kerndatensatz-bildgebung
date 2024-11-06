ValueSet: MII_VS_Bildgebung_ImagingStudy_series_viewPosition
Id: mii-vs-bildgebung-imagingStudy-series-viewPosition
Title: "MII VS Bildgebung ImagingStudy-Series View Position"
Description: "Import the ValueSets for view position in MG and DX/CR series"
* insert Publisher
* insert PR_CS_VS_Version
* insert PR_CS_VS_Date
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^experimental = false
* include codes from valueset http://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_4014.html
* include codes from valueset http://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_4010.html
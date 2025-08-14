//HEad
Extension: MII_EX_Bildgebung_Supporting_Info_R5
Id: mii-ex-bildgebung-supporting-info-r5
Title: "MII EX Bildgebung Supporting Info R5"
Description: "Die Extension ermöglicht es im DiagnosticReport eine R5 Item zu benutzen"
* ^url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.supportingInfo"
//Translation
* insert Translation(^name, en-US, MII_EX_Imaging_Supporting_Info_R5)
* insert Translation(^title, en-US, MII EX Imaging Supporting Info R5)
* insert Translation(^description, en-US, The extension allows the use of R5-supportingInfo in DiagnosticReport.)
//Meta
* insert PR_CS_VS_Version
* insert LicenseCodeableCCBY40
* insert Publisher
* insert ExtensionContext(DiagnosticReport)
* ^experimental = false
//Extension
* extension contains
    reference 1..1 MS and
    type 1..1 MS
* extension[type].value[x] only CodeableConcept
* extension[type].valueCodeableConcept.coding = $v2-0936#SCI
* extension[reference].value[x] only Reference
* extension[reference].valueReference only Reference(DiagnosticReport or Procedure)
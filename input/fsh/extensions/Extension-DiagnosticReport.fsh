//Head
Extension: MII_EX_Bildgebung_DiagnosticReport
Id: mii-ex-bildgebung-diagnostic-report
Title: "MII EX Bildgebung Diagnostic Report"
Description: "Die Extension ermöglicht es, einer Beobachtung die Bildnummer hinzuzufügen"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-diagnostic-report"
//Translation
* insert Translation(^name, en-US, MII_EX_Imaging_Diagnostic_Report)
* insert Translation(^title, en-US, MII EX Imaging Diagnostic Report)
* insert Translation(^description, en-US, The extension allows an observation to Reference to Imagenumbers)
//Meta
* insert PR_CS_VS_Version
* ^experimental = false
* insert Publisher
* insert ExtensionContext(DiagnosticReport)
//Extension
* extension contains
  http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.supportingInfo named supportingInfo 0..* MS
* extension[supportingInfo].extension[reference].valueReference only Reference(MII_PR_Bildgebung_Radiologischer_Befund or MII_PR_Bildgebung_Radiologische_Befundungsprozedur)


//effDateTime
//effPeriod
//TODO: presentedForm

Instance: mii-sp-bildgebung-diagnostic-report-supporting-info
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-diagnostic-report-supporting-info"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Diagnostic_Report_Supporting_Info"
* status = #active
* experimental = false
* date = "2024-07-19"
* description = "Suchparameter für DiagnosticReport.supportingInfo"
* code = #supportingInfo
* base = #DiagnosticReport
* type = #reference
* expression = "DiagnosticReport.supportingInfo"
* target = #DiagnosticReport

Instance: mii-sp-bildgebung-diagnostic-report-imaging-study
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-diagnostic-report-imaging-study"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Diagnostic_Report_Imaging_Study"
* status = #active
* experimental = false
* date = "2024-07-19"
* description = "Suchparameter für DiagnosticReport.imagingStudy"
* code = #imagingStudy
* base = #DiagnosticReport
* type = #reference
* expression = "DiagnosticReport.imagingStudy"
* target = #ImagingStudy

Instance: mii-sp-bildgebung-diagnostic-report-conclusion-code
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-diagnostic-report-conclusion-code"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Diagnostic_Report_Conclusion_Code"
* status = #active
* experimental = false
* date = "2024-07-19"
* description = "Suchparameter für DiagnosticReport.conclusionCode"
* code = #conclusionCode
* base = #DiagnosticReport
* type = #token
* expression = "DiagnosticReport.conclusionCode"
* modifier[+] = #text
* modifier[+] = #not
* modifier[+] = #above
* modifier[+] = #below
* modifier[+] = #in
* modifier[+] = #not-in
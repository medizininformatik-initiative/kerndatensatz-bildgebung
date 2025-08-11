Instance: mii-exa-bildgebung-tnm-radiologische-befundungsprozedur
InstanceOf: MII_PR_Bildgebung_Radiologische_Befundungsprozedur
Usage: #example
Title: "Example of a TNM Radiological Read Procedure"
//* category = $SCT#103693007 "Diagnostic procedure"
* status = #completed
* subject = Reference(Patient/PatExample)
* category = $SCT#165197003 "Diagnostic assessment (procedure)"
* code = $SCT#254317004 "TNM Lung and pleural tumor staging"
* performedDateTime = "2024-07-19T12:03:30+02:00"
* report = Reference(DiagnosticReport/mii-exa-bildgebung-radiologischer-Befund)
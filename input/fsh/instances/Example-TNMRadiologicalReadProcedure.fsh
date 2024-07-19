Instance: mii-exa-bildgebung-tnm-radiologische-befundungsprozedur
InstanceOf: MII_PR_Bildgebung_Radiologische_Befundungsprozedur
Usage: #example
Title: "Example of a TNM Radiological Read Procedure"
* category = $SCT#103693007 "Diagnostic procedure"
* status = #completed
* subject = Reference(Patient/examplePatient)
* code = $SCT#254317004 "TNM Lung and pleural tumor staging"
* report = Reference(DiagnosticReport/exampleDiagnosticReport)
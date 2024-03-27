//TNM Example
Instance: example-radiological-tnm-read-procedure
InstanceOf: radiological-tnm-read-procedure
Usage: #example
Title: "Example of a TNM Radiological Read Procedure"
* category = $SCT#103693007 "Diagnostic procedure"
* status = #completed
* subject = Reference(Patient/examplePatient)
* code = $SCT#254317004 "TNM Lung and pleural tumor staging"
* report = Reference(DiagnosticReport/exampleDiagnosticReport)
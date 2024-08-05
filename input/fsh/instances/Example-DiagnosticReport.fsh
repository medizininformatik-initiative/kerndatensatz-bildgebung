Instance: mii-exa-bildgebung-radiologischer-Befund
InstanceOf: MII_PR_Bildgebung_Radiologischer_Befund
Usage: #example
Title: "MII Example Bildgebung Diagnostic Report"
* basedOn = Reference(ServiceRequest/example)
* status = #final
* category.coding[snomed-ct] = $SCT#4201000179104 "Imaging report"
* code = $SCT#4231000179109 "Mammography report"
* subject = Reference(Patient/example)
* encounter = Reference(Encounter/example)
* effectiveDateTime = "2024-07-19T12:03:30+02:00"
* issued = "2024-07-19T12:03:30+02:00"
* result = Reference (Observation/example)
* imagingStudy = Reference (ImagingStudy/example)
* conclusion = "There is no problematic observation"
* conclusionCode = $SCT#1230003 "No diagnosis on Axis 1"
//* extension[supportingInfo].value[Observation/example]
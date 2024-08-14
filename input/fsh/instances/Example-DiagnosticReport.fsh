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
* conclusion = "There are suspicious microcalcifications in the upper outer quadrant in the left breast"
* conclusionCode = $SCT#12747003 "Microcalcification, calcified structure (morphologic abnormality)"
* extension[http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.supportingInfo].extension[type].valueCodeableConcept = $v2-0936#SCI "Supporting Clinical Information"
* extension[http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.supportingInfo].extension[reference].valueReference = Reference(DiagnosticReport/example)
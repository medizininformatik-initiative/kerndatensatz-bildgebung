//Example of a Radiological Diagnostic Report
Instance: mii-exa-bildgebung-radiologischerBefund
InstanceOf: MII_PR_Bildgebung_RadiologischerBefund
Usage: #example
Title: "MII Example Bildgebung Diagnostic Report"
* code = $SCT#4231000179109 "Mammography report"
* status = #final
* basedOn = Reference(ExampleServiceRequest)
* category.coding[snomed-ct] = $SCT#4201000179104 "Imaging report"
* subject = Reference(ExamplePatient)
* extension.url = "https://www.vision-zero-oncology.de/fhir/StructureDefinition/supportingInfo"
* extension.valueReference = Reference(Observation/ExampleFindingObservation)
* extension.url = "https://www.vision-zero-oncology.de/fhir/StructureDefinition/supportingInfo"
* extension.valueReference = Reference(Procedure/ExampleProcedure)
* result = Reference (ExampleResultObservation)
* imagingStudy = Reference (ExampleStudy)
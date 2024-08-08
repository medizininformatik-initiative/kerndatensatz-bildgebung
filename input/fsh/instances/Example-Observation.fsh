Instance: mii-exa-bildgebung-radiologische-beobachtung
InstanceOf: MII_PR_Bildgebung_Radiologische_Beobachtung
Usage: #example
Title: "MII Example Bildgebung Radiologische Beobachtung"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-radiologische-beobachtung"
* extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-serie-uid].valueId = "example-serie-uid"
* extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-sop-instanz-uid].valueId = "example-instanz-uid"
* extension[http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.bodyStructure].valueReference = Reference(BodyStructure/example)
* partOf = Reference(Procedure/Readexample)
* status = #final
* category = $observation-category#imaging
* code = $loinc#10207-9 "Physical Findings of Thorax and Lungs Narrrative"
* subject = Reference(Patient/example)
* issued = "2024-07-19T12:03:30+02:00"
* valueString = "Obstructive Finding in the right lower lobe of the lung"
* bodySite = $SCT#266005 "Right lower lobe of lung"
* hasMember = Reference(Observation/example)
* derivedFrom = Reference(ImagingStudy/example)
* component.code = $loinc#10177-4 "History of Respiratory system disorders Narrative"
* component.valueBoolean = true

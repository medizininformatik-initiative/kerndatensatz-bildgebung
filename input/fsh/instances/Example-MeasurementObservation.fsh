Instance: mii-exa-bildgebung-radiologische-messung
InstanceOf: MII_PR_Bildgebung_Radiologische_Messung
Usage: #example
Title: "MII Example Bildgebung Radiologische Messung"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-radiologische-messung"
* extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-series-uid].valueId = "example-series-uid"
* extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-sop-instanz-uid].valueId = "example-sop-instance-uid"
* partOf = Reference(Procedure/mii-exa-bildgebung-radiologische-befundungsprozedur)
* status = #final
* category = $SCT#122869004 "Measurement procedure (procedure)"
* code = $SCT#439984002 "Diameter of structure by imaging measurement (observable entity)"
* subject = Reference(Patient/PatExample)
* issued = "2024-07-19T12:03:30+02:00"
* bodySite = $SCT#76752008 "Breast structure (body structure)"
* bodySite.extension[$bodyStructure].valueReference = Reference(BodyStructure/mii-exa-bildgebung-koerperstruktur)
* hasMember = Reference(Observation/ObsExample)
* derivedFrom = Reference(ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-ct)
* valueQuantity.value = 4.2
* valueQuantity.system = $ucum
* valueQuantity.unit = "millimeter"
* valueQuantity.code = #mm
* method.coding.code = $SCT#272391002
* method.coding.system = $SCT
* method.coding.display = "Measurement technique (qualifier value)"
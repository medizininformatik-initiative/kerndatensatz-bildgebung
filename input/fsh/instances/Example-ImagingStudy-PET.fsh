Instance: mii-exa-bildgebung-bildgebungsstudie-pt
InstanceOf: MII_PR_Bildgebung_Bildgebungsstudie
Usage: #example
Title: "MII Example Bildgebung Imaging Study PT"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-bildgebungsstudie"
* extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-bildgebungsgrund].valueString = "Verdacht auf Karzinom"
* status = #available
* modality = $DCM#PT "Positron emission tomography"
* subject = Reference(Patient/PatExample)
* subject.identifier.type = $v2-0203#MR "Medical record number"
* subject.identifier.system = "https://system-url"
* subject.identifier.value = "study-uid"
* encounter = Reference(Encounter/EncExample)
* basedOn = Reference(ServiceRequest/mii-exa-bildgebung-anforderung-bildgebung)
* numberOfSeries = 2
* numberOfInstances = 390
* procedureReference = Reference(Procedure/mii-exa-bildgebung-bildgebungsprozedur)
* reasonReference = Reference(Condition/CondExample)
* description = "whole body aquisition"
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-pt].extension[radiopharmaceutical].valueCodeableConcept.coding = $SCT#35321007 "Fluorodeoxyglucose (18-F) (substance)"
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-pt].extension[tracerExposureTime].valueQuantity.value = 10000
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-pt].extension[tracerExposureTime].valueQuantity.unit = "Seconds"
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-pt].extension[radionuclideTotalDose].valueQuantity.value = 196
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-pt].extension[radionuclideTotalDose].valueQuantity.unit = "Becquerel"
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-pt].extension[radionuclideHalfLife].valueQuantity.value = 6586.2
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-pt].extension[radionuclideHalfLife].valueQuantity.unit = "Seconds"
* series.uid = "series-example-uid"
* series.performer.actor = Reference(Device/DevExample)
* series.number = 1
* series.modality = $DCM#PT "Positron emission tomography"
* series.description = "PET WB"
* series.numberOfInstances = 195
* series.bodySite = $SCT#51185008 "Thoracic structure (body structure)"
* series.laterality = $SCT#66459002 "Unilateral"
* series.started = "2024-07-19T12:03:30+02:00"
* series.instance.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-details].extension[pixelSpacingX].valueQuantity.value = 2.89
* series.instance.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-details].extension[pixelSpacingX].valueQuantity.unit = "millimeter"
* series.instance.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-details].extension[pixelSpacingY].valueQuantity.value = 2.89
* series.instance.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-details].extension[pixelSpacingY].valueQuantity.unit = "millimeter"
* series.instance.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-details].extension[sliceThickness].valueQuantity.value = 4
* series.instance.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-details].extension[sliceThickness].valueQuantity.unit = "millimeter"
* series.instance.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-details].extension[imageType].valueString = "['ORIGINAL', 'PRIMARY']"
* series.instance.uid = "instance-example-uid"
* series.instance.sopClass = urn:ietf:rfc:3986#urn:oid:1.2.840.10008.5.1.4.1.1.128
* series.instance.number = 31

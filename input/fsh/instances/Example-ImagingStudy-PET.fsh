Instance: mii-exa-bildgebung-bildgebungsstudie-pt
InstanceOf: MII_PR_Bildgebung_Bildgebungsstudie
Usage: #example
Title: "MII Example Bildgebung Imaging Study PT"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-bildgebungsstudie"
* extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-bildgebungsgrund].valueString = "Verdacht auf Karzinom"
* status = #available
* subject = Reference(Patient/example)
* subject.identifier.type = $v2-0203#MR
* subject.identifier.system = "https://system-url"
* subject.identifier.value = "study-uid"
* encounter = Reference(Encouter/example)
* basedOn = Reference(CarePlan/example)
* numberOfSeries = 2
* numberOfInstances = 390
* procedureReference = Reference(ImagingProcedure/example)
//* reasonReference = Reference()
* description = "whole body aquisition"
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-pt-nm].extension[radiopharmaceutical].valueCodeableConcept.coding = $radiopharmaceutical#35321007 
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-pt-nm].extension[radiopharmaceuticalStartTime].valueDateTime = "2024-07-19T12:03:30+02:00"
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-pt-nm].extension[rescaleType].valueString = "BQML"
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-pt-nm].extension[radionuclideTotalDose].valueQuantity.value = 196000000
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-pt-nm].extension[radionuclideTotalDose].valueQuantity.unit = "Megabecquerel"
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-pt-nm].extension[radionuclideHalfLife].valueQuantity.value = 6586.2
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-pt-nm].extension[radionuclideHalfLife].valueQuantity.unit = "Seconds"
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-geraet-hersteller].extension[manufacturer].valueString = "Beispielhersteller" 
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-geraet-hersteller].extension[manufacturerModelName].valueString = "Beispielmodell"
* series.uid = "series-example-uid"
* series.number = 1
* series.modality = $DCM#PT "Positron emission tomography"
* series.description = "PET WB"
* series.numberOfInstances = 195
* series.bodySite = $SCT#51185008 "Thoracic structure (body structure)"
//* series.laterality =
* series.started = "2024-07-19T12:03:30+02:00"
* series.instance.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-serie].extension[pixelSpacing(x)].valueQuantity.value = 2.89
* series.instance.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-serie].extension[pixelSpacing(x)].valueQuantity.unit = "millimeter"
* series.instance.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-serie].extension[pixelSpacing(y)].valueQuantity.value = 2.89
* series.instance.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-serie].extension[pixelSpacing(y)].valueQuantity.unit = "millimeter"
* series.instance.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-serie].extension[sliceThickness].valueQuantity.value = 4
* series.instance.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-serie].extension[sliceThickness].valueQuantity.unit = "millimeter"
* series.instance.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-serie].extension[imageType].valueString = "['ORIGINAL', 'PRIMARY']"
* series.instance.uid = "instance-example-uid"
* series.instance.sopClass = urn:ietf:rfc:3986#urn:oid:1.2.840.10008.5.1.4.1.1.128
* series.instance.number = 31

Instance: mii-exa-bildgebung-bildgebungsstudie-ct
InstanceOf: MII_PR_Bildgebung_Bildgebungsstudie
Usage: #example
Title: "MII Example Bildgebung Imaging Study CT"
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
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-ct].extension[CTDIvol].valueQuantity.value = 4.04
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-ct].extension[CTDIvol].valueQuantity.unit = "milligray"
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-ct].extension[KVP].valueQuantity.value = 110
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-ct].extension[KVP].valueQuantity.unit = "kilovolt"
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-ct].extension[exposure].valueQuantity.value = 38
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-ct].extension[exposure].valueQuantity.unit = "milliampere second"
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-ct].extension[exposureTime].valueQuantity.value = 600
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-ct].extension[exposureTime].valueQuantity.unit = "milliseconds"
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-ct].extension[xRayTubeCurrent].valueQuantity.value = 96
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-ct].extension[xRayTubeCurrent].valueQuantity.unit = "milliampere"
* series.uid = "series-example-uid"
* series.number = 1
* series.modality = $DCM#CT "Computed Tomography"
* series.description = "AC LD CT Whole Body 4.0 HD Field of View"
* series.numberOfInstances = 195
* series.bodySite = $SCT#51185008 "Thoracic structure (body structure)"
//* series.laterality =
* series.started = "2024-07-19T12:03:30+02:00"
* series.instance.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-serie].extension[pixelSpacing(x)].valueQuantity.value = 1.36
* series.instance.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-serie].extension[pixelSpacing(x)].valueQuantity.unit = "millimeter"
* series.instance.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-serie].extension[pixelSpacing(y)].valueQuantity.value = 1.36
* series.instance.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-serie].extension[pixelSpacing(y)].valueQuantity.unit = "millimeter"
* series.instance.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-serie].extension[sliceThickness].valueQuantity.value = 4
* series.instance.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-serie].extension[sliceThickness].valueQuantity.unit = "millimeter"
* series.instance.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-serie].extension[imageType].valueString = "['DERIVED', 'PRIMARY', 'AXIAL', 'CT_SOM5 SPI']"
* series.instance.uid = "instance-example-uid"
* series.instance.sopClass = urn:ietf:rfc:3986#urn:oid:1.2.840.10008.5.1.4.1.1.2
* series.instance.number = 31

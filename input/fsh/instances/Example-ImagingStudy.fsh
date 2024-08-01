Instance: mii-exa-bildgebung-bildgebungsstudie
InstanceOf: MII_PR_Bildgebung_Bildgebungsstudie
Usage: #example
Title: "MII Example Bildgebung Imaging Study"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-bildgebungsstudie"
* status = #available
* subject = Reference(Patient/example)
* subject.identifier.type = $v2-0203#MR
* subject.identifier.system = "https://system-url"
* subject.identifier.value = "study-uid"
* numberOfSeries = 1
* numberOfInstances = 1
* description = "Thorax"
* extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-pt-nm].extension[rescaleType].valueCodeableConcept.coding = $DCM#HU "Hounsfield Units (CT)"
//* series.modality = $DCM#CT "Computed Tomography"
* series.uid = "series-uid"
* series.number = 1
* series.modality = $DCM#DX
* series.description = "AP BETT (normal) Detektor"
* series.numberOfInstances = 1
* series.bodySite = $SCT#43799004
* series.instance.uid = "instance-uid"
* series.instance.sopClass = urn:ietf:rfc:3986#urn:oid:1.2.840.10008.5.1.4.1.1.1.1
* series.instance.number = 1
* series.instance.title = "ORIGINAL\\PRIMARY"
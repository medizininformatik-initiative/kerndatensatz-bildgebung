Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203
Alias: $DCM = http://dicom.nema.org/resources/ontology/DCM
Alias: $sct = http://snomed.info/sct

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
* series.uid = "series-uid"
* series.number = 1
* series.modality = $DCM#DX
* series.description = "AP BETT (normal) Detektor"
* series.numberOfInstances = 1
* series.bodySite = $sct#43799004
* series.instance.uid = "instance-uid"
* series.instance.sopClass = urn:ietf:rfc:3986#urn:oid:1.2.840.10008.5.1.4.1.1.1.1
* series.instance.number = 1
* series.instance.title = "ORIGINAL\\PRIMARY"
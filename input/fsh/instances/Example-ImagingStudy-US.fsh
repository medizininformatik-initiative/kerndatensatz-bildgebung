Instance: mii-exa-bildgebung-bildgebungsstudie-us
InstanceOf: MII_PR_Bildgebung_Bildgebungsstudie
Usage: #example
Title: "MII Example Bildgebung Imaging Study US"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-bildgebungsstudie"
* extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-bildgebungsgrund].valueString = "Verdacht auf akutes Abdomen"
* status = #available
* modality = $DCM#US "Ultrasound"
* subject = Reference(Patient/PatExample)
* subject.identifier.type = $v2-0203#MR "Medical record number"
* subject.identifier.system = "https://system-url"
* subject.identifier.value = "study-uid"
* encounter = Reference(Encounter/EncExample)
* basedOn = Reference(ServiceRequest/mii-exa-bildgebung-anforderung-bildgebung)
* numberOfSeries = 2
* numberOfInstances = 6
* procedureReference = Reference(Procedure/mii-exa-bildgebung-bildgebungsprozedur)
* reasonReference = Reference(Condition/CondExample)
* description = "Abdomen Ober- und Unterbauch"
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-us].extension[transducerFrequency].valueQuantity.value = 1670
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-us].extension[transducerFrequency].valueQuantity.unit = "kilohertz"
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-us].extension[pulseRepetitionFrequency].valueQuantity.value = 5860
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-us].extension[pulseRepetitionFrequency].valueQuantity.unit = "hertz"
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-us].extension[ultrasoundColor].valueBoolean = false
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-us].extension[transducerType].valueCodeableConcept = MII_CS_Bildgebung_Transducer_Type#CURVED_LINEAR
* series.performer.actor = Reference(Device/mii-exa-bildgebung-geraet)
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-kontrastmittel].extension[contrastBolus].valueBoolean = false
* series.uid = "series-example-uid"
* series.number = 1
* series.modality = $DCM#US "Ultrasound"
* series.description = "Abdomen Oberbauch"
* series.numberOfInstances = 28
* series.bodySite = $SCT#818981001 "Abdomen (body structure)"
* series.laterality = $SCT#51440002 "Bilateral" 
* series.started = "2025-07-07T12:03:30+02:00"
* series.instance.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-details].extension[imageType].valueCodeableConcept.coding[pixelData] = MII_CS_Bildgebung_Instance_Image_Type#ORIGINAL
* series.instance.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-details].extension[imageType].valueCodeableConcept.coding[patientExamination] = MII_CS_Bildgebung_Instance_Image_Type#SECONDARY
* series.instance.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-details].extension[imageType].valueCodeableConcept.coding[modalityMR] = MII_CS_Bildgebung_Instance_Image_Type#OTHER
* series.instance.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-details].extension[burnedInAnnotation].valueBoolean = true
* series.instance.uid = "instance-example-uid"
* series.instance.sopClass = urn:ietf:rfc:3986#urn:oid:1.2.840.10008.5.1.4.1.1.4
* series.instance.number = 1

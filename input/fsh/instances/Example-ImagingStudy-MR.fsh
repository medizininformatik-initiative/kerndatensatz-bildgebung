Instance: mii-exa-bildgebung-bildgebungsstudie-mr
InstanceOf: MII_PR_Bildgebung_Bildgebungsstudie
Usage: #example
Title: "MII Example Bildgebung Imaging Study MR"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-bildgebungsstudie"
* extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-bildgebungsgrund].valueString = "Verdacht auf Kreuzbandruptur"
* status = #available
* modality = $DCM#MR "Magnetic Resonance"
* subject = Reference(Patient/PatExample)
* subject.identifier.type = $v2-0203#MR "Medical record number"
* subject.identifier.system = "https://system-url"
* subject.identifier.value = "study-uid"
* encounter = Reference(Encounter/EncExample)
* basedOn = Reference(ServiceRequest/mii-exa-bildgebung-anforderung-bildgebung)
* numberOfSeries = 11
* numberOfInstances = 294
* procedureReference = Reference(Procedure/mii-exa-bildgebung-bildgebungsprozedur)
* reasonReference = Reference(Condition/CondExample)
* description = "Knie DOT"
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mr].extension[magneticFieldStrength].valueQuantity.value = 3
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mr].extension[magneticFieldStrength].valueQuantity.unit = "tesla"
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mr].extension[scanningSequence].valueString = "SE"
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mr].extension[scanningSequenceVariant].valueString = "SP, SK"
* series.performer.actor = Reference(Device/DevExample)
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-kontrastmittel].extension[contrastBolus].valueBoolean = false
* series.uid = "series-example-uid"
* series.number = 9
* series.modality = $DCM#MR "Magnetic Resonance"
* series.description = "pd_tse_sag"
* series.numberOfInstances = 28
* series.bodySite = $SCT#72696002 "Knee region structure (body structure)"
* series.laterality = $SCT#24028007 "Right" 
* series.started = "2024-07-19T12:03:30+02:00"
* series.instance.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-details].extension[pixelSpacingX].valueQuantity.value = 0.260417
* series.instance.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-details].extension[pixelSpacingX].valueQuantity.unit = "millimeter"
* series.instance.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-details].extension[pixelSpacingY].valueQuantity.value = 0.260417
* series.instance.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-details].extension[pixelSpacingY].valueQuantity.unit = "millimeter"
* series.instance.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-details].extension[sliceThickness].valueQuantity.value = 3
* series.instance.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-details].extension[sliceThickness].valueQuantity.unit = "millimeter"
* series.instance.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-details].extension[imageType].valueString = "[ORIGINAL, PRIMARY]"
* series.instance.uid = "instance-example-uid"
* series.instance.sopClass = urn:ietf:rfc:3986#urn:oid:1.2.840.10008.5.1.4.1.1.4
* series.instance.number = 28

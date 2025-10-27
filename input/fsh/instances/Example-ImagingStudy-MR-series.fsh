Instance: mii-exa-bildgebung-bildgebungsstudie-mr-series
InstanceOf: MII_PR_Bildgebung_Bildgebungsstudie
Usage: #example
Title: "MII Example Bildgebung Imaging Study MR Serie"
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
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mr].extension[scanningSequence].valueCodeableConcept = MII_CS_Bildgebung_Scanning_Sequence#SE
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mr].extension[scanningSequenceVariant].valueCodeableConcept.coding[+] = MII_CS_Bildgebung_Scanning_Sequence_Variant#SP
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mr].extension[scanningSequenceVariant].valueCodeableConcept.coding[+] = MII_CS_Bildgebung_Scanning_Sequence_Variant#SK
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mr].extension[echoTime].valueQuantity.value = 388
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mr].extension[echoTime].valueQuantity.unit = "milliseconds"
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mr].extension[repetitionTime].valueQuantity.value = 5000
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mr].extension[repetitionTime].valueQuantity.unit = "milliseconds"
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mr].extension[inversionTime].valueQuantity.value = 900
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mr].extension[inversionTime].valueQuantity.unit = "milliseconds"
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mr].extension[flipAngle].valueQuantity.value = 130
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mr].extension[flipAngle].valueQuantity.unit = "plane angle degree"
* series.performer.actor = Reference(Device/mii-exa-bildgebung-geraet)
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-kontrastmittel].extension[contrastBolus].valueBoolean = false
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-serie-schichtdicke].extension[sliceThickness].valueQuantity.value = 4
* series.extension[https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-serie-schichtdicke].extension[sliceThickness].valueQuantity.unit = "millimeter"
* series.uid = "series-example-uid"
* series.number = 9
* series.modality = $DCM#MR "Magnetic Resonance"
* series.description = "pd_tse_sag"
* series.numberOfInstances = 28
* series.bodySite = $SCT#72696002 "Knee region structure (body structure)"
* series.laterality = $SCT#24028007 "Right" 
* series.started = "2024-07-19T12:03:30+02:00"

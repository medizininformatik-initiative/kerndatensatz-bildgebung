# MII Example Bildgebung Kontrastmittelgabe - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII Example Bildgebung Kontrastmittelgabe**

## Example MedicationAdministration: MII Example Bildgebung Kontrastmittelgabe

-------

**English**

-------

Profile: [MII PR Bildgebung Konstrastmittelgabe](StructureDefinition-mii-pr-bildgebung-kontrastmittelgabe.md)

**status**: Completed

**medication**: [Medication Iopromide](Medication-mii-exa-bildgebung-kontrastmittel.md)

**subject**: [Erika Beispielpatientin Female, DoB: 1970-01-01](Patient-mii-exa-bildgebung-radiologischer-patient.md)

**effective**: 2024-07-19 12:21:45+0200 --> 2024-07-19 12:22:45+0200

### Dosages

| | |
| :--- | :--- |
| - | **Dose** |
| * | 111 milliliter (Details: UCUM codemm = 'mm') |



## Resource Content

```json
{
  "resourceType" : "MedicationAdministration",
  "id" : "mii-exa-bildgebung-kontrastmittelgabe",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-kontrastmittelgabe"]
  },
  "status" : "completed",
  "medicationReference" : {
    "reference" : "Medication/mii-exa-bildgebung-kontrastmittel"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-bildgebung-radiologischer-patient"
  },
  "effectivePeriod" : {
    "start" : "2024-07-19T12:21:45+02:00",
    "end" : "2024-07-19T12:22:45+02:00"
  },
  "dosage" : {
    "dose" : {
      "value" : 111,
      "unit" : "milliliter",
      "system" : "http://unitsofmeasure.org",
      "code" : "mm"
    }
  }
}

```

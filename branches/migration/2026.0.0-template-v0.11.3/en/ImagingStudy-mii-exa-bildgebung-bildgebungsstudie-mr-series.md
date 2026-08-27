# MII Example Bildgebung Imaging Study MR Serie - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII Example Bildgebung Imaging Study MR Serie**

## Example ImagingStudy: MII Example Bildgebung Imaging Study MR Serie

-------

**English**

-------

Profile: [MII PR Bildgebung Bildgebungsstudie](StructureDefinition-mii-pr-bildgebung-bildgebungsstudie.md)

**MII EX Bildgebung Bildgebungsgrund**: Verdacht auf Kreuzbandruptur

**status**: Available

**modality**: [DICOM: MR](http://hl7.org/fhir/R4/codesystem-dicom-dcim.html#dicom-dcim-MR) (Magnetic Resonance)

**subject**: [Erika Beispielpatientin Female, DoB: 1970-01-01](Patient-PatExample.md)

**encounter**: [Encounter/EncExample](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Encounter/EncExample)

**basedOn**: [ServiceRequest Mammography (procedure)](ServiceRequest-mii-exa-bildgebung-anforderung-bildgebung.md)

**numberOfSeries**: 11

**numberOfInstances**: 294

**procedureReference**: [Procedure Screening mammography of bilateral breasts (procedure)](Procedure-mii-exa-bildgebung-bildgebungsprozedur.md)

**reasonReference**: [Condition/CondExample](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Condition/CondExample)

**description**: Knie DOT

> **series**
> **MII EX Bildgebung Modalität MR**
* magneticFieldStrength: 3 tesla
* scanningSequence: Spin Echo
* scanningSequenceVariant: spoiled
* echoTime: 388 milliseconds
* repetitionTime: 5000 milliseconds
* inversionTime: 900 milliseconds
* flipAngle: 130 plane angle degree

> **MII EX Bildgebung Kontrastmittel**
* contrastBolus: false

**MII EX Bildgebung Schichtdicke**: 4 millimeter**uid**: series-example-uid**number**: 9**modality**: [DICOM: MR](http://hl7.org/fhir/R4/codesystem-dicom-dcim.html#dicom-dcim-MR) (Magnetic Resonance)**description**: pd_tse_sag**numberOfInstances**: 28**bodySite**: [SNOMED CT: 72696002](http://snomed.info/id/72696002) (Knee region structure (body structure))**laterality**: [SNOMED CT: 24028007](http://snomed.info/id/24028007) (Right)**started**: 2024-07-19 12:03:30+0200

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Device: manufacturer = Siemens](Device-mii-exa-bildgebung-geraet.md) |




## Resource Content

```json
{
  "resourceType" : "ImagingStudy",
  "id" : "mii-exa-bildgebung-bildgebungsstudie-mr-series",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-bildgebungsstudie"]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-bildgebungsgrund",
    "valueString" : "Verdacht auf Kreuzbandruptur"
  }],
  "status" : "available",
  "modality" : [{
    "system" : "http://dicom.nema.org/resources/ontology/DCM",
    "code" : "MR",
    "display" : "Magnetic Resonance"
  }],
  "subject" : {
    "reference" : "Patient/PatExample",
    "identifier" : {
      "type" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
          "code" : "MR",
          "display" : "Medical record number"
        }]
      },
      "system" : "https://system-url",
      "value" : "study-uid"
    }
  },
  "encounter" : {
    "reference" : "Encounter/EncExample"
  },
  "basedOn" : [{
    "reference" : "ServiceRequest/mii-exa-bildgebung-anforderung-bildgebung"
  }],
  "numberOfSeries" : 11,
  "numberOfInstances" : 294,
  "procedureReference" : {
    "reference" : "Procedure/mii-exa-bildgebung-bildgebungsprozedur"
  },
  "reasonReference" : [{
    "reference" : "Condition/CondExample"
  }],
  "description" : "Knie DOT",
  "series" : [{
    "extension" : [{
      "extension" : [{
        "url" : "magneticFieldStrength",
        "valueQuantity" : {
          "value" : 3,
          "unit" : "tesla"
        }
      },
      {
        "url" : "scanningSequence",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/CodeSystem/mii-cs-bildgebung-scanning-sequence",
            "code" : "SE"
          }]
        }
      },
      {
        "url" : "scanningSequenceVariant",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/CodeSystem/mii-cs-bildgebung-scanning-sequence-variant",
            "code" : "SP"
          },
          {
            "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/CodeSystem/mii-cs-bildgebung-scanning-sequence-variant",
            "code" : "SK"
          }]
        }
      },
      {
        "url" : "echoTime",
        "valueQuantity" : {
          "value" : 388,
          "unit" : "milliseconds"
        }
      },
      {
        "url" : "repetitionTime",
        "valueQuantity" : {
          "value" : 5000,
          "unit" : "milliseconds"
        }
      },
      {
        "url" : "inversionTime",
        "valueQuantity" : {
          "value" : 900,
          "unit" : "milliseconds"
        }
      },
      {
        "url" : "flipAngle",
        "valueQuantity" : {
          "value" : 130,
          "unit" : "plane angle degree"
        }
      }],
      "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mr"
    },
    {
      "extension" : [{
        "url" : "contrastBolus",
        "valueBoolean" : false
      }],
      "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-kontrastmittel"
    },
    {
      "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-serie-schichtdicke",
      "valueQuantity" : {
        "value" : 4,
        "unit" : "millimeter"
      }
    }],
    "uid" : "series-example-uid",
    "number" : 9,
    "modality" : {
      "system" : "http://dicom.nema.org/resources/ontology/DCM",
      "code" : "MR",
      "display" : "Magnetic Resonance"
    },
    "description" : "pd_tse_sag",
    "numberOfInstances" : 28,
    "bodySite" : {
      "system" : "http://snomed.info/sct",
      "code" : "72696002",
      "display" : "Knee region structure (body structure)"
    },
    "laterality" : {
      "system" : "http://snomed.info/sct",
      "code" : "24028007",
      "display" : "Right"
    },
    "started" : "2024-07-19T12:03:30+02:00",
    "performer" : [{
      "actor" : {
        "reference" : "Device/mii-exa-bildgebung-geraet"
      }
    }]
  }]
}

```

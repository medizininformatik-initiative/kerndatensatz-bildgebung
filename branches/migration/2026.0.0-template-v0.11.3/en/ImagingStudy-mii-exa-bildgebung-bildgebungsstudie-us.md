# MII Example Bildgebung Imaging Study US - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII Example Bildgebung Imaging Study US**

## Example ImagingStudy: MII Example Bildgebung Imaging Study US

-------

**English**

-------

Profile: [MII PR Bildgebung Bildgebungsstudie](StructureDefinition-mii-pr-bildgebung-bildgebungsstudie.md)

**MII EX Bildgebung Bildgebungsgrund**: Verdacht auf akutes Abdomen

**status**: Available

**modality**: [DICOM: US](http://hl7.org/fhir/R4/codesystem-dicom-dcim.html#dicom-dcim-US) (Ultrasound)

**subject**: [Erika Beispielpatientin Female, DoB: 1970-01-01](Patient-PatExample.md)

**encounter**: [Encounter/EncExample](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Encounter/EncExample)

**basedOn**: [ServiceRequest Mammography (procedure)](ServiceRequest-mii-exa-bildgebung-anforderung-bildgebung.md)

**numberOfSeries**: 2

**numberOfInstances**: 6

**procedureReference**: [Procedure Screening mammography of bilateral breasts (procedure)](Procedure-mii-exa-bildgebung-bildgebungsprozedur.md)

**reasonReference**: [Condition/CondExample](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Condition/CondExample)

**description**: Abdomen Ober- und Unterbauch

> **series**
> **MII EX Bildgebung Modalität US**
* transducerFrequency: 1670 kilohertz
* pulseRepetitionFrequency: 5860 hertz
* ultrasoundColor: false
* transducerType: Curved Linear

> **MII EX Bildgebung Kontrastmittel**
* contrastBolus: false

**uid**: series-example-uid**number**: 1**modality**: [DICOM: US](http://hl7.org/fhir/R4/codesystem-dicom-dcim.html#dicom-dcim-US) (Ultrasound)**description**: Abdomen Oberbauch**numberOfInstances**: 28**bodySite**: [SNOMED CT: 80581009](http://snomed.info/id/80581009) (Upper abdomen structure (body structure))**laterality**: [SNOMED CT: 51440002](http://snomed.info/id/51440002) (Bilateral)**started**: 2025-07-07 12:03:30+0200

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Device: manufacturer = Siemens](Device-mii-exa-bildgebung-geraet.md) |

### Instances

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Extension** | **Uid** | **SopClass** | **Number** |
| * |  | instance-example-uid | unknown: urn:oid:1.2.840.10008.5.1.4.1.1.4 (urn:oid:1.2.840.10008.5.1.4.1.1.4) | 1 |




## Resource Content

```json
{
  "resourceType" : "ImagingStudy",
  "id" : "mii-exa-bildgebung-bildgebungsstudie-us",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-bildgebungsstudie"]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-bildgebungsgrund",
    "valueString" : "Verdacht auf akutes Abdomen"
  }],
  "status" : "available",
  "modality" : [{
    "system" : "http://dicom.nema.org/resources/ontology/DCM",
    "code" : "US",
    "display" : "Ultrasound"
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
  "numberOfSeries" : 2,
  "numberOfInstances" : 6,
  "procedureReference" : {
    "reference" : "Procedure/mii-exa-bildgebung-bildgebungsprozedur"
  },
  "reasonReference" : [{
    "reference" : "Condition/CondExample"
  }],
  "description" : "Abdomen Ober- und Unterbauch",
  "series" : [{
    "extension" : [{
      "extension" : [{
        "url" : "transducerFrequency",
        "valueQuantity" : {
          "value" : 1670,
          "unit" : "kilohertz"
        }
      },
      {
        "url" : "pulseRepetitionFrequency",
        "valueQuantity" : {
          "value" : 5860,
          "unit" : "hertz"
        }
      },
      {
        "url" : "ultrasoundColor",
        "valueBoolean" : false
      },
      {
        "url" : "transducerType",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/CodeSystem/mii-cs-bildgebung-transducer-type",
            "code" : "CURVED_LINEAR"
          }]
        }
      }],
      "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-us"
    },
    {
      "extension" : [{
        "url" : "contrastBolus",
        "valueBoolean" : false
      }],
      "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-kontrastmittel"
    }],
    "uid" : "series-example-uid",
    "number" : 1,
    "modality" : {
      "system" : "http://dicom.nema.org/resources/ontology/DCM",
      "code" : "US",
      "display" : "Ultrasound"
    },
    "description" : "Abdomen Oberbauch",
    "numberOfInstances" : 28,
    "bodySite" : {
      "system" : "http://snomed.info/sct",
      "code" : "80581009",
      "display" : "Upper abdomen structure (body structure)"
    },
    "laterality" : {
      "system" : "http://snomed.info/sct",
      "code" : "51440002",
      "display" : "Bilateral"
    },
    "started" : "2025-07-07T12:03:30+02:00",
    "performer" : [{
      "actor" : {
        "reference" : "Device/mii-exa-bildgebung-geraet"
      }
    }],
    "instance" : [{
      "extension" : [{
        "extension" : [{
          "url" : "imageType",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/CodeSystem/mii-cs-bildgebung-instance-image-type",
              "code" : "ORIGINAL"
            },
            {
              "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/CodeSystem/mii-cs-bildgebung-instance-image-type",
              "code" : "SECONDARY"
            },
            {
              "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/CodeSystem/mii-cs-bildgebung-instance-image-type",
              "code" : "ABDOMINAL"
            },
            {
              "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/CodeSystem/mii-cs-bildgebung-instance-image-type",
              "code" : "0001"
            }]
          }
        },
        {
          "url" : "burnedInAnnotation",
          "valueBoolean" : true
        }],
        "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-details"
      }],
      "uid" : "instance-example-uid",
      "sopClass" : {
        "system" : "urn:ietf:rfc:3986",
        "code" : "urn:oid:1.2.840.10008.5.1.4.1.1.4"
      },
      "number" : 1
    }]
  }]
}

```

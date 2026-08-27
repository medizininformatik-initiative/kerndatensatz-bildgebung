# MII Example Bildgebung Imaging Study CR - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII Example Bildgebung Imaging Study CR**

## Example ImagingStudy: MII Example Bildgebung Imaging Study CR

-------

**English**

-------

Profile: [MII PR Bildgebung Bildgebungsstudie](StructureDefinition-mii-pr-bildgebung-bildgebungsstudie.md)

**MII EX Bildgebung Bildgebungsgrund**: Verdacht auf Karzinom

**status**: Available

**modality**: [DICOM: CR](http://hl7.org/fhir/R4/codesystem-dicom-dcim.html#dicom-dcim-CR) (Computed Radiography)

**subject**: [Erika Beispielpatientin Female, DoB: 1970-01-01](Patient-PatExample.md)

**encounter**: [Encounter/EncExample](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Encounter/EncExample)

**basedOn**: [ServiceRequest Mammography (procedure)](ServiceRequest-mii-exa-bildgebung-anforderung-bildgebung.md)

**numberOfSeries**: 1

**numberOfInstances**: 1

**procedureReference**: [Procedure Screening mammography of bilateral breasts (procedure)](Procedure-mii-exa-bildgebung-bildgebungsprozedur.md)

**reasonReference**: [Condition/CondExample](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Condition/CondExample)

**description**: Thorax auf Station;

> **series**
> **MII EX Bildgebung Modalität MG/CR/DX**
* KVP: 110 kilovolt
* exposure: 38 milliampere second
* exposureTime: 600 milliseconds
* xRayTubeCurrent: 96 milliampere
* viewPosition: Right posterior oblique projection (qualifier value)

> **MII EX Bildgebung Kontrastmittel**
* contrastBolus: false

**uid**: series-example-uid**number**: 1**modality**: [DICOM: CR](http://hl7.org/fhir/R4/codesystem-dicom-dcim.html#dicom-dcim-CR) (Computed Radiography)**description**: X Thorax a.p. liegend**numberOfInstances**: 1**bodySite**: [SNOMED CT: 43799004](http://snomed.info/id/43799004) (Thoracic cavity structure (body structure))**laterality**: [SNOMED CT: 66459002](http://snomed.info/id/66459002) (Unilateral)**started**: 2024-07-19 12:03:30+0200

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Device: manufacturer = Siemens](Device-mii-exa-bildgebung-geraet.md) |

### Instances

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Extension** | **Uid** | **SopClass** | **Number** |
| * |  | instance-example-uid | unknown: urn:oid:1.2.840.10008.5.1.4.1.1.1 (urn:oid:1.2.840.10008.5.1.4.1.1.1) | 1 |




## Resource Content

```json
{
  "resourceType" : "ImagingStudy",
  "id" : "mii-exa-bildgebung-bildgebungsstudie-cr",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-bildgebungsstudie"]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-bildgebungsgrund",
    "valueString" : "Verdacht auf Karzinom"
  }],
  "status" : "available",
  "modality" : [{
    "system" : "http://dicom.nema.org/resources/ontology/DCM",
    "code" : "CR",
    "display" : "Computed Radiography"
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
  "numberOfSeries" : 1,
  "numberOfInstances" : 1,
  "procedureReference" : {
    "reference" : "Procedure/mii-exa-bildgebung-bildgebungsprozedur"
  },
  "reasonReference" : [{
    "reference" : "Condition/CondExample"
  }],
  "description" : "Thorax auf Station;",
  "series" : [{
    "extension" : [{
      "extension" : [{
        "url" : "KVP",
        "valueQuantity" : {
          "value" : 110,
          "unit" : "kilovolt"
        }
      },
      {
        "url" : "exposure",
        "valueQuantity" : {
          "value" : 38,
          "unit" : "milliampere second"
        }
      },
      {
        "url" : "exposureTime",
        "valueQuantity" : {
          "value" : 600,
          "unit" : "milliseconds"
        }
      },
      {
        "url" : "xRayTubeCurrent",
        "valueQuantity" : {
          "value" : 96,
          "unit" : "milliampere"
        }
      },
      {
        "url" : "viewPosition",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "399038007",
            "display" : "Right posterior oblique projection (qualifier value)"
          }]
        }
      }],
      "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mg-cr-dx"
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
      "code" : "CR",
      "display" : "Computed Radiography"
    },
    "description" : "X Thorax a.p. liegend",
    "numberOfInstances" : 1,
    "bodySite" : {
      "system" : "http://snomed.info/sct",
      "code" : "43799004",
      "display" : "Thoracic cavity structure (body structure)"
    },
    "laterality" : {
      "system" : "http://snomed.info/sct",
      "code" : "66459002",
      "display" : "Unilateral"
    },
    "started" : "2024-07-19T12:03:30+02:00",
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
              "code" : "PRIMARY"
            }]
          }
        }],
        "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-details"
      }],
      "uid" : "instance-example-uid",
      "sopClass" : {
        "system" : "urn:ietf:rfc:3986",
        "code" : "urn:oid:1.2.840.10008.5.1.4.1.1.1"
      },
      "number" : 1
    }]
  }]
}

```

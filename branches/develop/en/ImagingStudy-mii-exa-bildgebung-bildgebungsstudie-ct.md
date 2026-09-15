# MII Example Bildgebung Imaging Study CT - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII Example Bildgebung Imaging Study CT**

## Example ImagingStudy: MII Example Bildgebung Imaging Study CT

-------

**English**

-------

Profile: [MII PR Bildgebung Bildgebungsstudie](StructureDefinition-mii-pr-bildgebung-bildgebungsstudie.md)

**MII EX Bildgebung Bildgebungsgrund**: Verdacht auf Karzinom

**status**: Available

**modality**: [DICOM: CT](http://hl7.org/fhir/R4/codesystem-dicom-dcim.html#dicom-dcim-CT) (Computed Tomography)

**subject**: [Erika Beispielpatientin Female, DoB: 1970-01-01](Patient-mii-exa-bildgebung-radiologischer-patient.md)

**encounter**: [Encounter: status = finished; class = AMB (AMB)](Encounter-mii-exa-bildgebung-radiologischer-fall.md)

**basedOn**: [ServiceRequest Mammography (procedure)](ServiceRequest-mii-exa-bildgebung-anforderung-bildgebung.md)

**numberOfSeries**: 2

**numberOfInstances**: 390

**procedureReference**: [Procedure Screening mammography of bilateral breasts (procedure)](Procedure-mii-exa-bildgebung-bildgebungsprozedur.md)

**reasonReference**: [Condition ](Condition-mii-exa-bildgebung-radiologische-diagnose.md)

**description**: whole body aquisition

> **series**
> **MII EX Bildgebung Modalität CT**
* convolutionalKernel: SOFT
* CTDIvol: 4.04 milligray
* KVP: 110 kilovolt
* exposure: 38 milliampere second
* exposureTime: 600 milliseconds
* xRayTubeCurrent: 96 milliampere

> **MII EX Bildgebung Kontrastmittel**
* contrastBolus: true
* contrastBolusDetails: [MedicationAdministration: status = completed; medication[x] = ->Medication Iopromide; effective[x] = 2024-07-19 12:21:45+0200 --> 2024-07-19 12:22:45+0200](MedicationAdministration-mii-exa-bildgebung-kontrastmittelgabe.md)

**uid**: series-example-uid**number**: 1**modality**: [DICOM: CT](http://hl7.org/fhir/R4/codesystem-dicom-dcim.html#dicom-dcim-CT) (Computed Tomography)**description**: AC LD CT Whole Body 4.0 HD Field of View**numberOfInstances**: 195**bodySite**: [SNOMED CT: 51185008](http://snomed.info/id/51185008) (Thoracic structure (body structure)) (version = http://snomed.info/sct/900000000000207008/version/20260701 )**laterality**: [SNOMED CT: 7771000](http://snomed.info/id/7771000) (Left) (version = http://snomed.info/sct/900000000000207008/version/20260701 )**started**: 2024-07-19 12:03:30+0200

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Device: manufacturer = Siemens](Device-mii-exa-bildgebung-geraet.md) |

### Instances

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Extension** | **Uid** | **SopClass** | **Number** |
| * |  | instance-example-uid | unknown: urn:oid:1.2.840.10008.5.1.4.1.1.2 (urn:oid:1.2.840.10008.5.1.4.1.1.2) | 31 |




## Resource Content

```json
{
  "resourceType" : "ImagingStudy",
  "id" : "mii-exa-bildgebung-bildgebungsstudie-ct",
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
    "code" : "CT",
    "display" : "Computed Tomography"
  }],
  "subject" : {
    "reference" : "Patient/mii-exa-bildgebung-radiologischer-patient",
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
    "reference" : "Encounter/mii-exa-bildgebung-radiologischer-fall"
  },
  "basedOn" : [{
    "reference" : "ServiceRequest/mii-exa-bildgebung-anforderung-bildgebung"
  }],
  "numberOfSeries" : 2,
  "numberOfInstances" : 390,
  "procedureReference" : {
    "reference" : "Procedure/mii-exa-bildgebung-bildgebungsprozedur"
  },
  "reasonReference" : [{
    "reference" : "Condition/mii-exa-bildgebung-radiologische-diagnose"
  }],
  "description" : "whole body aquisition",
  "series" : [{
    "extension" : [{
      "extension" : [{
        "url" : "convolutionalKernel",
        "valueString" : "SOFT"
      },
      {
        "url" : "CTDIvol",
        "valueQuantity" : {
          "value" : 4.04,
          "unit" : "milligray"
        }
      },
      {
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
      }],
      "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-ct"
    },
    {
      "extension" : [{
        "url" : "contrastBolus",
        "valueBoolean" : true
      },
      {
        "url" : "contrastBolusDetails",
        "valueReference" : {
          "reference" : "MedicationAdministration/mii-exa-bildgebung-kontrastmittelgabe"
        }
      }],
      "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-kontrastmittel"
    }],
    "uid" : "series-example-uid",
    "number" : 1,
    "modality" : {
      "system" : "http://dicom.nema.org/resources/ontology/DCM",
      "code" : "CT",
      "display" : "Computed Tomography"
    },
    "description" : "AC LD CT Whole Body 4.0 HD Field of View",
    "numberOfInstances" : 195,
    "bodySite" : {
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "code" : "51185008",
      "display" : "Thoracic structure (body structure)"
    },
    "laterality" : {
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "code" : "7771000",
      "display" : "Left"
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
          "url" : "pixelSpacingX",
          "valueQuantity" : {
            "value" : 1.36,
            "unit" : "millimeter"
          }
        },
        {
          "url" : "pixelSpacingY",
          "valueQuantity" : {
            "value" : 1.36,
            "unit" : "millimeter"
          }
        },
        {
          "url" : "sliceThickness",
          "valueQuantity" : {
            "value" : 4,
            "unit" : "millimeter"
          }
        },
        {
          "url" : "imageType",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/CodeSystem/mii-cs-bildgebung-instance-image-type",
              "code" : "DERIVED"
            },
            {
              "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/CodeSystem/mii-cs-bildgebung-instance-image-type",
              "code" : "PRIMARY"
            },
            {
              "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/CodeSystem/mii-cs-bildgebung-instance-image-type",
              "code" : "AXIAL"
            }]
          }
        }],
        "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-details"
      }],
      "uid" : "instance-example-uid",
      "sopClass" : {
        "system" : "urn:ietf:rfc:3986",
        "code" : "urn:oid:1.2.840.10008.5.1.4.1.1.2"
      },
      "number" : 31
    }]
  }]
}

```

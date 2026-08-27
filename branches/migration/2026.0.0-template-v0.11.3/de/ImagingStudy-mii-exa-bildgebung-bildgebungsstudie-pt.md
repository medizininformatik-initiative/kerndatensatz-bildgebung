# MII Example Bildgebung Imaging Study PT - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII Example Bildgebung Imaging Study PT**

## Beispiel ImagingStudy: MII Example Bildgebung Imaging Study PT

-------

**German**

-------

Profile: [MII PR Bildgebung Bildgebungsstudie](StructureDefinition-mii-pr-bildgebung-bildgebungsstudie.md)

**MII EX Bildgebung Bildgebungsgrund**: Verdacht auf Karzinom

**status**: Available

**modality**: [DICOM: PT](http://hl7.org/fhir/R4/codesystem-dicom-dcim.html#dicom-dcim-PT) (Positron emission tomography)

**subject**: [Erika Beispielpatientin Female, DoB: 1970-01-01](Patient-PatExample.md)

**encounter**: [Encounter/EncExample](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Encounter/EncExample)

**basedOn**: [ServiceRequest Mammography (procedure)](ServiceRequest-mii-exa-bildgebung-anforderung-bildgebung.md)

**numberOfSeries**: 2

**numberOfInstances**: 390

**procedureReference**: [Procedure Screening mammography of bilateral breasts (procedure)](Procedure-mii-exa-bildgebung-bildgebungsprozedur.md)

**reasonReference**: [Condition/CondExample](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Condition/CondExample)

**description**: whole body aquisition

> **series**
> **MII EX Bildgebung Modalität PT**
* radiopharmaceutical: Fluorodeoxyglucose (18-F) (substance)
* radionuclide: Fluorine-18 (substance)
* tracerExposureTime: 10000 Seconds
* units: BQML
* radionuclideTotalDose: 196 Becquerel
* radionuclideHalfLife: 6586.2 Seconds
* seriesType: a group of images at a set of spatial locations (e.g., slices) at varying time slices, with all spatial locations acquired at all time slices

**uid**: series-example-uid**number**: 1**modality**: [DICOM: PT](http://hl7.org/fhir/R4/codesystem-dicom-dcim.html#dicom-dcim-PT) (Positron emission tomography)**description**: PET WB**numberOfInstances**: 195**bodySite**: [SNOMED CT: 51185008](http://snomed.info/id/51185008) (Thoracic structure (body structure))**laterality**: [SNOMED CT: 66459002](http://snomed.info/id/66459002) (Unilateral)**started**: 2024-07-19 12:03:30+0200

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Device: manufacturer = Siemens](Device-mii-exa-bildgebung-geraet.md) |

### Instances

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Extension** | **Uid** | **SopClass** | **Number** |
| * |  | instance-example-uid | unknown: urn:oid:1.2.840.10008.5.1.4.1.1.128 (urn:oid:1.2.840.10008.5.1.4.1.1.128) | 31 |




## Resource Content

```json
{
  "resourceType" : "ImagingStudy",
  "id" : "mii-exa-bildgebung-bildgebungsstudie-pt",
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
    "code" : "PT",
    "display" : "Positron emission tomography"
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
  "numberOfInstances" : 390,
  "procedureReference" : {
    "reference" : "Procedure/mii-exa-bildgebung-bildgebungsprozedur"
  },
  "reasonReference" : [{
    "reference" : "Condition/CondExample"
  }],
  "description" : "whole body aquisition",
  "series" : [{
    "extension" : [{
      "extension" : [{
        "url" : "radiopharmaceutical",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "35321007",
            "display" : "Fluorodeoxyglucose (18-F) (substance)"
          }]
        }
      },
      {
        "url" : "radionuclide",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "77004003",
            "display" : "Fluorine-18 (substance)"
          }]
        }
      },
      {
        "url" : "tracerExposureTime",
        "valueQuantity" : {
          "value" : 10000,
          "unit" : "Seconds"
        }
      },
      {
        "url" : "units",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://unitsofmeasure.org",
            "code" : "BQML"
          }]
        }
      },
      {
        "url" : "radionuclideTotalDose",
        "valueQuantity" : {
          "value" : 196,
          "unit" : "Becquerel"
        }
      },
      {
        "url" : "radionuclideHalfLife",
        "valueQuantity" : {
          "value" : 6586.2,
          "unit" : "Seconds"
        }
      },
      {
        "url" : "seriesType",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/CodeSystem/mii-cs-bildgebung-series-type",
            "code" : "DYNAMIC"
          },
          {
            "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/CodeSystem/mii-cs-bildgebung-series-type",
            "code" : "IMAGE"
          }]
        }
      }],
      "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-pt"
    }],
    "uid" : "series-example-uid",
    "number" : 1,
    "modality" : {
      "system" : "http://dicom.nema.org/resources/ontology/DCM",
      "code" : "PT",
      "display" : "Positron emission tomography"
    },
    "description" : "PET WB",
    "numberOfInstances" : 195,
    "bodySite" : {
      "system" : "http://snomed.info/sct",
      "code" : "51185008",
      "display" : "Thoracic structure (body structure)"
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
          "url" : "pixelSpacingX",
          "valueQuantity" : {
            "value" : 2.89,
            "unit" : "millimeter"
          }
        },
        {
          "url" : "pixelSpacingY",
          "valueQuantity" : {
            "value" : 2.89,
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
              "code" : "ORIGINAL"
            },
            {
              "code" : "PRIMARY"
            }]
          }
        }],
        "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-details"
      }],
      "uid" : "instance-example-uid",
      "sopClass" : {
        "system" : "urn:ietf:rfc:3986",
        "code" : "urn:oid:1.2.840.10008.5.1.4.1.1.128"
      },
      "number" : 31
    }]
  }]
}

```

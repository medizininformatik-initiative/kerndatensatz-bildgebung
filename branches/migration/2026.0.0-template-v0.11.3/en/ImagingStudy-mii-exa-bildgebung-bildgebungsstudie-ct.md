# MII Example Bildgebung Imaging Study CT - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot

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

**subject**: [Erika Beispielpatientin Female, DoB: 1970-01-01](Patient-PatExample.md)

**encounter**: [Encounter/EncExample](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Encounter/EncExample)

**basedOn**: [ServiceRequest Mammography (procedure)](ServiceRequest-mii-exa-bildgebung-anforderung-bildgebung.md)

**numberOfSeries**: 2

**numberOfInstances**: 390

**procedureReference**: [Procedure Screening mammography of bilateral breasts (procedure)](Procedure-mii-exa-bildgebung-bildgebungsprozedur.md)

**reasonReference**: [Condition/CondExample](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Condition/CondExample)

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
* contrastBolusDetails: 


**Exception Generating Narrative: Cannot invoke "org.hl7.fhir.r5.renderers.utils.ResourceWrapper.fhirType()" because "resource" is null **



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
      "code" : "51185008",
      "display" : "Thoracic structure (body structure)"
    },
    "laterality" : {
      "system" : "http://snomed.info/sct",
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

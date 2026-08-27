# MII Example Bildgebung Radiologische Messung - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII Example Bildgebung Radiologische Messung**

## Example Observation: MII Example Bildgebung Radiologische Messung

-------

**English**

-------

Profile: [MII PR Bildgebung Radiologische Messung](StructureDefinition-mii-pr-bildgebung-radiologische-messung.md)

**MII EX Bildgebung Bildnummer**: example-series-uid

**MII EX Bildgebung SOPInstanz**: example-sop-instance-uid

**partOf**: [Procedure Consultation and report by radiologist (procedure)](Procedure-mii-exa-bildgebung-radiologische-befundungsprozedur.md)

**status**: Final

**category**: Measurement procedure (procedure)

**code**: Diameter of structure by imaging measurement (observable entity)

**subject**: [Erika Beispielpatientin Female, DoB: 1970-01-01](Patient-PatExample.md)

**issued**: 2024-07-19 12:03:30+0200

**value**: 4.2 millimeter (Details: UCUM codemm = 'mm')

**bodySite**: Breast structure (body structure)

**method**: Measurement technique (qualifier value)

**hasMember**: [Observation/ObsExample](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Observation/ObsExample)

**derivedFrom**: [ImagingStudy: extension = Verdacht auf Karzinom; status = available; modality = Computed Tomography (DICOM#CT); numberOfSeries = 2; numberOfInstances = 390; description = whole body aquisition](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-ct.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-bildgebung-radiologische-messung",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-radiologische-messung"]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-series-uid",
    "valueId" : "example-series-uid"
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-sop-instanz-uid",
    "valueId" : "example-sop-instance-uid"
  }],
  "partOf" : [{
    "reference" : "Procedure/mii-exa-bildgebung-radiologische-befundungsprozedur"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "122869004",
      "display" : "Measurement procedure (procedure)"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "439984002",
      "display" : "Diameter of structure by imaging measurement (observable entity)"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatExample"
  },
  "issued" : "2024-07-19T12:03:30+02:00",
  "valueQuantity" : {
    "value" : 4.2,
    "unit" : "millimeter",
    "system" : "http://unitsofmeasure.org",
    "code" : "mm"
  },
  "bodySite" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/bodySite",
      "valueReference" : {
        "reference" : "BodyStructure/mii-exa-bildgebung-koerperstruktur"
      }
    }],
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "76752008",
      "display" : "Breast structure (body structure)"
    }]
  },
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "272391002",
      "display" : "Measurement technique (qualifier value)"
    }]
  },
  "hasMember" : [{
    "reference" : "Observation/ObsExample"
  }],
  "derivedFrom" : [{
    "reference" : "ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-ct"
  }]
}

```

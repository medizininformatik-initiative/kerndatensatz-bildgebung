# MII Example Bildgebung Radiologische Beobachtung - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII Example Bildgebung Radiologische Beobachtung**

## Example Observation: MII Example Bildgebung Radiologische Beobachtung

-------

**English**

-------

Profile: [MII PR Bildgebung Radiologische Beobachtung](StructureDefinition-mii-pr-bildgebung-radiologische-beobachtung.md)

**MII EX Bildgebung Bildnummer**: example-series-uid

**MII EX Bildgebung SOPInstanz**: example-sop-instance-uid

**partOf**: [Procedure Consultation and report by radiologist (procedure)](Procedure-mii-exa-bildgebung-radiologische-befundungsprozedur.md)

**status**: Final

**category**: Imaging

**code**: Physical findings of Breast

**subject**: [Erika Beispielpatientin Female, DoB: 1970-01-01](Patient-PatExample.md)

**issued**: 2024-07-19 12:03:30+0200

**value**: microcalcifications in the upper outer quadrant in the left breast

**bodySite**: Breast structure (body structure)

**hasMember**: [Observation/ObsExample](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Observation/ObsExample)

**derivedFrom**: [ImagingStudy: extension = Verdacht auf Karzinom; status = available; modality = Computed Tomography (DICOM#CT); numberOfSeries = 2; numberOfInstances = 390; description = whole body aquisition](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-ct.md)

### Components

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | History of family member diseases note | true |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-bildgebung-radiologische-beobachtung",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-radiologische-beobachtung"]
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
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "imaging",
      "display" : "Imaging"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "32422-8",
      "display" : "Physical findings of Breast"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatExample"
  },
  "issued" : "2024-07-19T12:03:30+02:00",
  "valueString" : "microcalcifications in the upper outer quadrant in the left breast",
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
  "hasMember" : [{
    "reference" : "Observation/ObsExample"
  }],
  "derivedFrom" : [{
    "reference" : "ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-ct"
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "10157-6",
        "display" : "History of family member diseases note"
      }]
    },
    "valueBoolean" : true
  }]
}

```

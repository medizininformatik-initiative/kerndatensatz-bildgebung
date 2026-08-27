# MII Example Bildgebung BodyStructure - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII Example Bildgebung BodyStructure**

## Example BodyStructure: MII Example Bildgebung BodyStructure

-------

**English**

-------

Profile: [MII PR Bildgebung Körperstruktur](StructureDefinition-mii-pr-bildgebung-koerperstruktur.md)

**morphology**: Microcalcification, calcified structure (morphologic abnormality)

**location**: Breast structure (body structure)

**locationQualifier**: Left (qualifier value)

**patient**: [Erika Beispielpatientin Female, DoB: 1970-01-01](Patient-PatExample.md)



## Resource Content

```json
{
  "resourceType" : "BodyStructure",
  "id" : "mii-exa-bildgebung-koerperstruktur",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-koerperstruktur"]
  },
  "morphology" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "12747003",
      "display" : "Microcalcification, calcified structure (morphologic abnormality)"
    }]
  },
  "location" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "76752008",
      "display" : "Breast structure (body structure)"
    }]
  },
  "locationQualifier" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "7771000",
      "display" : "Left (qualifier value)"
    }]
  }],
  "patient" : {
    "reference" : "Patient/PatExample"
  }
}

```

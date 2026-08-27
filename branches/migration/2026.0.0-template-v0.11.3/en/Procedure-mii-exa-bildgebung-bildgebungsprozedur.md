# MII Example Bildgebung Imaging Procedure - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII Example Bildgebung Imaging Procedure**

## Example Procedure: MII Example Bildgebung Imaging Procedure

-------

**English**

-------

Profile: [MII PR Bildgebung Bildgebungsprozedur](StructureDefinition-mii-pr-bildgebung-bildgebungsprozedur.md)

**basedOn**: [ServiceRequest Mammography (procedure)](ServiceRequest-mii-exa-bildgebung-anforderung-bildgebung.md)

**status**: Completed

**category**: Imaging (procedure)

**code**: Screening mammography of bilateral breasts (procedure)

**subject**: [Erika Beispielpatientin Female, DoB: 1970-01-01](Patient-PatExample.md)

**performed**: 2024-07-19 12:03:30+0200



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "mii-exa-bildgebung-bildgebungsprozedur",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-bildgebungsprozedur"]
  },
  "basedOn" : [{
    "reference" : "ServiceRequest/mii-exa-bildgebung-anforderung-bildgebung"
  }],
  "status" : "completed",
  "category" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "363679005",
      "display" : "Imaging (procedure)"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "384151000119104",
      "display" : "Screening mammography of bilateral breasts (procedure)"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatExample"
  },
  "performedDateTime" : "2024-07-19T12:03:30+02:00"
}

```

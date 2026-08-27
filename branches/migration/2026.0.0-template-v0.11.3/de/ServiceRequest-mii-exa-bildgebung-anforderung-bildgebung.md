# MII Example Bildgebung Service Request - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII Example Bildgebung Service Request**

## Beispiel ServiceRequest: MII Example Bildgebung Service Request

-------

**German**

-------

Profile: [MII PR Bildgebung Anforderung Bildgebung](StructureDefinition-mii-pr-bildgebung-anforderung-bildgebung.md)

**status**: Completed

**intent**: Order

**category**: Imaging (procedure)

**code**: Mammography (procedure)

**subject**: [Erika Beispielpatientin Female, DoB: 1970-01-01](Patient-PatExample.md)

**encounter**: [Encounter/EncExample](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Encounter/EncExample)

**authoredOn**: 2024-07-19 12:03:30+0200

**requester**: [Practitioner/PracExample1](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Practitioner/PracExample1)

**reasonCode**: Pain of breast (finding)

**reasonReference**: [Condition/CondExample](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Condition/CondExample)

**supportingInfo**: [DiagnosticReport/DiagRepExample](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/DiagnosticReport/DiagRepExample)



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "mii-exa-bildgebung-anforderung-bildgebung",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-anforderung-bildgebung"]
  },
  "status" : "completed",
  "intent" : "order",
  "category" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "363679005",
      "display" : "Imaging (procedure)"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "71651007",
      "display" : "Mammography (procedure)"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatExample"
  },
  "encounter" : {
    "reference" : "Encounter/EncExample"
  },
  "authoredOn" : "2024-07-19T12:03:30+02:00",
  "requester" : {
    "reference" : "Practitioner/PracExample1"
  },
  "reasonCode" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "53430007",
      "display" : "Pain of breast (finding)"
    }]
  }],
  "reasonReference" : [{
    "reference" : "Condition/CondExample"
  }],
  "supportingInfo" : [{
    "reference" : "DiagnosticReport/DiagRepExample"
  }]
}

```

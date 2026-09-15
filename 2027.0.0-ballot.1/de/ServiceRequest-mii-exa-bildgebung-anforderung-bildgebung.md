# MII Example Bildgebung Service Request - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot.1

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

**subject**: [Erika Beispielpatientin Female, DoB: 1970-01-01](Patient-mii-exa-bildgebung-radiologischer-patient.md)

**encounter**: [Encounter: status = finished; class = AMB (AMB)](Encounter-mii-exa-bildgebung-radiologischer-fall.md)

**authoredOn**: 2024-07-19 12:03:30+0200

**requester**: [Practitioner Max Mustermann ](Practitioner-mii-exa-bildgebung-radiologischer-practitioner.md)

**reasonCode**: Pain of breast (finding)

**reasonReference**: [Condition/CondExample](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=http://fhir.org/packages/de.basisprofil.r4/Condition/CondExample)

**supportingInfo**: [DiagnosticReport/mii-exa-bildgebung-radiologischer-Befund](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=http://fhir.org/packages/de.basisprofil.r4/DiagnosticReport/mii-exa-bildgebung-radiologischer-Befund)



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
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "code" : "363679005",
      "display" : "Imaging (procedure)"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "code" : "71651007",
      "display" : "Mammography (procedure)"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-bildgebung-radiologischer-patient"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-bildgebung-radiologischer-fall"
  },
  "authoredOn" : "2024-07-19T12:03:30+02:00",
  "requester" : {
    "reference" : "Practitioner/mii-exa-bildgebung-radiologischer-practitioner"
  },
  "reasonCode" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "code" : "53430007",
      "display" : "Pain of breast (finding)"
    }]
  }],
  "reasonReference" : [{
    "reference" : "Condition/CondExample"
  }],
  "supportingInfo" : [{
    "reference" : "DiagnosticReport/mii-exa-bildgebung-radiologischer-Befund"
  }]
}

```

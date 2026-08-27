# MII Example Bildgebung Care Plan - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII Example Bildgebung Care Plan**

## Beispiel CarePlan: MII Example Bildgebung Care Plan

-------

**German**

-------

Profile: [MII PR Bildgebung Behandlungsempfehlung](StructureDefinition-mii-pr-bildgebung-behandlungsempfehlung.md)

**status**: Completed

**intent**: Proposal

**description**: The patient must receive vacuum biopsy

**subject**: [Erika Beispielpatientin Female, DoB: 1970-01-01](Patient-PatExample.md)

**supportingInfo**: [Diagnostic Report for 'Mammography report' for '->Erika Beispielpatientin Female, DoB: 1970-01-01'](DiagnosticReport-mii-exa-bildgebung-radiologischer-Befund.md)



## Resource Content

```json
{
  "resourceType" : "CarePlan",
  "id" : "mii-exa-bildgebung-behandlungsempfehlung",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-behandlungsempfehlung"]
  },
  "status" : "completed",
  "intent" : "proposal",
  "description" : "The patient must receive vacuum biopsy",
  "subject" : {
    "reference" : "Patient/PatExample"
  },
  "supportingInfo" : [{
    "reference" : "DiagnosticReport/mii-exa-bildgebung-radiologischer-Befund"
  }]
}

```

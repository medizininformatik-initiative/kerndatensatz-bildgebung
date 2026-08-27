# MII Example Bildgebung ReadProcedure - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII Example Bildgebung ReadProcedure**

## Example Procedure: MII Example Bildgebung ReadProcedure

-------

**English**

-------

Profile: [MII PR Bildgebung Radiologische Befundungsprozedur](StructureDefinition-mii-pr-bildgebung-radiologische-befundungsprozedur.md)

**status**: Completed

**category**: Imaging (procedure)

**code**: Consultation and report by radiologist (procedure)

**subject**: [Erika Beispielpatientin Female, DoB: 1970-01-01](Patient-PatExample.md)

**performed**: 2024-07-19 12:03:30+0200

**report**: [Diagnostic Report for 'Mammography report' for '->Erika Beispielpatientin Female, DoB: 1970-01-01'](DiagnosticReport-mii-exa-bildgebung-radiologischer-Befund.md)



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "mii-exa-bildgebung-radiologische-befundungsprozedur",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-radiologische-befundungsprozedur"]
  },
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
      "code" : "28191001",
      "display" : "Consultation and report by radiologist (procedure)"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatExample"
  },
  "performedDateTime" : "2024-07-19T12:03:30+02:00",
  "report" : [{
    "reference" : "DiagnosticReport/mii-exa-bildgebung-radiologischer-Befund"
  }]
}

```

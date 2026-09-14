# MII Example Bildgebung ReadProcedure - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII Example Bildgebung ReadProcedure**

## Beispiel Procedure: MII Example Bildgebung ReadProcedure

-------

**German**

-------

Profile: [MII PR Bildgebung Radiologische Befundungsprozedur](StructureDefinition-mii-pr-bildgebung-radiologische-befundungsprozedur.md)

**status**: Completed

**category**: Imaging (procedure)

**code**: Consultation and report by radiologist (procedure)

**subject**: [Erika Beispielpatientin Female, DoB: 1970-01-01](Patient-mii-exa-bildgebung-radiologischer-patient.md)

**performed**: 2024-07-19 12:03:30+0200

**report**: [DiagnosticReport/mii-exa-bildgebung-radiologischer-Befund](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=http://fhir.org/packages/de.basisprofil.r4/DiagnosticReport/mii-exa-bildgebung-radiologischer-Befund)



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
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "code" : "363679005",
      "display" : "Imaging (procedure)"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "code" : "28191001",
      "display" : "Consultation and report by radiologist (procedure)"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-bildgebung-radiologischer-patient"
  },
  "performedDateTime" : "2024-07-19T12:03:30+02:00",
  "report" : [{
    "reference" : "DiagnosticReport/mii-exa-bildgebung-radiologischer-Befund"
  }]
}

```

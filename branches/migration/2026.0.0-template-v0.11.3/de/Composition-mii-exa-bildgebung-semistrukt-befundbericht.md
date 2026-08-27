# MII Example Bildgebung Composition - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII Example Bildgebung Composition**

## Beispiel Composition: MII Example Bildgebung Composition

-------

**German**

-------

Profile: [MII PR Bildgebung Semistrukturierter Befundbericht](StructureDefinition-mii-pr-bildgebung-semistrukt-befundbericht.md)

**status**: Final

**type**: Diagnostic imaging study

**date**: 2024-07-19 12:03:30+0200

**author**: [Practitioner/PracExample1](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Practitioner/PracExample1)

**title**: Mammographic Report



## Resource Content

```json
{
  "resourceType" : "Composition",
  "id" : "mii-exa-bildgebung-semistrukt-befundbericht",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-semistrukt-befundbericht"]
  },
  "status" : "final",
  "type" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "18748-4",
      "display" : "Diagnostic imaging study"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatExample"
  },
  "date" : "2024-07-19T12:03:30+02:00",
  "author" : [{
    "reference" : "Practitioner/PracExample1"
  }],
  "title" : "Mammographic Report",
  "section" : [{
    "title" : "Left Breast",
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "18782-3",
        "display" : "Radiology Study observation (narrative)"
      }]
    },
    "author" : [{
      "reference" : "Practitioner/PracExample2"
    }],
    "entry" : [{
      "reference" : "DiagnosticReport/mii-exa-bildgebung-radiologischer-Befund"
    }],
    "section" : [{
      "entry" : [{
        "reference" : "Observation/mii-exa-bildgebung-radiologische-beobachtung"
      }]
    }]
  }]
}

```

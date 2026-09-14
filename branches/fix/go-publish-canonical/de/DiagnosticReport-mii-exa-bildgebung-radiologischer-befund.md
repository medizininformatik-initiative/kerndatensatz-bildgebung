# MII Example Bildgebung Diagnostic Report - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII Example Bildgebung Diagnostic Report**

## Beispiel DiagnosticReport: MII Example Bildgebung Diagnostic Report

-------

**German**

-------

Profile: [MII PR Bildgebung Radiologischer Befund](StructureDefinition-mii-pr-bildgebung-radiologischer-befund.md)

## Mammography report (Imaging report (record artifact)) 

| | |
| :--- | :--- |
| Subject | Erika Beispielpatientin Female, DoB: 1970-01-01 |
| Relevant Time | 2024-07-19 12:03:30+0200 |
| Reported | 2024-07-19 12:03:30+0200 |

**Report Details**

* **Code**: [Physical findings of Breast](Observation-mii-exa-bildgebung-radiologische-beobachtung.md)(Breast structure (body structure))
  * **Value**: microcalcifications in the upper outer quadrant in the left breast
  * **Flags**: Final

There are suspicious microcalcifications in the upper outer quadrant in the left breast

**Coded Conclusions:**

* Microcalcifications of the breast (disorder)



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "mii-exa-bildgebung-radiologischer-befund",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-radiologischer-befund"]
  },
  "basedOn" : [{
    "reference" : "ServiceRequest/mii-exa-bildgebung-anforderung-bildgebung"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "code" : "4201000179104",
      "display" : "Imaging report (record artifact)"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "code" : "4231000179109",
      "display" : "Mammography report"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-bildgebung-radiologischer-patient"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-bildgebung-radiologischer-fall"
  },
  "effectiveDateTime" : "2024-07-19T12:03:30+02:00",
  "issued" : "2024-07-19T12:03:30+02:00",
  "result" : [{
    "reference" : "Observation/mii-exa-bildgebung-radiologische-beobachtung"
  }],
  "imagingStudy" : [{
    "reference" : "ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-ct"
  }],
  "conclusion" : "There are suspicious microcalcifications in the upper outer quadrant in the left breast",
  "conclusionCode" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "code" : "44771000",
      "display" : "Microcalcifications of the breast (disorder)"
    }]
  }]
}

```

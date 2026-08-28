# MII EX Bildgebung SOPInstanz - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EX Bildgebung SOPInstanz**

## Extension: MII EX Bildgebung SOPInstanz 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-sop-instanz-uid | *Version*:2027.0.0-ballot |
| Active Stand: 2026-08-28 | *Maschinenlesbarer Name*:MII_EX_Bildgebung_SOP_Instanz_UID |

Die Extension ermöglicht es, den SOPInstanz aus dem entsprechenden DICOM Tag auf Studien-Ebene anzugeben.

**Context of Use**

Diese Extension ergänzt die Observation-Ressource um den Bezug zur Bildinstanz aus der Bildgebungsstudie herzustellen. Die ID verweist hier dementsprechend direkt auf das jeweilige Schichtbild.

-------

**Beispiele**

Beispiel einer Observation-Resssource mit der Angabe zur betrachteten Bild-Instanz

[Observation-mii-exa-bildgebung-radiologische-beobachtung](Observation-mii-exa-bildgebung-radiologische-beobachtung.md)

**Usage info**

**Usages:**

* Use this Extension: [MII PR Bildgebung Radiologische Beobachtung](StructureDefinition-mii-pr-bildgebung-radiologische-beobachtung.md)
* Examples for this Extension: [Observation/mii-exa-bildgebung-radiologische-beobachtung](Observation-mii-exa-bildgebung-radiologische-beobachtung.md) and [Observation/mii-exa-bildgebung-radiologische-messung](Observation-mii-exa-bildgebung-radiologische-messung.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.bildgebung|current/StructureDefinition/StructureDefinition-mii-ex-bildgebung-sop-instanz-uid.json)

### Formale Ansichten des Extension-Inhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [AlleAll](#tabs-all) 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Simple Extension with the type id: Die Extension ermöglicht es, den SOPInstanz aus dem entsprechenden DICOM Tag auf Studien-Ebene anzugeben.

 **Differential-AnsichtDifferential View** 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

 **Snapshot-Ansicht** 

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Simple Extension with the type id: Die Extension ermöglicht es, den SOPInstanz aus dem entsprechenden DICOM Tag auf Studien-Ebene anzugeben.

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-ex-bildgebung-sop-instanz-uid.csv), [Excel](../StructureDefinition-mii-ex-bildgebung-sop-instanz-uid.xlsx), [Schematron](../StructureDefinition-mii-ex-bildgebung-sop-instanz-uid.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-ex-bildgebung-sop-instanz-uid",
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/modul-meta/StructureDefinition/mii-ex-meta-license-codeable",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://hl7.org/fhir/spdx-license",
        "code" : "CC-BY-4.0",
        "display" : "Creative Commons Attribution 4.0 International"
      }]
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-sop-instanz-uid",
  "version" : "2027.0.0-ballot",
  "name" : "MII_EX_Bildgebung_SOP_Instanz_UID",
  "_name" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "MII_EX_Imaging_SOPInstance"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "title" : "MII EX Bildgebung SOPInstanz",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "MII EX Imaging SOPInstance"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-28T06:44:38+00:00",
  "publisher" : "Medizininformatik Initiative",
  "_publisher" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "de"
      },
      {
        "url" : "content",
        "valueString" : "Medizininformatik Initiative"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Die Extension ermöglicht es, den SOPInstanz aus dem entsprechenden DICOM Tag auf Studien-Ebene anzugeben.",
  "_description" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "The extension allows specifying the reason for the imaging procedure from the corresponding DICOM tag at the study level."
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Observation"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "MII EX Bildgebung SOPInstanz",
      "definition" : "Die Extension ermöglicht es, den SOPInstanz aus dem entsprechenden DICOM Tag auf Studien-Ebene anzugeben."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-sop-instanz-uid"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "id"
      }]
    }]
  }
}

```

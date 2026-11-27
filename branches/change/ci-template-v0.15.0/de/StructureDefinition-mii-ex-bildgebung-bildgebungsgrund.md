# MII EX Bildgebung Bildgebungsgrund - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EX Bildgebung Bildgebungsgrund**

## Extension: MII EX Bildgebung Bildgebungsgrund 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-bildgebungsgrund | *Version*:2027.0.0-ballot.1 |
| Active Stand: 2026-11-27 | *Maschinenlesbarer Name*:MII_EX_Bildgebung_Bildgebungsgrund |

Die Extension ermöglicht es, den Bildgebungsgrund aus dem entsprechenden DICOM Tag [0040,1002] auf Studien-Ebene anzugeben.

**Context of Use**

Diese Extension dient zum Anlegen des Grundes für die Bildgebung. Dieser ist zwar ebenso über eine Referenz in der ImagingStudy abgebildet, in diesem Attribut soll jedoch der Wert aus dem entsprechenden DICOM Tag (Reason for the Requested Procedure Attribute [0040,1002]) genutzt werden.

-------

**Beispiele**

**Hinweis:** Aus Gründen der Übersichtlichkeit wurde in diesem Beispiel darauf verzichtet, alle dazugehörigen Serien bzw. Instanzen mit einzubinden. Natürlich ist es bei der Implementierung vorgesehen, dass alle zur jeweiligen Studie gehörenden Serien und Instanzen auch in der resultierenden FHIR-Ressource enthalten sind - dafür wird dann einfach die Sequenz "series" bzw "instance" für jede Serie bzw. Instanz wiederholt und mit den entsprechenden Werten befüllt.

Beispiele von ImagingStudy-Ressourcen mit der Extension für den Bildgebungsgrund:

Beispiel eines CTs: [ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-ct](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-ct.md)

Beispiel eines MRTs: [ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-mr](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-mr.md)

Beispiel eine Röntgenbilds: [ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-cr](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-cr.md)

Beispiel eines PET-Scans: [ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-pt](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-pt.md)

**Usage info**

**Usages:**

* Use this Extension: [MII PR Bildgebung Bildgebungsstudie](StructureDefinition-mii-pr-bildgebung-bildgebungsstudie.md)
* Examples for this Extension: [ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-cr](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-cr.md), [ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-ct](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-ct.md), [ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-mr-series](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-mr-series.md), [ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-mr](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-mr.md)... Show 3 more, [ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-nm](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-nm.md), [ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-pt](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-pt.md) and [ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-us](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-us.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.bildgebung|current/StructureDefinition/StructureDefinition-mii-ex-bildgebung-bildgebungsgrund.json)

### Formale Ansichten des Extension-Inhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [AlleAll](#tabs-all) 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

 **Differential-AnsichtDifferential View** 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

 **Snapshot-Ansicht** 

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-ex-bildgebung-bildgebungsgrund.csv), [Excel](../StructureDefinition-mii-ex-bildgebung-bildgebungsgrund.xlsx), [Schematron](../StructureDefinition-mii-ex-bildgebung-bildgebungsgrund.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-ex-bildgebung-bildgebungsgrund",
  "meta" : {
    "extension" : [{
      "extension" : [{
        "url" : "packageId",
        "valueId" : "de.medizininformatikinitiative.kerndatensatz.bildgebung"
      },
      {
        "url" : "version",
        "valueString" : "2027.0.0-ballot.1"
      },
      {
        "url" : "uri",
        "valueUri" : "https://www.medizininformatik-initiative.de/fhir/modul-bildgebung"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/package-source"
    }],
    "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablestructuredefinition",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablestructuredefinition"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm",
    "valueCoding" : {
      "system" : "http://hl7.org/fhir/version-algorithm",
      "code" : "semver",
      "display" : "SemVer"
    }
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/modul-meta/StructureDefinition/mii-ex-meta-license-codeable",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://hl7.org/fhir/spdx-license",
        "code" : "CC-BY-4.0",
        "display" : "Creative Commons Attribution 4.0 International"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "publishable"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionPolicy",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/artifact-version-policy-codes",
        "version" : "3.0.0",
        "code" : "package",
        "display" : "Package"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-usage",
    "valueMarkdown" : "Use this extension to exchange data for content of the corresponding Medical Informatics Initiative logical model that is not represented in the FHIR core resource structure."
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/resource-approvalDate",
    "valueDate" : "2024-12-19"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/resource-effectivePeriod",
    "valuePeriod" : {
      "start" : "2027"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-topic",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl",
        "code" : "C115715"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-author",
    "valueContactDetail" : {
      "telecom" : [{
        "system" : "email",
        "value" : "kds-bildgebung@medizininformatik-initiative.de"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-editor",
    "valueContactDetail" : {
      "name" : "Taskforce Core Data Set"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-reviewer",
    "valueContactDetail" : {
      "name" : "National Steering Committee",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/interoperability-working-group"
      },
      {
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/national-steering-committee"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-endorser",
    "valueContactDetail" : {
      "name" : "National Steering Committee",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/interoperability-working-group"
      },
      {
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/national-steering-committee"
      }]
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-bildgebungsgrund",
  "version" : "2027.0.0-ballot.1",
  "name" : "MII_EX_Bildgebung_Bildgebungsgrund",
  "_name" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "MII_EX_Imaging_Imaging_Reason"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "title" : "MII EX Bildgebung Bildgebungsgrund",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "MII EX Imaging Imaging Reason"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "status" : "active",
  "experimental" : false,
  "date" : "2026-11-27T14:09:07+00:00",
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
  "description" : "Die Extension ermöglicht es, den Bildgebungsgrund aus dem entsprechenden DICOM Tag [0040,1002] auf Studien-Ebene anzugeben.",
  "_description" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "The extension allows specifying the reason for the imaging procedure from the corresponding DICOM tag [0040/1002] at the study level."
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
    "expression" : "ImagingStudy"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "MII EX Bildgebung Bildgebungsgrund",
      "definition" : "Die Extension ermöglicht es, den Bildgebungsgrund aus dem entsprechenden DICOM Tag [0040,1002] auf Studien-Ebene anzugeben."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-bildgebungsgrund"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```

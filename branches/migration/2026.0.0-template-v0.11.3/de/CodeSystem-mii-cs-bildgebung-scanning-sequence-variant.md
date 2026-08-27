# MII CS Bildgebung Scanning Sequence Variant - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CS Bildgebung Scanning Sequence Variant**

## CodeSystem: MII CS Bildgebung Scanning Sequence Variant 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/CodeSystem/mii-cs-bildgebung-scanning-sequence-variant | *Version*:2027.0.0-ballot |
| Active Stand: 2026-09-01 | *Maschinenlesbarer Name*:MII_CS_Bildgebung_Scanning_Sequence_Variant |

 
Scanning Sequence Varianten für MR Untersuchungen 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MII VS Bildgebung Imaging Study MR Scanning Sequence Variant](ValueSet-mii-vs-bildgebung-mr-scanning-sequence-variant.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-bildgebung-scanning-sequence-variant",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/CodeSystem/mii-cs-bildgebung-scanning-sequence-variant",
  "version" : "2027.0.0-ballot",
  "name" : "MII_CS_Bildgebung_Scanning_Sequence_Variant",
  "_name" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "MII_CS_Imaging_Scanning_Sequence_Variant"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "title" : "MII CS Bildgebung Scanning Sequence Variant",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "MII CS Imaging Scanning Sequence Variant"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-01",
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
  "description" : "Scanning Sequence Varianten für MR Untersuchungen",
  "_description" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "Codes for scanning-sequence-variant in radiological images"
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
  "caseSensitive" : true,
  "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/ValueSet/mii-vs-bildgebung-scanning-sequence-variant",
  "content" : "complete",
  "count" : 8,
  "concept" : [{
    "code" : "SK",
    "display" : "segmented k-space"
  },
  {
    "code" : "MTC",
    "display" : "magnetization transfer contrast"
  },
  {
    "code" : "SS",
    "display" : "steady state"
  },
  {
    "code" : "TRSS",
    "display" : "time reversed steady state"
  },
  {
    "code" : "SP",
    "display" : "spoiled"
  },
  {
    "code" : "MP",
    "display" : "MAG prepared"
  },
  {
    "code" : "OSP",
    "display" : "oversampling phase"
  },
  {
    "code" : "NONE",
    "display" : "no sequence variant"
  }]
}

```

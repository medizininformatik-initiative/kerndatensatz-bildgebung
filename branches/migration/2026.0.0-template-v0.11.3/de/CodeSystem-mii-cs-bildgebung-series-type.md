# MII CS Bildgebung Series Type - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CS Bildgebung Series Type**

## CodeSystem: MII CS Bildgebung Series Type 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/CodeSystem/mii-cs-bildgebung-series-type | *Version*:2027.0.0-ballot |
| Active Stand: 2026-09-01 | *Maschinenlesbarer Name*:MII_CS_Bildgebung_Series_Type |

 
Series Type für PET Untersuchungen 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MII VS Bildgebung Imaging Study PT Series Type Spacial](ValueSet-mii-vs-bildgebung-pt-series-type-spacial.md)
* [MII VS Bildgebung Imaging Study PT Series Type Volumetric](ValueSet-mii-vs-bildgebung-pt-series-type-volumetric.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-bildgebung-series-type",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/CodeSystem/mii-cs-bildgebung-series-type",
  "version" : "2027.0.0-ballot",
  "name" : "MII_CS_Bildgebung_Series_Type",
  "_name" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "MII_CS_Imaging_Series_Type"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "title" : "MII CS Bildgebung Series Type",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "MII CS Imaging Series Type"
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
  "description" : "Series Type für PET Untersuchungen",
  "_description" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "Codes for series Type in radiological images"
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
  "content" : "complete",
  "count" : 6,
  "concept" : [{
    "code" : "STATIC",
    "display" : "a group of images at varying spatial locations at the same time"
  },
  {
    "code" : "DYNAMIC",
    "display" : "a group of images at a set of spatial locations (e.g., slices) at varying time slices, with all spatial locations acquired at all time slices"
  },
  {
    "code" : "GATED",
    "display" : "a group of images at the same spatial location, same starting and ending time, but acquired in different time slots of (possibly) different R-R intervals"
  },
  {
    "code" : "WHOLEBODY",
    "display" : "same as STATIC, except covering multiple transverse fields of view (and therefore acquired at a different time)"
  },
  {
    "code" : "IMAGE",
    "display" : "a tomographic image slice"
  },
  {
    "code" : "REPROJECTION",
    "display" : "a projection image derived from forward projection through slices of tomographic images, using the algorithm defined in Reprojection Method (0054,1004)"
  }]
}

```

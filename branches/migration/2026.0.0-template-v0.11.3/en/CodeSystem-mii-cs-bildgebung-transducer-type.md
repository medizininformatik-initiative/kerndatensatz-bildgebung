# MII CS Bildgebung Transducer Type - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CS Bildgebung Transducer Type**

## CodeSystem: MII CS Bildgebung Transducer Type 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/CodeSystem/mii-cs-bildgebung-transducer-type | *Version*:2027.0.0-ballot |
| Active as of 2026-09-01 | *Computable Name*:MII_CS_Bildgebung_Transducer_Type |

 
Codes for transducer types in radiological ultrasound images 

This Code system is referenced in the definition of the following value sets:

* [MII VS Bildgebung Imaging Study US Transducer Type](ValueSet-mii-vs-bildgebung-us-transducer-type.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-bildgebung-transducer-type",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/CodeSystem/mii-cs-bildgebung-transducer-type",
  "version" : "2027.0.0-ballot",
  "name" : "MII_CS_Bildgebung_Transducer_Type",
  "_name" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "MII_CS_Imaging_Transducer_Type"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "title" : "MII CS Bildgebung Transducer Type",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "MII CS Imaging Transducer Type"
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
  "description" : "Schallkopftyp für US Untersuchungen",
  "_description" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "Codes for transducer types in radiological ultrasound images"
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
  "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/ValueSet/mii-vs-bildgebung-us-transducer-type",
  "content" : "complete",
  "count" : 16,
  "concept" : [{
    "code" : "SECTOR_PHASED",
    "display" : "Sector Phased"
  },
  {
    "code" : "SECTOR_MECH",
    "display" : "Sector Mech"
  },
  {
    "code" : "SECTOR_ANNULAR",
    "display" : "Sector Annular"
  },
  {
    "code" : "LINEAR",
    "display" : "Linear"
  },
  {
    "code" : "CURVED_LINEAR",
    "display" : "Curved Linear"
  },
  {
    "code" : "SINGLE_CRYSTAL",
    "display" : "Single Crystal"
  },
  {
    "code" : "SPLIT_XTAL_CWD",
    "display" : "Split Xtal CWD"
  },
  {
    "code" : "IV_PHASED",
    "display" : "IV Phased"
  },
  {
    "code" : "IV_ROT_XTAL",
    "display" : "IV Rot XTAL"
  },
  {
    "code" : "IV_ROT_MIRROR",
    "display" : "IV Rot Mirror"
  },
  {
    "code" : "ENDOCAV_PA",
    "display" : "Endocav PA"
  },
  {
    "code" : "ENDOCAV_MECH",
    "display" : "Endocav Mech"
  },
  {
    "code" : "ENDOCAV_CLA",
    "display" : "EndocavCLA"
  },
  {
    "code" : "ENDOCAV_AA",
    "display" : "Endocav AA"
  },
  {
    "code" : "ENDOCAV_LINEAR",
    "display" : "Endocav Linear"
  },
  {
    "code" : "VECTOR_PHASED",
    "display" : "Vector Phased"
  }]
}

```

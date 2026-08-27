# MII VS Bildgebung Instance Image Type US Implemantation - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Bildgebung Instance Image Type US Implemantation**

## ValueSet: MII VS Bildgebung Instance Image Type US Implemantation 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/ValueSet/mii-vs-bildgebung-instance-image-type-us-implemantation | *Version*:2027.0.0-ballot |
| Active as of 2026-09-01 | *Computable Name*:MII_VS_Bildgebung_Instance_Image_Type_US_Implemantation |

 
Import the ValueSet for Instance Image Type US Implemantation 

 **References** 

* [MII EX Bildgebung Instanzdetails](StructureDefinition-mii-ex-bildgebung-instanz-details.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-bildgebung-instance-image-type-us-implementation",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/ValueSet/mii-vs-bildgebung-instance-image-type-us-implemantation",
  "version" : "2027.0.0-ballot",
  "name" : "MII_VS_Bildgebung_Instance_Image_Type_US_Implemantation",
  "title" : "MII VS Bildgebung Instance Image Type US Implemantation",
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
  "description" : "Import the ValueSet for Instance Image Type US Implemantation",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/CodeSystem/mii-cs-bildgebung-instance-image-type",
      "concept" : [{
        "code" : "0001"
      },
      {
        "code" : "0002"
      },
      {
        "code" : "0004"
      },
      {
        "code" : "0008"
      },
      {
        "code" : "0010"
      },
      {
        "code" : "0020"
      },
      {
        "code" : "0040"
      },
      {
        "code" : "0100"
      },
      {
        "code" : "0200"
      },
      {
        "code" : "0400"
      }]
    }]
  }
}

```

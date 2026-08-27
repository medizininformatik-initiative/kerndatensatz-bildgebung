# MII VS Bildgebung Instance Image Type MR - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Bildgebung Instance Image Type MR**

## ValueSet: MII VS Bildgebung Instance Image Type MR 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/ValueSet/mii-vs-bildgebung-instance-image-type-mr | *Version*:2027.0.0-ballot |
| Active Stand: 2026-09-01 | *Maschinenlesbarer Name*:MII_VS_Bildgebung_Instance_Image_Type_MR |

 
Import the ValueSet for Instance Image Type MR 

 **References** 

* [MII EX Bildgebung Instanzdetails](StructureDefinition-mii-ex-bildgebung-instanz-details.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-bildgebung-instance-image-type-mr",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/ValueSet/mii-vs-bildgebung-instance-image-type-mr",
  "version" : "2027.0.0-ballot",
  "name" : "MII_VS_Bildgebung_Instance_Image_Type_MR",
  "title" : "MII VS Bildgebung Instance Image Type MR",
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
  "description" : "Import the ValueSet for Instance Image Type MR",
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
        "code" : "DENSITYMAP"
      },
      {
        "code" : "DIFFUSIONMAP"
      },
      {
        "code" : "IMAGEADDITION"
      },
      {
        "code" : "MODULUSSUBTRACT"
      },
      {
        "code" : "MPR"
      },
      {
        "code" : "OTHER"
      },
      {
        "code" : "PHASEMAP"
      },
      {
        "code" : "PHASESUBTRACT"
      },
      {
        "code" : "PROJECTIONIMAGE"
      },
      {
        "code" : "T1MAP"
      },
      {
        "code" : "T2MAP"
      },
      {
        "code" : "VELOCITYMAP"
      }]
    }]
  }
}

```

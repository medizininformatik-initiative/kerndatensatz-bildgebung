# MII VS Bildgebung Instance Image Type US - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Bildgebung Instance Image Type US**

## ValueSet: MII VS Bildgebung Instance Image Type US 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/ValueSet/mii-vs-bildgebung-instance-image-type-us | *Version*:2027.0.0-ballot |
| Active as of 2026-09-01 | *Computable Name*:MII_VS_Bildgebung_Instance_Image_Type_US |

 
Import the ValueSet for Instance Image Type US 

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
  "id" : "mii-vs-bildgebung-instance-image-type-us",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/ValueSet/mii-vs-bildgebung-instance-image-type-us",
  "version" : "2027.0.0-ballot",
  "name" : "MII_VS_Bildgebung_Instance_Image_Type_US",
  "title" : "MII VS Bildgebung Instance Image Type US",
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
  "description" : "Import the ValueSet for Instance Image Type US",
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
        "code" : "ABDOMINAL"
      },
      {
        "code" : "BREAST"
      },
      {
        "code" : "CHEST"
      },
      {
        "code" : "ENDOCAVITARY"
      },
      {
        "code" : "ENDORECTAL"
      },
      {
        "code" : "ENDOVAGINAL"
      },
      {
        "code" : "EPICARDIAL"
      },
      {
        "code" : "FETAL_HEART"
      },
      {
        "code" : "GYNECOLOGY"
      },
      {
        "code" : "INTRACARDIAC"
      },
      {
        "code" : "INTRAOPERATIVE"
      },
      {
        "code" : "INTRAVASCULAR"
      },
      {
        "code" : "MUSCULOSKELETAL"
      },
      {
        "code" : "NEONATAL_HEAD"
      },
      {
        "code" : "OBSTETRICAL"
      },
      {
        "code" : "OPHTHALMIC"
      },
      {
        "code" : "PEDIATRIC"
      },
      {
        "code" : "PELVIC"
      },
      {
        "code" : "RETROPERITONEAL"
      },
      {
        "code" : "SCROTAL"
      },
      {
        "code" : "SMALL_PARTS"
      },
      {
        "code" : "TEE"
      },
      {
        "code" : "THYROID"
      },
      {
        "code" : "TRANSCRANIAL"
      },
      {
        "code" : "TTE"
      },
      {
        "code" : "US_BIOPSY"
      },
      {
        "code" : "VASCULAR"
      }]
    }]
  }
}

```

# MII VS Bildgebung Findings SCT - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Bildgebung Findings SCT**

## ValueSet: MII VS Bildgebung Findings SCT 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/ValueSet/mii-vs-bildgebung-findings-sct | *Version*:2027.0.0-ballot |
| Active as of 2026-09-15 | *Computable Name*:MII_VS_Bildgebung_Findings_SCT |
| **Copyright/Legal**: This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. SNOMED and SNOMED CT are registered trademarks of SNOMED International. Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license. | |

 
Import the ValueSet for Diagnostic Reports and Service Request 

 **References** 

* [MII PR Bildgebung Anforderung Bildgebung](StructureDefinition-mii-pr-bildgebung-anforderung-bildgebung.md)
* [MII PR Bildgebung Radiologische Beobachtung](StructureDefinition-mii-pr-bildgebung-radiologische-beobachtung.md)
* [MII PR Bildgebung Radiologischer Befund](StructureDefinition-mii-pr-bildgebung-radiologischer-befund.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-bildgebung-findings-sct",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/ValueSet/mii-vs-bildgebung-findings-sct",
  "version" : "2027.0.0-ballot",
  "name" : "MII_VS_Bildgebung_Findings_SCT",
  "title" : "MII VS Bildgebung Findings SCT",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-15",
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
  "description" : "Import the ValueSet for Diagnostic Reports and Service Request",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "copyright" : "This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. SNOMED and SNOMED CT are registered trademarks of SNOMED International. Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license.",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "filter" : [{
        "property" : "constraint",
        "op" : "=",
        "value" : "< 404684003 | Clinical finding (finding)|"
      }]
    }]
  }
}

```

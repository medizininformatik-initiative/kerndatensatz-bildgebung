# MII VS Bildgebung ImagingStudy-Series View Position - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Bildgebung ImagingStudy-Series View Position**

## ValueSet: MII VS Bildgebung ImagingStudy-Series View Position 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/ValueSet/mii-vs-bildgebung-imagingStudy-series-view-position | *Version*:2027.0.0-ballot |
| Active Stand: 2026-09-01 | *Maschinenlesbarer Name*:MII_VS_Bildgebung_ImagingStudy_Series_View_Position |
| **Copyright/Rechtliches**: This value set includes content from DICOM (https://www.dicomstandard.org/). DICOM® is the registered trademark of the National Electrical Manufacturers Association (NEMA) for its Standards publications relating to digital communications of medical information. | |

 
Import the ValueSets for view position in MG and DX/CR series 

 **References** 

* [MII EX Bildgebung Modalität MG/CR/DX](StructureDefinition-mii-ex-bildgebung-modalitaet-mg-cr-dx.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unsupported Code System Version)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-bildgebung-imagingStudy-series-view-position",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/ValueSet/mii-vs-bildgebung-imagingStudy-series-view-position",
  "version" : "2027.0.0-ballot",
  "name" : "MII_VS_Bildgebung_ImagingStudy_Series_View_Position",
  "title" : "MII VS Bildgebung ImagingStudy-Series View Position",
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
  "description" : "Import the ValueSets for view position in MG and DX/CR series",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "copyright" : "This value set includes content from DICOM (https://www.dicomstandard.org/). DICOM® is the registered trademark of the National Electrical Manufacturers Association (NEMA) for its Standards publications relating to digital communications of medical information.",
  "compose" : {
    "include" : [{
      "valueSet" : ["http://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_4014.html"]
    },
    {
      "valueSet" : ["http://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_4010.html"]
    }]
  }
}

```

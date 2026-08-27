# MII CS Bildgebung Instance Image Type - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CS Bildgebung Instance Image Type**

## CodeSystem: MII CS Bildgebung Instance Image Type 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/CodeSystem/mii-cs-bildgebung-instance-image-type | *Version*:2027.0.0-ballot |
| Active Stand: 2026-09-01 | *Maschinenlesbarer Name*:MII_CS_Bildgebung_Instance_Image_Type |

 
Image type für Radiologische Bilder 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MII VS Bildgebung Instance Image Type CT](ValueSet-mii-vs-bildgebung-instance-image-type-ct.md)
* [MII VS Bildgebung Instance Image Type MR](ValueSet-mii-vs-bildgebung-instance-image-type-mr.md)
* [MII VS Bildgebung Instance Image Type NM](ValueSet-mii-vs-bildgebung-instance-image-type-nm.md)
* [MII VS Bildgebung Instance Image Type NM Implementation](ValueSet-mii-vs-bildgebung-instance-image-type-nm-implementation.md)
* [MII VS Bildgebung Instance Image Type Patient Examination](ValueSet-mii-vs-bildgebung-instance-image-type-patient-examination.md)
* [MII VS Bildgebung Instance Image Type Pixel Data](ValueSet-mii-vs-bildgebung-instance-image-type-pixel-data.md)
* [MII VS Bildgebung Instance Image Type US](ValueSet-mii-vs-bildgebung-instance-image-type-us.md)
* [MII VS Bildgebung Instance Image Type US Implemantation](ValueSet-mii-vs-bildgebung-instance-image-type-us-implementation.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-bildgebung-instance-image-type",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/CodeSystem/mii-cs-bildgebung-instance-image-type",
  "version" : "2027.0.0-ballot",
  "name" : "MII_CS_Bildgebung_Instance_Image_Type",
  "_name" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "MII_CS_Imaging_Image_Type"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "title" : "MII CS Bildgebung Instance Image Type",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "MII CS Imaging Image Type"
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
  "description" : "Image type für Radiologische Bilder",
  "_description" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "Codes for Image Type in radiological images"
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
  "count" : 75,
  "concept" : [{
    "code" : "PDC",
    "display" : "Pixel Data Characteristics",
    "property" : [{
      "code" : "child",
      "valueCode" : "ORIGINAL"
    },
    {
      "code" : "child",
      "valueCode" : "DERIVED"
    }]
  },
  {
    "code" : "ORIGINAL",
    "display" : "identifies an original image",
    "property" : [{
      "code" : "parent",
      "valueCode" : "PDC"
    }]
  },
  {
    "code" : "DERIVED",
    "display" : "identifies an derived image",
    "property" : [{
      "code" : "parent",
      "valueCode" : "PDC"
    }]
  },
  {
    "code" : "PEC",
    "display" : "Patient Examination Characteristics",
    "property" : [{
      "code" : "child",
      "valueCode" : "PRIMARY"
    },
    {
      "code" : "child",
      "valueCode" : "SECONDARY"
    }]
  },
  {
    "code" : "PRIMARY",
    "display" : "identifies a primary image",
    "property" : [{
      "code" : "parent",
      "valueCode" : "PEC"
    }]
  },
  {
    "code" : "SECONDARY",
    "display" : "identifies a secondary image",
    "property" : [{
      "code" : "parent",
      "valueCode" : "PEC"
    }]
  },
  {
    "code" : "MSC",
    "display" : "Modality Specific Characteristics",
    "property" : [{
      "code" : "child",
      "valueCode" : "CT"
    },
    {
      "code" : "child",
      "valueCode" : "MR"
    },
    {
      "code" : "child",
      "valueCode" : "CR"
    },
    {
      "code" : "child",
      "valueCode" : "NM"
    },
    {
      "code" : "child",
      "valueCode" : "XR"
    },
    {
      "code" : "child",
      "valueCode" : "US"
    }]
  },
  {
    "code" : "CT",
    "display" : "CT Specific Characteristics",
    "property" : [{
      "code" : "parent",
      "valueCode" : "MSC"
    },
    {
      "code" : "child",
      "valueCode" : "AXIAL"
    },
    {
      "code" : "child",
      "valueCode" : "LOCALIZER"
    }]
  },
  {
    "code" : "AXIAL",
    "display" : "a CT Cross-sectional Image",
    "property" : [{
      "code" : "parent",
      "valueCode" : "CT"
    }]
  },
  {
    "code" : "LOCALIZER",
    "display" : "a CT Localizer Image",
    "property" : [{
      "code" : "parent",
      "valueCode" : "CT"
    }]
  },
  {
    "code" : "MR",
    "display" : "MR Specific Characteristics",
    "property" : [{
      "code" : "child",
      "valueCode" : "VELOCITYMAP"
    }]
  },
  {
    "code" : "DENSITYMAP",
    "display" : "Density Map",
    "property" : [{
      "code" : "parent",
      "valueCode" : "MR"
    }]
  },
  {
    "code" : "DIFFUSIONMAP",
    "display" : "Diffusion Map",
    "property" : [{
      "code" : "parent",
      "valueCode" : "MR"
    }]
  },
  {
    "code" : "IMAGEADDITION",
    "display" : "Image Addition",
    "property" : [{
      "code" : "parent",
      "valueCode" : "MR"
    }]
  },
  {
    "code" : "MODULUSSUBTRACT",
    "display" : "Modulus Substract",
    "property" : [{
      "code" : "parent",
      "valueCode" : "MR"
    }]
  },
  {
    "code" : "MPR",
    "display" : "MPR",
    "property" : [{
      "code" : "parent",
      "valueCode" : "MR"
    }]
  },
  {
    "code" : "OTHER",
    "display" : "Other",
    "property" : [{
      "code" : "parent",
      "valueCode" : "MR"
    }]
  },
  {
    "code" : "PHASEMAP",
    "display" : "Phase Map",
    "property" : [{
      "code" : "parent",
      "valueCode" : "MR"
    }]
  },
  {
    "code" : "PHASESUBTRACT",
    "display" : "Phase Substract",
    "property" : [{
      "code" : "parent",
      "valueCode" : "MR"
    }]
  },
  {
    "code" : "PROJECTIONIMAGE",
    "display" : "Projection Image",
    "property" : [{
      "code" : "parent",
      "valueCode" : "MR"
    }]
  },
  {
    "code" : "T1MAP",
    "display" : "T1 Map",
    "property" : [{
      "code" : "parent",
      "valueCode" : "MR"
    }]
  },
  {
    "code" : "T2MAP",
    "display" : "T2 Map",
    "property" : [{
      "code" : "parent",
      "valueCode" : "MR"
    }]
  },
  {
    "code" : "VELOCITYMAP",
    "display" : "Velocity Map",
    "property" : [{
      "code" : "parent",
      "valueCode" : "MR"
    }]
  },
  {
    "code" : "NM",
    "display" : "NM Specific Characteristics",
    "property" : [{
      "code" : "parent",
      "valueCode" : "MSC"
    },
    {
      "code" : "child",
      "valueCode" : "STATIC"
    },
    {
      "code" : "child",
      "valueCode" : "DYNAMIC"
    },
    {
      "code" : "child",
      "valueCode" : "GATED"
    },
    {
      "code" : "child",
      "valueCode" : "WHOLEBODY"
    },
    {
      "code" : "child",
      "valueCode" : "TOMO"
    },
    {
      "code" : "child",
      "valueCode" : "GATEDTOMO"
    },
    {
      "code" : "child",
      "valueCode" : "RECONTOMO"
    },
    {
      "code" : "child",
      "valueCode" : "RECONGATEDTOMO"
    }]
  },
  {
    "code" : "STATIC",
    "display" : "Static",
    "property" : [{
      "code" : "parent",
      "valueCode" : "NM"
    }]
  },
  {
    "code" : "DYNAMIC",
    "display" : "Dynamic",
    "property" : [{
      "code" : "parent",
      "valueCode" : "NM"
    }]
  },
  {
    "code" : "GATED",
    "display" : "Gated",
    "property" : [{
      "code" : "parent",
      "valueCode" : "NM"
    }]
  },
  {
    "code" : "WHOLEBODY",
    "display" : "Whole Body",
    "property" : [{
      "code" : "parent",
      "valueCode" : "NM"
    }]
  },
  {
    "code" : "TOMO",
    "display" : "Tomo",
    "property" : [{
      "code" : "parent",
      "valueCode" : "NM"
    }]
  },
  {
    "code" : "GATEDTOMO",
    "display" : "Gated Tomo",
    "property" : [{
      "code" : "parent",
      "valueCode" : "NM"
    }]
  },
  {
    "code" : "RECONTOMO",
    "display" : "Recon Tomo",
    "property" : [{
      "code" : "parent",
      "valueCode" : "NM"
    }]
  },
  {
    "code" : "RECONGATEDTOMO",
    "display" : "Recon Gated Tomo",
    "property" : [{
      "code" : "parent",
      "valueCode" : "NM"
    }]
  },
  {
    "code" : "US",
    "display" : "US Specific Characteristics",
    "property" : [{
      "code" : "parent",
      "valueCode" : "MSC"
    },
    {
      "code" : "child",
      "valueCode" : "ADOMINAL"
    },
    {
      "code" : "child",
      "valueCode" : "BREAST"
    },
    {
      "code" : "child",
      "valueCode" : "CHEST"
    },
    {
      "code" : "child",
      "valueCode" : "ENDOCAVITARY"
    },
    {
      "code" : "child",
      "valueCode" : "ENDORECTAL"
    },
    {
      "code" : "child",
      "valueCode" : "ENDOVAGINAL"
    },
    {
      "code" : "child",
      "valueCode" : "EPICARDIAL"
    },
    {
      "code" : "child",
      "valueCode" : "FETAL_HEART"
    },
    {
      "code" : "child",
      "valueCode" : "GYNECOLOGY"
    },
    {
      "code" : "child",
      "valueCode" : "INTRACARDIAC"
    },
    {
      "code" : "child",
      "valueCode" : "INTRAOPERATIVE"
    },
    {
      "code" : "child",
      "valueCode" : "INTRAVASCULAR"
    },
    {
      "code" : "child",
      "valueCode" : "MUSCULOSKELETAL"
    },
    {
      "code" : "child",
      "valueCode" : "NEONATAL_HEAD"
    },
    {
      "code" : "child",
      "valueCode" : "OBSTETRICAL"
    },
    {
      "code" : "child",
      "valueCode" : "OPHTHALMIC"
    },
    {
      "code" : "child",
      "valueCode" : "PEDIATRIC"
    },
    {
      "code" : "child",
      "valueCode" : "PELVIC"
    },
    {
      "code" : "child",
      "valueCode" : "RETROPERITONEAL"
    },
    {
      "code" : "child",
      "valueCode" : "SCROTAL"
    },
    {
      "code" : "child",
      "valueCode" : "SMALL_PARTS"
    },
    {
      "code" : "child",
      "valueCode" : "TEE"
    },
    {
      "code" : "child",
      "valueCode" : "THYROID"
    },
    {
      "code" : "child",
      "valueCode" : "TRANSCRANIAL"
    },
    {
      "code" : "child",
      "valueCode" : "TTE"
    },
    {
      "code" : "child",
      "valueCode" : "US_BIOPSY"
    },
    {
      "code" : "child",
      "valueCode" : "VASCULAR"
    }]
  },
  {
    "code" : "ABDOMINAL",
    "display" : "ABDOMINAL",
    "property" : [{
      "code" : "parent",
      "valueCode" : "US"
    }]
  },
  {
    "code" : "BREAST",
    "display" : "BREAST",
    "property" : [{
      "code" : "parent",
      "valueCode" : "US"
    }]
  },
  {
    "code" : "CHEST",
    "display" : "CHEST",
    "property" : [{
      "code" : "parent",
      "valueCode" : "US"
    }]
  },
  {
    "code" : "ENDOCAVITARY",
    "display" : "ENDOCAVITARY",
    "property" : [{
      "code" : "parent",
      "valueCode" : "US"
    }]
  },
  {
    "code" : "ENDORECTAL",
    "display" : "ENDORECTAL",
    "property" : [{
      "code" : "parent",
      "valueCode" : "US"
    }]
  },
  {
    "code" : "ENDOVAGINAL",
    "display" : "ENDOVAGINAL",
    "property" : [{
      "code" : "parent",
      "valueCode" : "US"
    }]
  },
  {
    "code" : "EPICARDIAL",
    "display" : "EPICARDIAL",
    "property" : [{
      "code" : "parent",
      "valueCode" : "US"
    }]
  },
  {
    "code" : "FETAL_HEART",
    "display" : "FETAL HEART",
    "property" : [{
      "code" : "parent",
      "valueCode" : "US"
    }]
  },
  {
    "code" : "GYNECOLOGY",
    "display" : "GYNECOLOGY",
    "property" : [{
      "code" : "parent",
      "valueCode" : "US"
    }]
  },
  {
    "code" : "INTRACARDIAC",
    "display" : "INTRACARDIAC",
    "property" : [{
      "code" : "parent",
      "valueCode" : "US"
    }]
  },
  {
    "code" : "INTRAOPERATIVE",
    "display" : "INTRAOPERATIVE",
    "property" : [{
      "code" : "parent",
      "valueCode" : "US"
    }]
  },
  {
    "code" : "INTRAVASCULAR",
    "display" : "INTRAVASCULAR",
    "property" : [{
      "code" : "parent",
      "valueCode" : "US"
    }]
  },
  {
    "code" : "MUSCULOSKELETAL",
    "display" : "MUSCULOSKELETAL",
    "property" : [{
      "code" : "parent",
      "valueCode" : "US"
    }]
  },
  {
    "code" : "NEONATAL_HEAD",
    "display" : "NEONATAL HEAD",
    "property" : [{
      "code" : "parent",
      "valueCode" : "US"
    }]
  },
  {
    "code" : "OBSTETRICAL",
    "display" : "OBSTETRICAL",
    "property" : [{
      "code" : "parent",
      "valueCode" : "US"
    }]
  },
  {
    "code" : "OPHTHALMIC",
    "display" : "OPHTHALMIC",
    "property" : [{
      "code" : "parent",
      "valueCode" : "US"
    }]
  },
  {
    "code" : "PEDIATRIC",
    "display" : "PEDIATRIC",
    "property" : [{
      "code" : "parent",
      "valueCode" : "US"
    }]
  },
  {
    "code" : "PELVIC",
    "display" : "PELVIC",
    "property" : [{
      "code" : "parent",
      "valueCode" : "US"
    }]
  },
  {
    "code" : "RETROPERITONEAL",
    "display" : "RETROPERITONEAL",
    "property" : [{
      "code" : "parent",
      "valueCode" : "US"
    }]
  },
  {
    "code" : "SCROTAL",
    "display" : "SCROTAL",
    "property" : [{
      "code" : "parent",
      "valueCode" : "US"
    }]
  },
  {
    "code" : "SMALL_PARTS",
    "display" : "SMALL PARTS",
    "property" : [{
      "code" : "parent",
      "valueCode" : "US"
    }]
  },
  {
    "code" : "TEE",
    "display" : "TEE",
    "property" : [{
      "code" : "parent",
      "valueCode" : "US"
    }]
  },
  {
    "code" : "THYROID",
    "display" : "THYROID",
    "property" : [{
      "code" : "parent",
      "valueCode" : "US"
    }]
  },
  {
    "code" : "TRANSCRANIAL",
    "display" : "TRANSCRANIAL",
    "property" : [{
      "code" : "parent",
      "valueCode" : "US"
    }]
  },
  {
    "code" : "TTE",
    "display" : "TTE",
    "property" : [{
      "code" : "parent",
      "valueCode" : "US"
    }]
  },
  {
    "code" : "US_BIOPSY",
    "display" : "US BIOPSY",
    "property" : [{
      "code" : "parent",
      "valueCode" : "US"
    }]
  },
  {
    "code" : "VASCULAR",
    "display" : "VASCULAR",
    "property" : [{
      "code" : "parent",
      "valueCode" : "US"
    }]
  },
  {
    "code" : "ISI",
    "display" : "Implemetation Specific Identifiers",
    "property" : [{
      "code" : "child",
      "valueCode" : "NMI"
    },
    {
      "code" : "child",
      "valueCode" : "USI"
    }]
  },
  {
    "code" : "NMI",
    "display" : "NM Implematation",
    "property" : [{
      "code" : "parent",
      "valueCode" : "ISI"
    },
    {
      "code" : "child",
      "valueCode" : "EMISSION"
    },
    {
      "code" : "child",
      "valueCode" : "TRANSMISSION"
    }]
  },
  {
    "code" : "EMISSION",
    "display" : "Emission",
    "property" : [{
      "code" : "parent",
      "valueCode" : "NMI"
    }]
  },
  {
    "code" : "TRANSMISSION",
    "display" : "Transmission",
    "property" : [{
      "code" : "parent",
      "valueCode" : "NMI"
    }]
  },
  {
    "code" : "USI",
    "display" : "US Implemantation",
    "property" : [{
      "code" : "child",
      "valueCode" : "0200"
    },
    {
      "code" : "child",
      "valueCode" : "0400"
    },
    {
      "code" : "child",
      "valueCode" : "0100"
    }]
  },
  {
    "code" : "0001",
    "display" : "2D Imaging",
    "property" : [{
      "code" : "parent",
      "valueCode" : "USI"
    }]
  },
  {
    "code" : "0002",
    "display" : "M-Mode",
    "property" : [{
      "code" : "parent",
      "valueCode" : "USI"
    }]
  },
  {
    "code" : "0004",
    "display" : "CW Doppler",
    "property" : [{
      "code" : "parent",
      "valueCode" : "USI"
    }]
  },
  {
    "code" : "0008",
    "display" : "PW Doppler",
    "property" : [{
      "code" : "parent",
      "valueCode" : "USI"
    }]
  },
  {
    "code" : "0010",
    "display" : "Color Doppler",
    "property" : [{
      "code" : "parent",
      "valueCode" : "USI"
    }]
  },
  {
    "code" : "0020",
    "display" : "Color M-Mode",
    "property" : [{
      "code" : "parent",
      "valueCode" : "USI"
    }]
  },
  {
    "code" : "0040",
    "display" : "3D Rendering",
    "property" : [{
      "code" : "parent",
      "valueCode" : "USI"
    }]
  },
  {
    "code" : "0100",
    "display" : "Color Power Mode",
    "property" : [{
      "code" : "parent",
      "valueCode" : "USI"
    }]
  },
  {
    "code" : "0200",
    "display" : "Tissue Characterization",
    "property" : [{
      "code" : "parent",
      "valueCode" : "USI"
    }]
  },
  {
    "code" : "0400",
    "display" : "Spatially-related frames",
    "property" : [{
      "code" : "parent",
      "valueCode" : "USI"
    }]
  }]
}

```

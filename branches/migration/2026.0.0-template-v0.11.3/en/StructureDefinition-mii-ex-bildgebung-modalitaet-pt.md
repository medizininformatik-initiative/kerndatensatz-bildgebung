# MII EX Bildgebung Modalität PT - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII EX Bildgebung Modalität PT**

## Extension: MII EX Imaging Modality PT 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-pt | *Version*:2027.0.0-ballot |
| Active as of 2026-08-27 | *Computable Name*:MII_EX_Bildgebung_Modalitaet_PT |

The extension allows to extend the resources and feasibility analysis to PT data.

**Context of Use**

The PT (positron emission tomography) extension enables the capture of relevant DICOM tags in order to draw conclusions about how the images were acquired. A characteristic of nuclear medicine is the use of a radiopharmaceutical consisting of a tracer and a radioisotope, which enables metabolic imaging. This information about the radiopharmaceutical is nested inside the DICOM tag RadiopharmaceuticalInformationSequence (0054,0016) — so-called nested DICOM tags.

Example of accessing a nested DICOM tag with Python from a DICOM slice (instance):

```
RadiopharmaceuticalStartTime = layer['RadiopharmaceuticalInformationSequence'][0]['RadiopharmaceuticalStartTime'].value

```

Implementation:

* Radiopharmaceutical (ValueSet with codes: https://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_4021.html): The radiopharmaceutical can be converted from its code to the display name by resolving the code at "0054,0016" (Radiopharmaceutical Information Sequence) → "0054,0304" (Radiopharmaceutical Code Sequence) → "0008,0100" (Code Value). If this is not present, the value can be extracted directly from the tag "0054,0016" (Radiopharmaceutical Information Sequence) → "0054,0304" (Radiopharmaceutical Code Sequence) → "0008,0104" (Code Meaning). If the display name differs from the ValueSet, a local mapping can be established at the site. If it is still missing, the tag "0054,0016" (Radiopharmaceutical Information Sequence) → "0018,0031" (Radiopharmaceutical) can additionally be consulted — please use it only if the string consistently contains BOTH the tracer AND the radionuclide (see the ValueSet link).
* Radionuclide (ValueSet with codes: https://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_4020.html) The radionuclide can be converted from its code to the display name by resolving the code at "0054,0016" (Radiopharmaceutical Information Sequence) → "0054,0300" (Radiopharmaceutical Code Sequence) → "0008,0100" (Code Value).
* Tracer exposure time: This is a custom tag and is calculated as the difference in seconds between the Acquisition Time "0008,0032" (or similar) and "0054,0016" (Radiopharmaceutical Information Sequence) → "0018, 1072" RadiopharmaceuticalStartTime.
* Half-life ["0018, 1075" RadionuclideHalfLife] in seconds [s]
* Total radionuclide dose ["0018, 1074" RadionuclideTotalDose] in **becquerel [Bq]** (note: for NM, the unit MBq is normally used instead!)
* Scaling units ["0054,1001" Units] If Units is absent or empty, the tag "0028,1054" (RescaleType) can be used.
* Series type ["0054,1000" Series Type]

-------

**Examples**

**Note:** For clarity, this example does not include all of the associated series and instances. In a real implementation, all series and instances belonging to the study are of course expected to be present in the resulting FHIR resource — the "series" or "instance" sequence is simply repeated for every series or instance and filled with the corresponding values.

Example of an ImagingStudy resource with the extension for PET metadata, including the modality-independent extensions for contrast media, instance details and device manufacturer:

[ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-pt](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-pt.md)

**Usage info**

**Usages:**

* Use this Extension: [MII PR Bildgebung Bildgebungsstudie](StructureDefinition-mii-pr-bildgebung-bildgebungsstudie.md)
* Examples for this Extension: [ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-pt](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-pt.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.bildgebung|current/StructureDefinition/StructureDefinition-mii-ex-bildgebung-modalitaet-pt.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-ex-bildgebung-modalitaet-pt.csv), [Excel](../StructureDefinition-mii-ex-bildgebung-modalitaet-pt.xlsx), [Schematron](../StructureDefinition-mii-ex-bildgebung-modalitaet-pt.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-ex-bildgebung-modalitaet-pt",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-pt",
  "version" : "2027.0.0-ballot",
  "name" : "MII_EX_Bildgebung_Modalitaet_PT",
  "_name" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "MII_EX_Imaging_Modality_PT"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "title" : "MII EX Bildgebung Modalität PT",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "MII EX Imaging Modality PT"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-27T17:54:48+00:00",
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
  "description" : "Die Extension ermöglicht es die Ressourcen und Machbarkeitsanalysen auf PT Daten zu erweitern.",
  "_description" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "The extension allows to extend the resources and feasibility analysis to PT data."
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
    "expression" : "ImagingStudy.series"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "MII EX Bildgebung Modalität PT",
      "definition" : "Die Extension ermöglicht es die Ressourcen und Machbarkeitsanalysen auf PT Daten zu erweitern."
    },
    {
      "id" : "Extension.extension:radiopharmaceutical",
      "path" : "Extension.extension",
      "sliceName" : "radiopharmaceutical",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:radiopharmaceutical.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:radiopharmaceutical.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "radiopharmaceutical"
    },
    {
      "id" : "Extension.extension:radiopharmaceutical.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_4021.html"
      }
    },
    {
      "id" : "Extension.extension:radiopharmaceutical.value[x].text",
      "path" : "Extension.extension.value[x].text",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:radionuclide",
      "path" : "Extension.extension",
      "sliceName" : "radionuclide",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:radionuclide.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:radionuclide.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "radionuclide"
    },
    {
      "id" : "Extension.extension:radionuclide.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_4020.html"
      }
    },
    {
      "id" : "Extension.extension:radionuclide.value[x].text",
      "path" : "Extension.extension.value[x].text",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:tracerExposureTime",
      "path" : "Extension.extension",
      "sliceName" : "tracerExposureTime",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:tracerExposureTime.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:tracerExposureTime.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "tracerExposureTime"
    },
    {
      "id" : "Extension.extension:tracerExposureTime.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/SimpleQuantity"]
      }]
    },
    {
      "id" : "Extension.extension:tracerExposureTime.value[x].unit",
      "path" : "Extension.extension.value[x].unit",
      "patternString" : "Seconds"
    },
    {
      "id" : "Extension.extension:tracerExposureTime.value[x].system",
      "path" : "Extension.extension.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Extension.extension:tracerExposureTime.value[x].code",
      "path" : "Extension.extension.value[x].code",
      "patternCode" : "s"
    },
    {
      "id" : "Extension.extension:units",
      "path" : "Extension.extension",
      "sliceName" : "units",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:units.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:units.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "units"
    },
    {
      "id" : "Extension.extension:units.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_84.html"
      }
    },
    {
      "id" : "Extension.extension:radionuclideTotalDose",
      "path" : "Extension.extension",
      "sliceName" : "radionuclideTotalDose",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:radionuclideTotalDose.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:radionuclideTotalDose.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "radionuclideTotalDose"
    },
    {
      "id" : "Extension.extension:radionuclideTotalDose.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/SimpleQuantity"]
      }]
    },
    {
      "id" : "Extension.extension:radionuclideTotalDose.value[x].unit",
      "path" : "Extension.extension.value[x].unit",
      "patternString" : "Becquerel"
    },
    {
      "id" : "Extension.extension:radionuclideTotalDose.value[x].system",
      "path" : "Extension.extension.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Extension.extension:radionuclideTotalDose.value[x].code",
      "path" : "Extension.extension.value[x].code",
      "patternCode" : "Bq"
    },
    {
      "id" : "Extension.extension:radionuclideHalfLife",
      "path" : "Extension.extension",
      "sliceName" : "radionuclideHalfLife",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:radionuclideHalfLife.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:radionuclideHalfLife.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "radionuclideHalfLife"
    },
    {
      "id" : "Extension.extension:radionuclideHalfLife.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/SimpleQuantity"]
      }]
    },
    {
      "id" : "Extension.extension:radionuclideHalfLife.value[x].unit",
      "path" : "Extension.extension.value[x].unit",
      "patternString" : "Seconds"
    },
    {
      "id" : "Extension.extension:radionuclideHalfLife.value[x].system",
      "path" : "Extension.extension.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Extension.extension:radionuclideHalfLife.value[x].code",
      "path" : "Extension.extension.value[x].code",
      "patternCode" : "s"
    },
    {
      "id" : "Extension.extension:seriesType",
      "path" : "Extension.extension",
      "sliceName" : "seriesType",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Extension.extension:seriesType.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:seriesType.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "seriesType"
    },
    {
      "id" : "Extension.extension:seriesType.value[x]",
      "path" : "Extension.extension.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Extension.extension:seriesType.value[x]:valueCodeableConcept",
      "path" : "Extension.extension.value[x]",
      "sliceName" : "valueCodeableConcept",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Extension.extension:seriesType.value[x]:valueCodeableConcept.coding",
      "path" : "Extension.extension.value[x].coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "$this"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Extension.extension:seriesType.value[x]:valueCodeableConcept.coding:spacial",
      "path" : "Extension.extension.value[x].coding",
      "sliceName" : "spacial",
      "min" : 0,
      "max" : "*",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/ValueSet/mii-vs-bildgebung-pt-series-type-spacial"
      }
    },
    {
      "id" : "Extension.extension:seriesType.value[x]:valueCodeableConcept.coding:volumetric",
      "path" : "Extension.extension.value[x].coding",
      "sliceName" : "volumetric",
      "min" : 0,
      "max" : "*",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/ValueSet/mii-vs-bildgebung-pt-series-type-volumetric"
      }
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-pt"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```

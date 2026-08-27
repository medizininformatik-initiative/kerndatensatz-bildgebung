# MII EX Bildgebung Instanzdetails - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII EX Bildgebung Instanzdetails**

## Extension: MII EX Instance Details 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-details | *Version*:2027.0.0-ballot |
| Active as of 2026-08-27 | *Computable Name*:MII_EX_Bildgebung_Instanz_Details |

The extension allows specifying information about the selected series at the instance level.

**Context of Use**

The extension for DICOM instances enables the capture of relevant DICOM tags in order to obtain detailed information about the image instances. These instances carry essential parameters describing and classifying the image data and its properties. This makes it possible to trace the properties of the individual slices and thus provides insight into the properties of the whole series. For example, the homogeneity of pixel spacing or slice thickness can be examined across the whole series, which at the same time serves as an inclusion or exclusion criterion for studies.

Relevant DICOM tags:

* Slice thickness [(0018, 0050) SliceThickness] in [mm]
* Image type [(0008, 0008) ImageType]
* Pixel spacing (x) [(0028, 0030) PixelSpacing] in [mm]
* Pixel spacing (y) [(0028, 0030) PixelSpacing] in [mm]

The pixel spacings are split into X and Y and must be extracted from the underlying DICOM tag. The DICOM tag PixelSpacing stores the X and Y spacing together as a string in the following format: e.g. [0.703125, 0.703125].

-------

**Examples**

**Note:** For clarity, this example does not include all of the associated series and instances. In a real implementation, all series and instances belonging to the study are of course expected to be present in the resulting FHIR resource — the "series" or "instance" sequence is simply repeated for every series or instance and filled with the corresponding values.

Examples of ImagingStudy resources with the instance-details extension:

Example of a CT scan: [ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-ct](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-ct.md)

Example of an MRI scan: [ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-mr](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-mr.md)

Example of an X-ray image: [ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-cr](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-cr.md)

Example of a PET scan: [ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-pt](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-pt.md)

**Usage info**

**Usages:**

* Use this Extension: [MII PR Bildgebung Bildgebungsstudie](StructureDefinition-mii-pr-bildgebung-bildgebungsstudie.md)
* Examples for this Extension: [ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-cr](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-cr.md), [ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-ct](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-ct.md), [ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-mr](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-mr.md), [ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-nm](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-nm.md)... Show 2 more, [ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-pt](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-pt.md) and [ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-us](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-us.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.bildgebung|current/StructureDefinition/StructureDefinition-mii-ex-bildgebung-instanz-details.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-ex-bildgebung-instanz-details.csv), [Excel](../StructureDefinition-mii-ex-bildgebung-instanz-details.xlsx), [Schematron](../StructureDefinition-mii-ex-bildgebung-instanz-details.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-ex-bildgebung-instanz-details",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-details",
  "version" : "2027.0.0-ballot",
  "name" : "MII_EX_Bildgebung_Instanz_Details",
  "_name" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "MII_EX_Instance_Details"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "title" : "MII EX Bildgebung Instanzdetails",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "MII EX Instance Details"
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
  "description" : "Die Extension ermöglicht es, Informationen zur ausgewählten Serie auf Instanz-Ebene anzugeben.",
  "_description" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "The extension allows specifying information about the selected series at the instance level."
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
    "expression" : "ImagingStudy.series.instance"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "MII EX Bildgebung Instanzdetails",
      "definition" : "Die Extension ermöglicht es, Informationen zur ausgewählten Serie auf Instanz-Ebene anzugeben."
    },
    {
      "id" : "Extension.extension:pixelSpacingX",
      "path" : "Extension.extension",
      "sliceName" : "pixelSpacingX",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:pixelSpacingX.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:pixelSpacingX.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "pixelSpacingX"
    },
    {
      "id" : "Extension.extension:pixelSpacingX.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/SimpleQuantity"]
      }]
    },
    {
      "id" : "Extension.extension:pixelSpacingX.value[x].unit",
      "path" : "Extension.extension.value[x].unit",
      "patternString" : "millimeter"
    },
    {
      "id" : "Extension.extension:pixelSpacingX.value[x].system",
      "path" : "Extension.extension.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Extension.extension:pixelSpacingX.value[x].code",
      "path" : "Extension.extension.value[x].code",
      "patternCode" : "mm"
    },
    {
      "id" : "Extension.extension:pixelSpacingY",
      "path" : "Extension.extension",
      "sliceName" : "pixelSpacingY",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:pixelSpacingY.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:pixelSpacingY.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "pixelSpacingY"
    },
    {
      "id" : "Extension.extension:pixelSpacingY.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/SimpleQuantity"]
      }]
    },
    {
      "id" : "Extension.extension:pixelSpacingY.value[x].unit",
      "path" : "Extension.extension.value[x].unit",
      "patternString" : "millimeter"
    },
    {
      "id" : "Extension.extension:pixelSpacingY.value[x].system",
      "path" : "Extension.extension.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Extension.extension:pixelSpacingY.value[x].code",
      "path" : "Extension.extension.value[x].code",
      "patternCode" : "mm"
    },
    {
      "id" : "Extension.extension:sliceThickness",
      "path" : "Extension.extension",
      "sliceName" : "sliceThickness",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:sliceThickness.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:sliceThickness.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "sliceThickness"
    },
    {
      "id" : "Extension.extension:sliceThickness.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/SimpleQuantity"]
      }]
    },
    {
      "id" : "Extension.extension:sliceThickness.value[x].unit",
      "path" : "Extension.extension.value[x].unit",
      "patternString" : "millimeter"
    },
    {
      "id" : "Extension.extension:sliceThickness.value[x].system",
      "path" : "Extension.extension.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Extension.extension:sliceThickness.value[x].code",
      "path" : "Extension.extension.value[x].code",
      "patternCode" : "mm"
    },
    {
      "id" : "Extension.extension:imageType",
      "path" : "Extension.extension",
      "sliceName" : "imageType",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:imageType.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:imageType.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "imageType"
    },
    {
      "id" : "Extension.extension:imageType.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Extension.extension:imageType.value[x].coding",
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
      "id" : "Extension.extension:imageType.value[x].coding:pixelData",
      "path" : "Extension.extension.value[x].coding",
      "sliceName" : "pixelData",
      "min" : 0,
      "max" : "*",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/ValueSet/mii-vs-bildgebung-instance-image-type-pixel-data"
      }
    },
    {
      "id" : "Extension.extension:imageType.value[x].coding:patientExamination",
      "path" : "Extension.extension.value[x].coding",
      "sliceName" : "patientExamination",
      "min" : 0,
      "max" : "*",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/ValueSet/mii-vs-bildgebung-instance-image-type-patient-examination"
      }
    },
    {
      "id" : "Extension.extension:imageType.value[x].coding:modalityCT",
      "path" : "Extension.extension.value[x].coding",
      "sliceName" : "modalityCT",
      "min" : 0,
      "max" : "*",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/ValueSet/mii-vs-bildgebung-instance-image-type-ct"
      }
    },
    {
      "id" : "Extension.extension:imageType.value[x].coding:modalityMR",
      "path" : "Extension.extension.value[x].coding",
      "sliceName" : "modalityMR",
      "min" : 0,
      "max" : "*",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/ValueSet/mii-vs-bildgebung-instance-image-type-mr"
      }
    },
    {
      "id" : "Extension.extension:imageType.value[x].coding:modalityNM",
      "path" : "Extension.extension.value[x].coding",
      "sliceName" : "modalityNM",
      "min" : 0,
      "max" : "*",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/ValueSet/mii-vs-bildgebung-instance-image-type-nm"
      }
    },
    {
      "id" : "Extension.extension:imageType.value[x].coding:modalityUS",
      "path" : "Extension.extension.value[x].coding",
      "sliceName" : "modalityUS",
      "min" : 0,
      "max" : "*",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/ValueSet/mii-vs-bildgebung-instance-image-type-us"
      }
    },
    {
      "id" : "Extension.extension:imageType.value[x].coding:implementationNM",
      "path" : "Extension.extension.value[x].coding",
      "sliceName" : "implementationNM",
      "min" : 0,
      "max" : "*",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/ValueSet/mii-vs-bildgebung-instance-image-type-nm-implementation"
      }
    },
    {
      "id" : "Extension.extension:imageType.value[x].coding:implementationUS",
      "path" : "Extension.extension.value[x].coding",
      "sliceName" : "implementationUS",
      "min" : 0,
      "max" : "*",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/ValueSet/mii-vs-bildgebung-instance-image-type-us-implemantation"
      }
    },
    {
      "id" : "Extension.extension:burnedInAnnotation",
      "path" : "Extension.extension",
      "sliceName" : "burnedInAnnotation",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:burnedInAnnotation.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:burnedInAnnotation.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "burnedInAnnotation"
    },
    {
      "id" : "Extension.extension:burnedInAnnotation.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-details"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```

# MII EX Bildgebung Modalität CT - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII EX Bildgebung Modalität CT**

## Extension: MII EX Imaging Modality CT 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-ct | *Version*:2027.0.0-ballot |
| Active as of 2026-08-28 | *Computable Name*:MII_EX_Bildgebung_Modalitaet_CT |

The extension allows to extend the resources and feasibility analysis to CT data.

**Context of Use**

The CT (computed tomography) extension enables the capture of relevant DICOM tags in order to draw conclusions about how the images were acquired. A characteristic of computed tomography is the use of X-rays to produce detailed cross-sectional images of the body. This information about radiation generation, radiation exposure and the technical parameters of the acquisition is available in the corresponding DICOM tags.

Relevant DICOM tags:

* CTDIvol [(0018, 9345) CTDIVolume] in milligray [mGy]
* X-ray tube voltage [(0018, 0060) KVP] in kilovolt [kV]
* Exposure time [(0018, 1150) exposureTime] in milliseconds [ms]
* Exposure [(0018, 1152) exposure] in milliampere-seconds [mAs]
* X-ray tube current [(0018, 1151) xRayTubeCurrent] in milliampere [mA]
* Convolution kernel [(0018,1210) convolutionalKernel]

-------

**Examples**

**Note:** For clarity, this example does not include all of the associated series and instances. In a real implementation, all series and instances belonging to the study are of course expected to be present in the resulting FHIR resource — the "series" or "instance" sequence is simply repeated for every series or instance and filled with the corresponding values.

Example of an ImagingStudy resource with the extension for CT metadata, including the modality-independent extensions for contrast media, instance details and device manufacturer:

[ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-ct](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-ct.md)

**Usage info**

**Usages:**

* Use this Extension: [MII PR Bildgebung Bildgebungsstudie](StructureDefinition-mii-pr-bildgebung-bildgebungsstudie.md)
* Examples for this Extension: [ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-ct](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-ct.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.bildgebung|current/StructureDefinition/StructureDefinition-mii-ex-bildgebung-modalitaet-ct.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-ex-bildgebung-modalitaet-ct.csv), [Excel](../StructureDefinition-mii-ex-bildgebung-modalitaet-ct.xlsx), [Schematron](../StructureDefinition-mii-ex-bildgebung-modalitaet-ct.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-ex-bildgebung-modalitaet-ct",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-ct",
  "version" : "2027.0.0-ballot",
  "name" : "MII_EX_Bildgebung_Modalitaet_CT",
  "_name" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "MII_EX_Imaging_Modality_CT"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "title" : "MII EX Bildgebung Modalität CT",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "MII EX Imaging Modality CT"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-28T06:44:38+00:00",
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
  "description" : "Die Extension ermöglicht es die Ressourcen und Machbarkeitsanalysen auf CT Daten zu erweitern.",
  "_description" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "The extension allows to extend the resources and feasibility analysis to CT data."
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
      "short" : "MII EX Bildgebung Modalität CT",
      "definition" : "Die Extension ermöglicht es die Ressourcen und Machbarkeitsanalysen auf CT Daten zu erweitern."
    },
    {
      "id" : "Extension.extension:CTDIvol",
      "path" : "Extension.extension",
      "sliceName" : "CTDIvol",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:CTDIvol.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:CTDIvol.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "CTDIvol"
    },
    {
      "id" : "Extension.extension:CTDIvol.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/SimpleQuantity"]
      }]
    },
    {
      "id" : "Extension.extension:CTDIvol.value[x].unit",
      "path" : "Extension.extension.value[x].unit",
      "patternString" : "milligray"
    },
    {
      "id" : "Extension.extension:CTDIvol.value[x].system",
      "path" : "Extension.extension.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Extension.extension:CTDIvol.value[x].code",
      "path" : "Extension.extension.value[x].code",
      "patternCode" : "mGy"
    },
    {
      "id" : "Extension.extension:KVP",
      "path" : "Extension.extension",
      "sliceName" : "KVP",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:KVP.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:KVP.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "KVP"
    },
    {
      "id" : "Extension.extension:KVP.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/SimpleQuantity"]
      }]
    },
    {
      "id" : "Extension.extension:KVP.value[x].unit",
      "path" : "Extension.extension.value[x].unit",
      "patternString" : "kilovolt"
    },
    {
      "id" : "Extension.extension:KVP.value[x].system",
      "path" : "Extension.extension.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Extension.extension:KVP.value[x].code",
      "path" : "Extension.extension.value[x].code",
      "patternCode" : "kV"
    },
    {
      "id" : "Extension.extension:exposureTime",
      "path" : "Extension.extension",
      "sliceName" : "exposureTime",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:exposureTime.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:exposureTime.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "exposureTime"
    },
    {
      "id" : "Extension.extension:exposureTime.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/SimpleQuantity"]
      }]
    },
    {
      "id" : "Extension.extension:exposureTime.value[x].unit",
      "path" : "Extension.extension.value[x].unit",
      "patternString" : "milliseconds"
    },
    {
      "id" : "Extension.extension:exposureTime.value[x].system",
      "path" : "Extension.extension.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Extension.extension:exposureTime.value[x].code",
      "path" : "Extension.extension.value[x].code",
      "patternCode" : "ms"
    },
    {
      "id" : "Extension.extension:exposure",
      "path" : "Extension.extension",
      "sliceName" : "exposure",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:exposure.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:exposure.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "exposure"
    },
    {
      "id" : "Extension.extension:exposure.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/SimpleQuantity"]
      }]
    },
    {
      "id" : "Extension.extension:exposure.value[x].unit",
      "path" : "Extension.extension.value[x].unit",
      "patternString" : "milliampere second"
    },
    {
      "id" : "Extension.extension:exposure.value[x].system",
      "path" : "Extension.extension.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Extension.extension:exposure.value[x].code",
      "path" : "Extension.extension.value[x].code",
      "patternCode" : "mA.s"
    },
    {
      "id" : "Extension.extension:xRayTubeCurrent",
      "path" : "Extension.extension",
      "sliceName" : "xRayTubeCurrent",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:xRayTubeCurrent.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:xRayTubeCurrent.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "xRayTubeCurrent"
    },
    {
      "id" : "Extension.extension:xRayTubeCurrent.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/SimpleQuantity"]
      }]
    },
    {
      "id" : "Extension.extension:xRayTubeCurrent.value[x].unit",
      "path" : "Extension.extension.value[x].unit",
      "patternString" : "milliampere"
    },
    {
      "id" : "Extension.extension:xRayTubeCurrent.value[x].system",
      "path" : "Extension.extension.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Extension.extension:xRayTubeCurrent.value[x].code",
      "path" : "Extension.extension.value[x].code",
      "patternCode" : "mA"
    },
    {
      "id" : "Extension.extension:convolutionalKernel",
      "path" : "Extension.extension",
      "sliceName" : "convolutionalKernel",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:convolutionalKernel.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:convolutionalKernel.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "convolutionalKernel"
    },
    {
      "id" : "Extension.extension:convolutionalKernel.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-ct"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```

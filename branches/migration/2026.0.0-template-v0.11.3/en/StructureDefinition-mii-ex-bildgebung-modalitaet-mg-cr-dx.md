# MII EX Bildgebung Modalität MG/CR/DX - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII EX Bildgebung Modalität MG/CR/DX**

## Extension: MII EX Imaging Modality MG_CR_DX 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mg-cr-dx | *Version*:2027.0.0-ballot |
| Active as of 2026-08-27 | *Computable Name*:MII_EX_Bildgebung_Modalitaet_MG_CR_DX |

The extension allows to extend the resources and feasibility analysis to MG, CR & DX data.

**Context of Use**

The extension for the modalities MG (mammography), CR (computed radiography) and DX (digital radiography) enables the capture of relevant DICOM tags in order to draw conclusions about how the images were acquired. These modalities use X-rays to produce images of the body; radiation generation, radiation exposure and specific technical parameters of the acquisition are recorded in the corresponding DICOM tags.

Relevant DICOM tags:

* X-ray tube voltage [(0018, 0060) KVP] in kilovolt [kV]
* Exposure time [(0018, 1150) exposureTime] in milliseconds [ms]
* Exposure [(0018, 1152) exposure] in milliampere-seconds [mAs]
* X-ray tube current [(0018, 1151) xRayTubeCurrent] in milliampere [mA]
* View position [(0018,5101)] can be translated to SNOMED CT for [MG](http://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_4014.html) and [X-ray](https://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_4010.html) acquisitions using the mappings provided by DICOM.

-------

**Examples**

**Note:** For clarity, this example does not include all of the associated series and instances. In a real implementation, all series and instances belonging to the study are of course expected to be present in the resulting FHIR resource — the "series" or "instance" sequence is simply repeated for every series or instance and filled with the corresponding values.

Example of an ImagingStudy resource with the extension for X-ray metadata, including the modality-independent extensions for contrast media, instance details and device manufacturer:

[ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-cr](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-cr.md)

**Usage info**

**Usages:**

* Use this Extension: [MII PR Bildgebung Bildgebungsstudie](StructureDefinition-mii-pr-bildgebung-bildgebungsstudie.md)
* Examples for this Extension: [ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-cr](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-cr.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.bildgebung|current/StructureDefinition/StructureDefinition-mii-ex-bildgebung-modalitaet-mg-cr-dx.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-ex-bildgebung-modalitaet-mg-cr-dx.csv), [Excel](../StructureDefinition-mii-ex-bildgebung-modalitaet-mg-cr-dx.xlsx), [Schematron](../StructureDefinition-mii-ex-bildgebung-modalitaet-mg-cr-dx.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-ex-bildgebung-modalitaet-mg-cr-dx",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mg-cr-dx",
  "version" : "2027.0.0-ballot",
  "name" : "MII_EX_Bildgebung_Modalitaet_MG_CR_DX",
  "_name" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "MII_EX_Imaging_Modality_MG_CR_DX"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "title" : "MII EX Bildgebung Modalität MG/CR/DX",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "MII EX Imaging Modality MG_CR_DX"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-27T18:01:55+00:00",
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
  "description" : "Die Extension ermöglicht es die Ressourcen und Machbarkeitsanalysen auf MG, CR & DX Daten zu erweitern.",
  "_description" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "The extension allows to extend the resources and feasibility analysis to MG, CR & DX data."
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
      "short" : "MII EX Bildgebung Modalität MG/CR/DX",
      "definition" : "Die Extension ermöglicht es die Ressourcen und Machbarkeitsanalysen auf MG, CR & DX Daten zu erweitern."
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
      "id" : "Extension.extension:viewPosition",
      "path" : "Extension.extension",
      "sliceName" : "viewPosition",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:viewPosition.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:viewPosition.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "viewPosition"
    },
    {
      "id" : "Extension.extension:viewPosition.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/ValueSet/mii-vs-bildgebung-imagingStudy-series-view-position"
      }
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mg-cr-dx"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```

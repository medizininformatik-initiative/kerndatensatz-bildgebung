# MII EX Bildgebung Modalität US - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII EX Bildgebung Modalität US**

## Extension: MII EX Imaging Modality US 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-us | *Version*:2027.0.0-ballot |
| Active as of 2026-08-28 | *Computable Name*:MII_EX_Bildgebung_Modalitaet_US |

The extension allows to extend the resources and feasibility analysis to US data.

**Context of Use**

The US (ultrasound) extension enables the capture of relevant DICOM tags in order to draw conclusions about how the images were acquired. The information about the properties of the transducer and the ultrasound color is available in the corresponding DICOM tags. Note: the codes for the transducer type MUST be written with an underscore between the words, even if they do not necessarily appear that way in the header!

Relevant DICOM tags:

* Transducer type (Transducer Type, [0018,6031])
* Transducer frequency (Transducer Frequency, [0018,6011] –> [0018,6030]) in kHz
* Pulse repetition frequency (Pulse Repetition Frequency, [0018,6011] –> [0018,6032]) in Hz
* Ultrasound color (Ultrasound Color Data Present, [0028,0014])

-------

**Examples**

**Note:** For clarity, this example does not include all of the associated series and instances. In a real implementation, all series and instances belonging to the study are of course expected to be present in the resulting FHIR resource — the "series" or "instance" sequence is simply repeated for every series or instance and filled with the corresponding values.

Example of an ImagingStudy resource with the extension for US metadata, including the modality-independent extension for instance details:

[ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-us](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-us.md)

**Usage info**

**Usages:**

* Use this Extension: [MII PR Bildgebung Bildgebungsstudie](StructureDefinition-mii-pr-bildgebung-bildgebungsstudie.md)
* Examples for this Extension: [ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-us](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-us.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.bildgebung|current/StructureDefinition/StructureDefinition-mii-ex-bildgebung-modalitaet-us.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-ex-bildgebung-modalitaet-us.csv), [Excel](../StructureDefinition-mii-ex-bildgebung-modalitaet-us.xlsx), [Schematron](../StructureDefinition-mii-ex-bildgebung-modalitaet-us.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-ex-bildgebung-modalitaet-us",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-us",
  "version" : "2027.0.0-ballot",
  "name" : "MII_EX_Bildgebung_Modalitaet_US",
  "_name" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "MII_EX_Imaging_Modality_US"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "title" : "MII EX Bildgebung Modalität US",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "MII EX Imaging Modality US"
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
  "description" : "Die Extension ermöglicht es die Ressourcen und Machbarkeitsanalysen auf US Daten zu erweitern.",
  "_description" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "The extension allows to extend the resources and feasibility analysis to US data."
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
      "short" : "MII EX Bildgebung Modalität US",
      "definition" : "Die Extension ermöglicht es die Ressourcen und Machbarkeitsanalysen auf US Daten zu erweitern."
    },
    {
      "id" : "Extension.extension:transducerType",
      "path" : "Extension.extension",
      "sliceName" : "transducerType",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:transducerType.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:transducerType.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "transducerType"
    },
    {
      "id" : "Extension.extension:transducerType.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/ValueSet/mii-vs-bildgebung-us-transducer-type"
      }
    },
    {
      "id" : "Extension.extension:transducerFrequency",
      "path" : "Extension.extension",
      "sliceName" : "transducerFrequency",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:transducerFrequency.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:transducerFrequency.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "transducerFrequency"
    },
    {
      "id" : "Extension.extension:transducerFrequency.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/SimpleQuantity"]
      }]
    },
    {
      "id" : "Extension.extension:transducerFrequency.value[x].unit",
      "path" : "Extension.extension.value[x].unit",
      "patternString" : "kilohertz"
    },
    {
      "id" : "Extension.extension:transducerFrequency.value[x].system",
      "path" : "Extension.extension.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Extension.extension:transducerFrequency.value[x].code",
      "path" : "Extension.extension.value[x].code",
      "patternCode" : "kHz"
    },
    {
      "id" : "Extension.extension:pulseRepetitionFrequency",
      "path" : "Extension.extension",
      "sliceName" : "pulseRepetitionFrequency",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:pulseRepetitionFrequency.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:pulseRepetitionFrequency.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "pulseRepetitionFrequency"
    },
    {
      "id" : "Extension.extension:pulseRepetitionFrequency.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/SimpleQuantity"]
      }]
    },
    {
      "id" : "Extension.extension:pulseRepetitionFrequency.value[x].unit",
      "path" : "Extension.extension.value[x].unit",
      "patternString" : "hertz"
    },
    {
      "id" : "Extension.extension:pulseRepetitionFrequency.value[x].system",
      "path" : "Extension.extension.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Extension.extension:pulseRepetitionFrequency.value[x].code",
      "path" : "Extension.extension.value[x].code",
      "patternCode" : "Hz"
    },
    {
      "id" : "Extension.extension:ultrasoundColor",
      "path" : "Extension.extension",
      "sliceName" : "ultrasoundColor",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:ultrasoundColor.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:ultrasoundColor.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "ultrasoundColor"
    },
    {
      "id" : "Extension.extension:ultrasoundColor.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-us"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```

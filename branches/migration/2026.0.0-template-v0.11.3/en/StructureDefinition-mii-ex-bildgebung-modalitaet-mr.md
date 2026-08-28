# MII EX Bildgebung Modalität MR - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII EX Bildgebung Modalität MR**

## Extension: MII EX Imaging Modality MR 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mr | *Version*:2027.0.0-ballot |
| Active as of 2026-08-28 | *Computable Name*:MII_EX_Bildgebung_Modalitaet_MR |

The extension allows to extend the resources and feasibility analysis to MR data.

**Context of Use**

The MR (magnetic resonance imaging) extension enables the capture of relevant DICOM tags in order to draw conclusions about how the images were acquired. A characteristic of magnetic resonance imaging is the use of a strong magnetic field, which makes it possible to produce detailed images of tissue structures. This information about the magnetic field strength, the various time intervals and the scanning sequences is available in the corresponding DICOM tags.

Relevant DICOM tags:

* Magnetic field strength [(0018, 0087) magneticFieldStrength] in tesla [T]
* Scanning sequence [(0018, 0020) scanningSequence]
* Scanning sequence variant [(0018, 0021) scanningSequenceVariant]
* Echo time (TE) [(0018,0081) Echo Time] in milliseconds [ms]
* Repetition time (TR) [(0018,0080) Repetition Time] in milliseconds [ms]
* Inversion time (TI) [(0018,0082) Inversion Time] in milliseconds [ms]
* Flip angle [(0018,1314) Flip Angle] in degrees (°) [deg]

-------

**Examples**

**Note:** For clarity, this example does not include all of the associated series and instances. In a real implementation, all series and instances belonging to the study are of course expected to be present in the resulting FHIR resource — the "series" or "instance" sequence is simply repeated for every series or instance and filled with the corresponding values.

Example of an ImagingStudy resource with the extension for MR metadata, including the modality-independent extensions for contrast media, instance details and device manufacturer:

[ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-mr](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-mr.md)

**Usage info**

**Usages:**

* Use this Extension: [MII PR Bildgebung Bildgebungsstudie](StructureDefinition-mii-pr-bildgebung-bildgebungsstudie.md)
* Examples for this Extension: [ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-mr-series](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-mr-series.md) and [ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-mr](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-mr.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.bildgebung|current/StructureDefinition/StructureDefinition-mii-ex-bildgebung-modalitaet-mr.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-ex-bildgebung-modalitaet-mr.csv), [Excel](../StructureDefinition-mii-ex-bildgebung-modalitaet-mr.xlsx), [Schematron](../StructureDefinition-mii-ex-bildgebung-modalitaet-mr.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-ex-bildgebung-modalitaet-mr",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mr",
  "version" : "2027.0.0-ballot",
  "name" : "MII_EX_Bildgebung_Modalitaet_MR",
  "_name" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "MII_EX_Imaging_Modality_MR"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "title" : "MII EX Bildgebung Modalität MR",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "MII EX Imaging Modality MR"
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
  "description" : "Die Extension ermöglicht es die Ressourcen und Machbarkeitsanalysen auf MR Daten zu erweitern.",
  "_description" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "The extension allows to extend the resources and feasibility analysis to MR data."
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
      "short" : "MII EX Bildgebung Modalität MR",
      "definition" : "Die Extension ermöglicht es die Ressourcen und Machbarkeitsanalysen auf MR Daten zu erweitern."
    },
    {
      "id" : "Extension.extension:magneticFieldStrength",
      "path" : "Extension.extension",
      "sliceName" : "magneticFieldStrength",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:magneticFieldStrength.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:magneticFieldStrength.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "magneticFieldStrength"
    },
    {
      "id" : "Extension.extension:magneticFieldStrength.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/SimpleQuantity"]
      }]
    },
    {
      "id" : "Extension.extension:magneticFieldStrength.value[x].unit",
      "path" : "Extension.extension.value[x].unit",
      "patternString" : "tesla"
    },
    {
      "id" : "Extension.extension:magneticFieldStrength.value[x].system",
      "path" : "Extension.extension.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Extension.extension:magneticFieldStrength.value[x].code",
      "path" : "Extension.extension.value[x].code",
      "patternCode" : "T"
    },
    {
      "id" : "Extension.extension:scanningSequence",
      "path" : "Extension.extension",
      "sliceName" : "scanningSequence",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Extension.extension:scanningSequence.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:scanningSequence.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "scanningSequence"
    },
    {
      "id" : "Extension.extension:scanningSequence.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/ValueSet/mii-vs-bildgebung-mr-scanning-sequence"
      }
    },
    {
      "id" : "Extension.extension:scanningSequenceVariant",
      "path" : "Extension.extension",
      "sliceName" : "scanningSequenceVariant",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Extension.extension:scanningSequenceVariant.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:scanningSequenceVariant.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "scanningSequenceVariant"
    },
    {
      "id" : "Extension.extension:scanningSequenceVariant.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/ValueSet/mii-vs-bildgebung-mr-scanning-sequence-variant"
      }
    },
    {
      "id" : "Extension.extension:echoTime",
      "path" : "Extension.extension",
      "sliceName" : "echoTime",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:echoTime.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:echoTime.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "echoTime"
    },
    {
      "id" : "Extension.extension:echoTime.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/SimpleQuantity"]
      }]
    },
    {
      "id" : "Extension.extension:echoTime.value[x].unit",
      "path" : "Extension.extension.value[x].unit",
      "patternString" : "milliseconds"
    },
    {
      "id" : "Extension.extension:echoTime.value[x].system",
      "path" : "Extension.extension.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Extension.extension:echoTime.value[x].code",
      "path" : "Extension.extension.value[x].code",
      "patternCode" : "ms"
    },
    {
      "id" : "Extension.extension:repetitionTime",
      "path" : "Extension.extension",
      "sliceName" : "repetitionTime",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:repetitionTime.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:repetitionTime.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "repetitionTime"
    },
    {
      "id" : "Extension.extension:repetitionTime.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/SimpleQuantity"]
      }]
    },
    {
      "id" : "Extension.extension:repetitionTime.value[x].unit",
      "path" : "Extension.extension.value[x].unit",
      "patternString" : "milliseconds"
    },
    {
      "id" : "Extension.extension:repetitionTime.value[x].system",
      "path" : "Extension.extension.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Extension.extension:repetitionTime.value[x].code",
      "path" : "Extension.extension.value[x].code",
      "patternCode" : "ms"
    },
    {
      "id" : "Extension.extension:inversionTime",
      "path" : "Extension.extension",
      "sliceName" : "inversionTime",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:inversionTime.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:inversionTime.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "inversionTime"
    },
    {
      "id" : "Extension.extension:inversionTime.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/SimpleQuantity"]
      }]
    },
    {
      "id" : "Extension.extension:inversionTime.value[x].unit",
      "path" : "Extension.extension.value[x].unit",
      "patternString" : "milliseconds"
    },
    {
      "id" : "Extension.extension:inversionTime.value[x].system",
      "path" : "Extension.extension.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Extension.extension:inversionTime.value[x].code",
      "path" : "Extension.extension.value[x].code",
      "patternCode" : "ms"
    },
    {
      "id" : "Extension.extension:flipAngle",
      "path" : "Extension.extension",
      "sliceName" : "flipAngle",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:flipAngle.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:flipAngle.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "flipAngle"
    },
    {
      "id" : "Extension.extension:flipAngle.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/SimpleQuantity"]
      }]
    },
    {
      "id" : "Extension.extension:flipAngle.value[x].unit",
      "path" : "Extension.extension.value[x].unit",
      "patternString" : "plane angle degree"
    },
    {
      "id" : "Extension.extension:flipAngle.value[x].system",
      "path" : "Extension.extension.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Extension.extension:flipAngle.value[x].code",
      "path" : "Extension.extension.value[x].code",
      "patternCode" : "deg"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mr"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```

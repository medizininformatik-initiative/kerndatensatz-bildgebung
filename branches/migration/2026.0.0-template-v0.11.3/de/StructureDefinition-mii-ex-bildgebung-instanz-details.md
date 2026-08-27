# MII EX Bildgebung Instanzdetails - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EX Bildgebung Instanzdetails**

## Extension: MII EX Bildgebung Instanzdetails 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-details | *Version*:2027.0.0-ballot |
| Active Stand: 2026-08-27 | *Maschinenlesbarer Name*:MII_EX_Bildgebung_Instanz_Details |

Die Extension ermöglicht es, Informationen zur ausgewählten Serie auf Instanz-Ebene anzugeben.

**Context of Use**

Die Extension für DICOM-Instanzen ermöglicht das Erfassen relevanter DICOM-Tags, um detaillierte Informationen über die Bildinstanzen zu erhalten. Diese Instanzen enthalten wesentliche Parameter zur Beschreibung und Klassifikation der Bilddaten und ihrer Eigenschaften. Dies ermöglicht das Nachvollziehen der Eigenschaften der einzelnen Schichten und gibt somit Hinweise auf die Eigenschaften der gesamten Serie. Beispielsweise kann die Homogenität der Pixelabstände oder Schichtdicken über die ganze Serie hinweg untersucht werden, was gleichzeitig als Ein- oder Ausschlusskriterium für Studien dient.

Relevante DICOM-Tags:

* Schichtdicke [(0018, 0050) SliceThickness] in [mm]
* Bildtyp [(0008, 0008) ImageType]
* Pixelabstand (x) [(0028, 0030) PixelSpacing] in [mm]
* Pixelabstand (y) [(0028, 0030) PixelSpacing] in [mm]

Die Pixelabstände sind in X und Y aufgeteilt und müssen aus dem zugrunde liegenden DICOM-Tag extrahiert werden. Das DICOM-Tag PixelSpacing speichert X- und Y-Abstände gleichzeitig als String in folgendem Format: z. B. [0.703125, 0.703125].

-------

**Beispiele**

**Hinweis:** Aus Gründen der Übersichtlichkeit wurde in diesem Beispiel darauf verzichtet, alle dazugehörigen Serien bzw. Instanzen mit einzubinden. Natürlich ist es bei der Implementierung vorgesehen, dass alle zur jeweiligen Studie gehörenden Serien und Instanzen auch in der resultierenden FHIR-Ressource enthalten sind - dafür wird dann einfach die Sequenz "series" bzw "instance" für jede Serie bzw. Instanz wiederholt und mit den entsprechenden Werten befüllt.

Beispiele von ImagingStudy-Ressourcen mit der Extension für Intanzdetails:

Beispiel eines CTs: [ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-ct](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-ct.md)

Beispiel eines MRTs: [ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-mr](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-mr.md)

Beispiel eine Röntgenbilds: [ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-cr](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-cr.md)

Beispiel eines PET-Scans: [ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-pt](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-pt.md)

**Usage info**

**Usages:**

* Use this Extension: [MII PR Bildgebung Bildgebungsstudie](StructureDefinition-mii-pr-bildgebung-bildgebungsstudie.md)
* Examples for this Extension: [ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-cr](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-cr.md), [ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-ct](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-ct.md), [ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-mr](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-mr.md), [ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-nm](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-nm.md)... Show 2 more, [ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-pt](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-pt.md) and [ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-us](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-us.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.bildgebung|current/StructureDefinition/StructureDefinition-mii-ex-bildgebung-instanz-details.json)

### Formale Ansichten des Extension-Inhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [AlleAll](#tabs-all) 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Complex Extension: Die Extension ermöglicht es, Informationen zur ausgewählten Serie auf Instanz-Ebene anzugeben.

 **Differential-AnsichtDifferential View** 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Terminology Bindings (Differential)

 **Snapshot-Ansicht** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Complex Extension: Die Extension ermöglicht es, Informationen zur ausgewählten Serie auf Instanz-Ebene anzugeben.

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-ex-bildgebung-instanz-details.csv), [Excel](../StructureDefinition-mii-ex-bildgebung-instanz-details.xlsx), [Schematron](../StructureDefinition-mii-ex-bildgebung-instanz-details.sch) 



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

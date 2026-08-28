# MII EX Bildgebung Modalität US - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EX Bildgebung Modalität US**

## Extension: MII EX Bildgebung Modalität US 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-us | *Version*:2027.0.0-ballot |
| Active Stand: 2026-08-28 | *Maschinenlesbarer Name*:MII_EX_Bildgebung_Modalitaet_US |

Die Extension ermöglicht es die Ressourcen und Machbarkeitsanalysen auf US Daten zu erweitern.

**Context of Use**

Die Extension US (Ultraschall) ermöglicht das Erfassen relevanter DICOM-Tags, um Rückschlüsse über die Bildgewinnung ziehen zu können. Die Informationen über die Eigenschaften des Schallkopfes sowie der Ultraschallfarbe liegen in den entsprechenden DICOM-Tags vor. Achtung: Die Codes für den Schallkopftyp müssen zwingend mit einem Unterstrich zwischen den Worten bezeichnet werden, auch wenn diese im Header nicht unbedingt so vorliegen!

Relevante DICOM-Tags:

* Schallkopftyp (Transducer Type, [0018,6031])
* Schallkopffrequenz (Transducer Frequency, [0018,6011] –> [0018,6030]) in kHz
* Impulsfolgefrequenz (Pulse Repetition Frequency, [0018,6011] –> [0018,6032]) in Hz
* Ultraschallfarbe (Ultrasound Color Data Present, [0028,0014])

-------

**Beispiele**

**Hinweis:** Aus Gründen der Übersichtlichkeit wurde in diesem Beispiel darauf verzichtet, alle dazugehörigen Serien bzw. Instanzen mit einzubinden. Natürlich ist es bei der Implementierung vorgesehen, dass alle zur jeweiligen Studie gehörenden Serien und Instanzen auch in der resultierenden FHIR-Ressource enthalten sind - dafür wird dann einfach die Sequenz "series" bzw "instance" für jede Serie bzw. Instanz wiederholt und mit den entsprechenden Werten befüllt.

Beispiel einer ImagingStudy-Ressource mit der Extension für US Metadaten inkl. der modalitätsunabhängigen Extension für Instanzdetails:

[ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-us](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-us.md)

**Usage info**

**Usages:**

* Use this Extension: [MII PR Bildgebung Bildgebungsstudie](StructureDefinition-mii-pr-bildgebung-bildgebungsstudie.md)
* Examples for this Extension: [ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-us](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-us.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.bildgebung|current/StructureDefinition/StructureDefinition-mii-ex-bildgebung-modalitaet-us.json)

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

Complex Extension: Die Extension ermöglicht es die Ressourcen und Machbarkeitsanalysen auf US Daten zu erweitern.

 **Differential-AnsichtDifferential View** 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Terminology Bindings (Differential)

 **Snapshot-Ansicht** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Complex Extension: Die Extension ermöglicht es die Ressourcen und Machbarkeitsanalysen auf US Daten zu erweitern.

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-ex-bildgebung-modalitaet-us.csv), [Excel](../StructureDefinition-mii-ex-bildgebung-modalitaet-us.xlsx), [Schematron](../StructureDefinition-mii-ex-bildgebung-modalitaet-us.sch) 



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

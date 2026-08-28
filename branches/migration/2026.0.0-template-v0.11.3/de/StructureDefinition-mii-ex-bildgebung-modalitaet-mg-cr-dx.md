# MII EX Bildgebung Modalität MG/CR/DX - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EX Bildgebung Modalität MG/CR/DX**

## Extension: MII EX Bildgebung Modalität MG/CR/DX 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mg-cr-dx | *Version*:2027.0.0-ballot |
| Active Stand: 2026-08-28 | *Maschinenlesbarer Name*:MII_EX_Bildgebung_Modalitaet_MG_CR_DX |

Die Extension ermöglicht es die Ressourcen und Machbarkeitsanalysen auf MG, CR & DX Daten zu erweitern.

**Context of Use**

Die Extension für die Modalitäten MG (Mammographie), CR (Computed Radiography) und DX (Digital Radiography) ermöglicht das Erfassen relevanter DICOM-Tags, um Rückschlüsse über die Bildgewinnung ziehen zu können. Diese Modalitäten nutzen Röntgenstrahlen zur Erstellung von Bildern des Körpers, wobei die Strahlungserzeugung, Strahlenbelastung und spezifische technische Parameter der Bildgebung in den entsprechenden DICOM-Tags festgehalten werden.

Relevante DICOM-Tags:

* Röntgenröhrenspannung [(0018, 0060) KVP] in Kilovolt [kV]
* Expositionszeit [(0018, 1150) exposureTime] in Millisekunden [ms]
* Exposition [(0018, 1152) exposure] in Milliampere-Sekunden [mAs]
* Röntgenröhrenstrom [(0018, 1151) xRayTubeCurrent] in Milliampere [mA]
* Blickposition [(0018,5101)] kann für [MG-](http://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_4014.html) bzw. [Röntgen-](https://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_4010.html)Aufnahmen über die von DICOM bereitgestellten Mappings in SNOMED CT überführt werden.

-------

**Beispiele**

**Hinweis:** Aus Gründen der Übersichtlichkeit wurde in diesem Beispiel darauf verzichtet, alle dazugehörigen Serien bzw. Instanzen mit einzubinden. Natürlich ist es bei der Implementierung vorgesehen, dass alle zur jeweiligen Studie gehörenden Serien und Instanzen auch in der resultierenden FHIR-Ressource enthalten sind - dafür wird dann einfach die Sequenz "series" bzw "instance" für jede Serie bzw. Instanz wiederholt und mit den entsprechenden Werten befüllt.

Beispiel einer ImagingStudy-Ressource mit der Extension für Röntgen Metadaten inkl. der modalitätsunabhängigen Extensions für Kontrastmittel, Instanzdetails und Gerätehersteller:

[ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-cr](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-cr.md)

**Usage info**

**Usages:**

* Use this Extension: [MII PR Bildgebung Bildgebungsstudie](StructureDefinition-mii-pr-bildgebung-bildgebungsstudie.md)
* Examples for this Extension: [ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-cr](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-cr.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.bildgebung|current/StructureDefinition/StructureDefinition-mii-ex-bildgebung-modalitaet-mg-cr-dx.json)

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

Complex Extension: Die Extension ermöglicht es die Ressourcen und Machbarkeitsanalysen auf MG, CR & DX Daten zu erweitern.

 **Differential-AnsichtDifferential View** 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Terminology Bindings (Differential)

 **Snapshot-Ansicht** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Complex Extension: Die Extension ermöglicht es die Ressourcen und Machbarkeitsanalysen auf MG, CR & DX Daten zu erweitern.

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-ex-bildgebung-modalitaet-mg-cr-dx.csv), [Excel](../StructureDefinition-mii-ex-bildgebung-modalitaet-mg-cr-dx.xlsx), [Schematron](../StructureDefinition-mii-ex-bildgebung-modalitaet-mg-cr-dx.sch) 



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

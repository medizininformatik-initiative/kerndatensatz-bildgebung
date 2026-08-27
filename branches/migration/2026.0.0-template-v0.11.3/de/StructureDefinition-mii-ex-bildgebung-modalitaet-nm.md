# MII EX Bildgebung Modalität PT/NM - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EX Bildgebung Modalität PT/NM**

## Extension: MII EX Bildgebung Modalität PT/NM 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-nm | *Version*:2027.0.0-ballot |
| Active Stand: 2026-08-27 | *Maschinenlesbarer Name*:MII_EX_Bildgebung_Modalitaet_NM |

Die Extension ermöglicht es die Ressourcen und Machbarkeitsanalysen auf NM Daten zu erweitern.

**Context of Use**

Die Extension NM (Nuklearmedizinische Bildgebung) ermöglicht das Erfassen relevanter DICOM-Tags, um Rückschlüsse über die Bildgewinnung ziehen zu können. Eine Besonderheit der Nuklearmedizin ist die Verwendung eines Radiopharmakons, das aus einem Tracer und einem Radioisotop besteht und somit Stoffwechselbildgebung ermöglicht. Diese Informationen über das Radiopharmakon liegen verschachtelt in dem DICOM-Tag RadiopharmaceuticalInformationSequence (0054,0016) vor, sogenannte nested DICOM-Tags.

Beispiel des Zugriffs auf ein nested DICOM-Tag mit Python aus einer DICOM-Schicht(Instanz):

```
RadiopharmaceuticalStartTime = layer['RadiopharmaceuticalInformationSequence'][0]['RadiopharmaceuticalStartTime'].value

```

Implementation:

* Radiopharmakon (ValueSet mit Codes: https://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_25.html): Das Radiopharmakon kann unter Bestimmung des Codes „0054,0016“ (Radiopharmaceutical Information Sequence) → „0054,0304“ (Radiopharmaceutical Code Sequence) → „0008,0100“ (Code Value) als Code in den Klarnamen umgewandelt werden. Ist dieser nicht vorhanden, kann der Wert direkt aus dem Tag „0054,0016“ (Radiopharmaceutical Information Sequence) → „0054,0304“ (Radiopharmaceutical Code Sequence) → „0008,0104“ (Code Meaning) extrahiert werden. Falls unter Umständen sich der Klarname von dem ValueSet unterscheidet, kann ein lokales Mapping am Standort gemacht werden. Alternativ kann bei weiterem Fehlen auch noch das Tag „0054,0016“ (Radiopharmaceutical Information Sequence) → "0018,0031" (Radiopharmaceutical) zu Rate gezogen werden, bitte nur verwenden, falls sich im String konstant der Tracer UND das Radionuklid befinden (siehe Link des Valuesets).
* Radionuklid (ValueSet mit Codes: https://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_18.html) Das Radionuklid kann unter Bestimmung des Codes „0054,0016“ (Radiopharmaceutical Information Sequence) → „0054,0300“ (Radiopharmaceutical Code Sequence) → „0008,0100“ (Code Value) als Code in den Klarnamen umgewandelt werden.
* Tracer-Einwirkzeit: Dies ist ein Custom Tag und wird aus der Differenz zwischen den Zeitangaben in Sekunden der Acquisition Time "0008,0032" (oder ähnlichem) und der „0054,0016“ (Radiopharmaceutical Information Sequence) → "0018, 1072" RadiopharmaceuticalStartTime gebildet.
* Halbwertszeit ["0018, 1075" RadionuclideHalfLife] in Sekunden [s]
* Gesamte Radionukliddosis ["0018, 1074" RadionuclideTotalDose] in **Megabecquerel [MBq]** (Achtung: Bei PT dagegen wird normalerweise die Einheit Bq verwendet!)
* Skalierungseinheit ["0054,1001" Units] Falls Units nicht vorhanden oder leer, kann das Tag "0028,1054" (RescaleType) verwendet werden.

-------

**Beispiele**

**Hinweis:** Aus Gründen der Übersichtlichkeit wurde in diesem Beispiel darauf verzichtet, alle dazugehörigen Serien bzw. Instanzen mit einzubinden. Natürlich ist es bei der Implkementierung vorgesehen, dass alle zur jeweiligen Studie gehörenden Serien und Instanzen auch in der resultierenden FHIR-Ressource enthalten sind - dafür wird dann einfach die Sequenz "series" bzw "instance" für jede Serie bzw. Instanz wiederholt und mit den entsprechenden Werten befüllt.

Beispiel einer ImagingStudy-Ressource mit der Extension für PET Metadaten inkl. der modalitätsunabhängigen Extensions für Kontrastmittel, Instanzdetails und Gerätehersteller:

[ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-nm](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-nm.md)

**Usage info**

**Usages:**

* Use this Extension: [MII PR Bildgebung Bildgebungsstudie](StructureDefinition-mii-pr-bildgebung-bildgebungsstudie.md)
* Examples for this Extension: [ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-nm](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-nm.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.bildgebung|current/StructureDefinition/StructureDefinition-mii-ex-bildgebung-modalitaet-nm.json)

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

Complex Extension: Die Extension ermöglicht es die Ressourcen und Machbarkeitsanalysen auf NM Daten zu erweitern.

 **Differential-AnsichtDifferential View** 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Terminology Bindings (Differential)

 **Snapshot-Ansicht** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Complex Extension: Die Extension ermöglicht es die Ressourcen und Machbarkeitsanalysen auf NM Daten zu erweitern.

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-ex-bildgebung-modalitaet-nm.csv), [Excel](../StructureDefinition-mii-ex-bildgebung-modalitaet-nm.xlsx), [Schematron](../StructureDefinition-mii-ex-bildgebung-modalitaet-nm.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-ex-bildgebung-modalitaet-nm",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-nm",
  "version" : "2027.0.0-ballot",
  "name" : "MII_EX_Bildgebung_Modalitaet_NM",
  "_name" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "MII_EX_Imaging_Modality_NM"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "title" : "MII EX Bildgebung Modalität PT/NM",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "MII EX Imaging Modality NM"
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
  "description" : "Die Extension ermöglicht es die Ressourcen und Machbarkeitsanalysen auf NM Daten zu erweitern.",
  "_description" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "The extension allows to extend the resources and feasibility analysis to NM data."
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
      "short" : "MII EX Bildgebung Modalität PT/NM",
      "definition" : "Die Extension ermöglicht es die Ressourcen und Machbarkeitsanalysen auf NM Daten zu erweitern."
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
        "valueSet" : "http://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_25.html"
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
        "valueSet" : "http://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_18.html"
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
      "patternString" : "Megabecquerel"
    },
    {
      "id" : "Extension.extension:radionuclideTotalDose.value[x].system",
      "path" : "Extension.extension.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Extension.extension:radionuclideTotalDose.value[x].code",
      "path" : "Extension.extension.value[x].code",
      "patternCode" : "MBq"
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
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-nm"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```

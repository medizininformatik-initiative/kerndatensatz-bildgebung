# CodeSystems - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* **CodeSystems**

## CodeSystems

Diese Seite beschreibt die im Modul **Bildgebung** verwendeten Terminologien und die vom Modul definierten CodeSysteme. Die vollständige, automatisch generierte Liste aller CodeSysteme findet sich in der [Artefakt-Übersicht](artifacts.md).

### DICOM

**Hinweis:** Das DICOM FHIR Package definiert ein CodeSystem und ValueSets nach den vorgeschriebenen Inhalten bestimmter TAGs. Dabei werden die Strings der Enumerated Values allerdings nicht als Codes aufgeführt und können deshalb nicht als CodeableConcept abgebildet werden. Aktuell werden diese Felder deshalb als Strings umgesetzt. Hier wird weiterhin nach einer annehmbaren und praktikablen Lösung gesucht.

DICOM ist das führende Standardprotokoll für die Verwaltung und Übertragung medizinischer Bilddaten. Es wird zur Identifizierung und Übertragung von Bildstudien verwendet und bildet die Grundlage für die Daten, die in **ImagingStudy**-Profilen referenziert werden.

Für folgende Tags wurden eigene Code-Systeme erstellt, um Tags mit "enumerated-values" abfragbar abbilden zu können:

```
(0018,0020) Scanning Sequence -> ImagingStudy-Extension MR scanningSequence
(0018,0021) Sequence Variant -> ImagingStudy-Extension MR scanningSequenceVariant
(0008,0008) Image Type -> ImagingStudy-Extension Instanzdetails imageType
(0054,1000) Series Type -> ImagingStudy-Extension PT seriesType

```

Für den Schallkopftyp bei der Modalität US wurde ebenfalls ein eigenes Codesystem erstellt, um die Codes gemäß des FHIR-Standards semantisch korrekt aufzuführen:

```
(0018,6031) Transducer Type -> ImagingStudy-Extension US transducerType

```

### SNOMED CT

SNOMED CT wird zur Kodierung klinischer Begriffe verwendet, die sich auf bildgebende Verfahren beziehen, einschließlich der Indikationen für eine Untersuchung, der Art der durchgeführten Prozedur und der festgestellten Befunde. Für das Mapping der in DICOM abgebildeten Körperregion auf den SNOMED-Standard existiert eine Tabelle: [https://dicom.nema.org/medical/dicom/current/output/chtml/part16/chapter_L.html](https://dicom.nema.org/medical/dicom/current/output/chtml/part16/chapter_L.html)

### LOINC & RadLex

LOINC wird zur Kodierung von Beobachtungen und Ergebnissen von bildgebenden Verfahren genutzt, insbesondere im Zusammenhang mit dem Profil **DiagnosticReport**. RadLex ist ein umfassendes Lexikon spezifisch für die Radiologie, das Begriffe für bildgebende Verfahren, anatomische Strukturen, Befunde und Bildgebungstechniken enthält. Es gibt ein existierendes Mapping für RadLex-Codes auf den weiter verbreiteten LOINC-Standard: [https://playbook.radlex.org/playbook/SearchRadlexAction](https://playbook.radlex.org/playbook/SearchRadlexAction)

### Weitere genutzte Codesysteme

* identifierType: [https://terminology.hl7.org/6.0.2/CodeSystem-v2-0203.html](https://terminology.hl7.org/6.0.2/CodeSystem-v2-0203.html)
* diagnosticServiceSectionId: [https://terminology.hl7.org/6.0.2/CodeSystem-v2-0074.html](https://terminology.hl7.org/6.0.2/CodeSystem-v2-0074.html)
* observationType: [https://terminology.hl7.org/6.0.2/CodeSystem-v2-0936.html](https://terminology.hl7.org/6.0.2/CodeSystem-v2-0936.html)
* Observation Category Codes: [https://terminology.hl7.org/6.0.2/CodeSystem-observation-category.html](https://terminology.hl7.org/6.0.2/CodeSystem-observation-category.html)

Die Maßeinheiten bei Messwerten müssen zwingend in [UCUM](https://unitsofmeasure.org/ucum)-Einheiten angegeben werden, damit sich die Ergebnisse ineinander umrechnen lassen. Mittels [Validatoren](https://ucum.nlm.nih.gov/ucum-lhc/demo.html) kann sichergestellt werden, dass die verwendeten Einheiten zulässig sind.


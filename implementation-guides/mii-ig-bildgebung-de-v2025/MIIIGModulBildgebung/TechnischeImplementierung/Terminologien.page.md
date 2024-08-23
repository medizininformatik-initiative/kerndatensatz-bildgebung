## Terminologien

**DICOM**

| Hinweis |  |
|---------|---------------------|
| {{render:implementation-guides/ImplementationGuide-Common/images/Warning.jpg}} | Das DICOM FHIR Package definiert ein CodeSystem und ValueSets nach den vorgeschriebenen Inhalten bestimmter TAGs. Dabei werden die Strings der Enumerated Values allerdings nicht als Codes aufgeführt und benötigen eine andere Lösung zur Darstellung als CodeableConcept. Aktuell werden diese Felder als Strings abgebildet. Hier wird weiterhin nach einer annehmbaren und praktikablen Lösung gesucht.|

DICOM ist das führende Standardprotokoll für die Verwaltung und Übertragung medizinischer Bilddaten. Es wird zur Identifizierung und Übertragung von Bildstudien verwendet und bildet die Grundlage für die Daten, die in **ImagingStudy**-Profilen referenziert werden. 
Der DICOM-Standard definiert zum Teil für bestimmte Tags eigene Value Sets, welche auch in diesen Profilen genutzt werden sollen. Diese sind:

* Modalität: https://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_29.html
* Körperseite: https://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_244.html
* SOP-Klasse: https://dicom.nema.org/medical/dicom/current/output/chtml/part04/sect_B.5.html
* Radiopharmakon: https://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_25.html

Für folgenden Tags muss noch eine Lösung für die Darstellung der Enumerated Values als CodeableConcept gefunden werden:

    (0018,0020) Scanning Sequence -> ImagingStudy-Extension MR scanningSequence
    (0018,0021) Sequence Variant -> ImagingStudy-Extension MR scanningSequenceVariant
    (0008,0008) Image Type -> ImagingStudy-Extension Instanzdetails imageType
    (0028,1054) Rescale Type Attribute -> ImagingStudy-Extension PT NM rescaleType

**SNOMED CT**

SNOMED CT wird zur Kodierung klinischer Begriffe verwendet, die sich auf bildgebende Verfahren beziehen, einschließlich der Indikationen für eine Untersuchung, der Art der durchgeführten Prozedur und der festgestellten Befunde. 
Für das Mapping der in DICOM abgebildeten Körperregion auf den SNOMED-Standard existiert eine Tabelle: https://dicom.nema.org/medical/dicom/current/output/chtml/part16/chapter_L.html


**LOINC & RadLex**

LOINC wird zur Kodierung von Beobachtungen und Ergebnissen von bildgebenden Verfahren genutzt, insbesondere im Zusammenhang mit dem Profil **DiagnosticReport**. RadLex ist ein umfassendes Lexikon spezifisch für die Radiologie, das Begriffe für bildgebende Verfahren, anatomische Strukturen, Befunde und Bildgebungstechniken enthält. Es gibt ein existierendes Mapping für RadLex-Codes auf den weiter verbreiteten LOINC-Standard: https://playbook.radlex.org/playbook/SearchRadlexAction

**Weitere genutzte Codesysteme**

* identifierType: https://terminology.hl7.org/6.0.2/CodeSystem-v2-0203.html
* diagnosticServiceSectionId: https://terminology.hl7.org/6.0.2/CodeSystem-v2-0074.html
* observationType: https://terminology.hl7.org/6.0.2/CodeSystem-v2-0936.html
* Observation Category Codes: https://terminology.hl7.org/6.0.2/CodeSystem-observation-category.html

Die Maßeinheiten bei Messwerten müssen zwingend in [UCUM](https://unitsofmeasure.org/ucum)-Einheiten angegeben werden, damit sich die Ergebnisse ineinander umrechnen lassen. Mittels [Validatoren](https://ucum.nlm.nih.gov/ucum-lhc/demo.html) kann sichergestellt werden, dass die verwendeten Einheiten zulässig sind.

---
parent:
topic: ImagingStudyExtensionSeriesInstance
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-serie
---

## Extension Serieninformation auf Instanzebene

Die Extension für DICOM-Instanzen ermöglicht das Erfassen relevanter DICOM-Tags, um detaillierte Informationen über die Bildinstanzen zu erhalten. 
Diese Instanzen enthalten wesentliche Parameter zur Beschreibung und Klassifikation der Bilddaten und ihrer Eigenschaften. 
Dies ermöglicht das Nachvollziehen der Eigenschaften der einzelnen Schichten und gibt somit Hinweise auf die Eigenschaften der gesamten Serie. 
Beispielsweise kann die Homogenität der Pixelabstände oder Schichtdicken über die ganze Serie hinweg untersucht werden, was gleichzeitig als Ein- oder Ausschlusskriterium für Studien dient.

Relevante DICOM-Tags:

    SOP-Instanz [(0008, 0018) SOPInstanceUID]
    SOP-Klasse [(0008, 0016) SOPClassUID]
    Instanz-Nummer [(0020, 0013) InstanceNumber]
    Schichtdicke [(0018, 0050) SliceThickness] in [mm]
    Bildtyp [(0008, 0008) ImageType]
    Pixelabstand (x) [(0028, 0030) PixelSpacing] in [mm]
    Pixelabstand (y) [(0028, 0030) PixelSpacing] in [mm]

Die Pixelabstände sind in X und Y aufgeteilt und müssen aus dem zugrunde liegenden DICOM-Tag extrahiert werden. 
Das DICOM-Tag PixelSpacing speichert X- und Y-Abstände gleichzeitig als String in folgendem Format: z. B. [0.703125, 0.703125].

@```
from
    StructureDefinition
where
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-serie'
select
    Name: name, Status: status, Version: version, Canonical: url, Basis: baseDefinition
```

### Inhalt

<tabs>
  <tab title="Darstellung">{{tree, buttons}}</tab>
  <tab title="Beschreibung">
        @```
        from
	        StructureDefinition
        where
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-serie'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from
            StructureDefinition
        where
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-serie'
        for
            differential.element
            where
                mustSupport = true
            select Feldname: id, Kurzbeschreibung: short, Hinweise: comment
        ```
  </tab>
  <tab title="XML">{{xml}}</tab>
  <tab title="JSON">{{json}}</tab>
  <tab title="Link">{{link}}</tab>
</tabs>

---

--- 
**Beispiele**

Beispiel einer ImagingStudy-Ressource:

{{json:fsh-generated/resources/ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-ct.json}}

---

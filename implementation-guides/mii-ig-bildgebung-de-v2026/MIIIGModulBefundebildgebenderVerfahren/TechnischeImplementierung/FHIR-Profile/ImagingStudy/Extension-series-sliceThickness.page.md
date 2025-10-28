---
parent:
topic: ImagingStudyExtensionSeriesSliceThickness
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-serie-schichtdicke
---

## Extension Schichtdicke auf Serienebene

Diese Extension Schichtdicke ermöglicht es, die Schichtdicke der einzelnen Instanzen in der Bildserie anzugeben. Dies soll vorrangig dafür genutzt werden, wenn aus Kapazitätsgründen die Instanzebene der ImagingStudy nicht umgesetzt wird. Wenn die Instanzebene umgesetzt wird, soll die Schichtdicke in dieser Ebene befüllt werden (siehe Extension-Instanzdetails)
Achtung: Da sliceThickness laut DICOM-Standard ein Instanz-Element ist, muss bei der Befüllung auf Serienebene sichergestellt werden, dass die Schichtdicke über die betrachtete Serie hinweg in alles Instanzen konstant ist!

Relevante DICOM-Tags sind:

- Schichtdicke [(0018, 0050) SliceThickness] in [mm]

@```
from
    StructureDefinition
where
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-serie-schichtdicke'
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
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-serie-schichtdicke'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from
            StructureDefinition
        where
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-serie-schichtdicke'
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
**Beispiele**

| Hinweis |  |
|---------|---------------------|
| {{render:implementation-guides/ImplementationGuide-Common/images/Warning.jpg}} | Aus Gründen der Übersichtlichkeit wurde in diesem Beispiel darauf verzichtet, alle dazugehörigen Serien bzw. Instanzen mit einzubinden. Natürlich ist es bei der Implementierung vorgesehen, dass alle zur jeweiligen Studie gehörenden Serien und Instanzen auch in der resultierenden FHIR-Ressource enthalten sind - dafür wird dann einfach die Sequenz "series" bzw "instance" für jede Serie bzw. Instanz wiederholt und mit den entsprechenden Werten befüllt.|

Beispiele von ImagingStudy-Ressourcen mit der Extension für Schichtdicke in der Serie:

Beispiel eines MRTs:
{{json:fsh-generated/resources/ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-mr-series.json}}

---


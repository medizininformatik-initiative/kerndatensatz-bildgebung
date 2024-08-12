---
parent:
topic: ImagingStudyExtensionSeriesContrast
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-kontrastmittel
---

## Extension Kontrastmittelgabe auf Serienebene

Diese Extension Kontrastmitelgabe ermöglicht es, die Verwendung von Kontrastmitteln in der BildSerie anzugeben und gleichzeitig mit einer Referenz auf das KDS-Modul Medikation(MedicationStatement) Details anzulegen.
@```
from
    StructureDefinition
where
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-kontrastmittel'
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
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-kontrastmittel'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from
            StructureDefinition
        where
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-kontrastmittel'
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

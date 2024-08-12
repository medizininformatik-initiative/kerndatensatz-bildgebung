---
parent:
topic: ImagingStudyExtensionMR
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mr
---

## Extension Modalität MRT

Die Extension MR (Magnetresonanztomographie) ermöglicht das Erfassen relevanter DICOM-Tags, um Rückschlüsse über die Bildgewinnung ziehen zu können.
Eine Besonderheit der Magnetresonanztomographie ist die Verwendung eines starken Magnetfelds zur Bildgebung, wodurch detaillierte Bilder von Gewebestrukturen erzeugt werden können.
Diese Informationen über die Magnetfeldstärke und die Scansequenzen liegen in den entsprechenden DICOM-Tags vor.

Relevante DICOM-Tags:

    Magnetfeldstärke [(0018, 0087) magneticFieldStrength] in Tesla [T]
    Scansequenz [(0018, 0020) scanningSequence]
    Scansequenzvariante [(0018, 0021) scanningSequenceVariant]

@```
from
    StructureDefinition
where
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mr'
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
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mr'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from
            StructureDefinition
        where
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mr'
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

{{json:fsh-generated/resources/ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-mr.json}}

---

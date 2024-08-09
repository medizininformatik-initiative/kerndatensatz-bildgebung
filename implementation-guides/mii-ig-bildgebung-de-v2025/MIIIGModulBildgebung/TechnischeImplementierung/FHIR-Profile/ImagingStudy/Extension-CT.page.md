---
parent:
topic: ImagingStudyExtensionCT
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-ct
---

## Extension Modalität CT

Die Extension CT (Computertomographie) ermöglicht das Erfassen relevanter DICOM-Tags, um Rückschlüsse über die Bildgewinnung ziehen zu können.
Eine Besonderheit der Computertomographie ist die Verwendung von Röntgenstrahlen zur Erzeugung detaillierter Querschnittsbilder des Körpers. 
Diese Informationen über die Strahlungserzeugung, Strahlenbelastung und die technischen Parameter der Bildgebung liegen in den entsprechenden DICOM-Tags vor.

Relevante DICOM-Tags:

    CTDIvol [(0018, 0060) CTDIVolume] in Milligray [mGy]
    Röntgenröhrenspannung [(0018, 1150) tubeVoltage] in Kilovolt [kV]
    Expositionszeit [(0018, 1150) exposureTime] in Millisekunden [ms]
    Exposition [(0018, 1152) exposure] in Milliampere-Sekunden [mAs]
    Röntgenröhrenstrom [(0018, 1151) xRayTubeCurrent] in Milliampere [mA]

@```
from
    StructureDefinition
where
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-ct'
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
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-ct'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from
            StructureDefinition
        where
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-ct'
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

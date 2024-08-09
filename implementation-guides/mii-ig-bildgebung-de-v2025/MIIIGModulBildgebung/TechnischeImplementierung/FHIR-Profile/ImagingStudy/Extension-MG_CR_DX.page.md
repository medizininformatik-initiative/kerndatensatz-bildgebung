---
parent:
topic: ImagingStudyExtensionMGCRDX
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mg-cr-dx
---

## Extension Modalität Mammografie, Röntgen, Digitales Röntgen

Die Extension für die Modalitäten MG (Mammographie), CR (Computed Radiography) und DX (Digital Radiography) ermöglicht das Erfassen relevanter DICOM-Tags, um Rückschlüsse über die Bildgewinnung ziehen zu können. Diese Modalitäten nutzen Röntgenstrahlen zur Erstellung von Bildern des Körpers, wobei die Strahlungserzeugung, Strahlenbelastung und spezifischen technischen Parameter der Bildgebung in den entsprechenden DICOM-Tags festgehalten werden.

Relevante DICOM-Tags:

    Röntgenröhrenspannung [(0018, 0060) KVP] in Kilovolt [kV]
    Expositionszeit [(0018, 1150) exposureTime] in Millisekunden [ms]
    Exposition [(0018, 1152) exposure] in Milliampere-Sekunden [mAs]
    Röntgenröhrenstrom [(0018, 1151) xRayTubeCurrent] in Milliampere [mA]

@```
from
    StructureDefinition
where
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mg-cr-dx'
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
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mg-cr-dx'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from
            StructureDefinition
        where
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mg-cr-dx'
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

{{json:fsh-generated/resources/ImagingStudy-mii-exa-bildgebung-bildgebungsstudie.json}}

---

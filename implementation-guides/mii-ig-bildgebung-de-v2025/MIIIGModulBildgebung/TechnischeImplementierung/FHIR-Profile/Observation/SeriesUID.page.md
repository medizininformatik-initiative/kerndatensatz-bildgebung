---
parent:
topic: ObservationExtensionSerieUID
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-series-uid
---

## Extension Serien UID

Diese Extension ergänzt die Observation-Ressource um den Bezug zur Bildserien aus der Bildgebungsstudie herzustellen. Die ID verweist hier dementsprechend auf die jeweilige Bilderserie.

@```
from
    StructureDefinition
where
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-series-uid'
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
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-series-uid'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from
            StructureDefinition
        where
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-series-uid'
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

Beispiel einer DiagnosticReport-Ressource mit Angaben zum Applikationsweg und der Dosierung

{{json:fsh-generated/resources/Observation-mii-exa-bildgebung-radiologische-beobachtung.json}}

---

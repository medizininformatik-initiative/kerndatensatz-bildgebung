---
parent:
topic: ObservationExtensionBodyStructure
subject: http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.bodyStructure
---

## Extension BodyStructure

Diese Extension ergänzt die Observation-Ressource um die Möglichkeit die Körperstruktur codiert abzubilden.

@```
from
    StructureDefinition
where
    url = 'http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.bodyStructure'
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
	        url = 'http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.bodyStructure'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from
            StructureDefinition
        where
            url = 'http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.bodyStructure'
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

Beispiel einer Observation-Resssource mit der Angabe zur betrachteten Bild-Serie

{{json:fsh-generated/resources/Observation-mii-exa-bildgebung-radiologische-beobachtung.json}}

---

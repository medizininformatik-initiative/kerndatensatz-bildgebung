---
parent:
topic: DiagnosticReportExtensionSupportingInfo
subject: http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.supportingInfo
---

## Extension Supporting Info

Diese Extension ergänzt die DiagnosticReport-Ressource um weitere DiagnosticReports und Procedures als Zusatzinfo zu ergänzen.

@```
from
    StructureDefinition
where
    url = 'http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.supportingInfo'
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
	        url = 'http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.supportingInfo'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from
            StructureDefinition
        where
            url = 'http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.supportingInfo'
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

{{json:fsh-generated/resources/DiagnosticReport-mii-exa-bildgebung-radiologischer-Befund.json}}

---

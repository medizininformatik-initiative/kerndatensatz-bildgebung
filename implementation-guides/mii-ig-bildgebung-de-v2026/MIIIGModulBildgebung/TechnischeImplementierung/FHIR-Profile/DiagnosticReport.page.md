---
parent:
topic: DiagnosticReport
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-radiologischer-befund
---

## DiagnosticReport

Der Diagnostic Report für Bildgebende verfahren richtet sich an die Dokumentation von radiologischen Befundungsergebnissen. Unterschiedliche Systeme (RIS Befundungsmodule, AI Integrationen dedizierte Systeme zur strukturieren Befundung) liefern in unterschiedlichem Detailgrad Informationen. Dieses Profil adressiert diese unterschiedlichen Detailgrade und bietet modulare aufeinander aufbauende Stufen. Jede Stufe fügt weitere Konzepte hinzu und ermöglicht so neue Anwendungsmöglichkeiten von der Routine bis hin zu wissenschaftlichen Auswertungen.

**Stufe 1** - Freitext in strukturierter Form \
Auf der grundlegendsten Ebene ermöglicht die DiagnosticReport-Ressource die Einbindung von radiologischen Befunden als Freitext in einer strukturierten Form. Dies erlaubt eine einfache, jedoch effektive Darstellung von diagnostischen Informationen. Die Freitextbeschreibung bietet die Möglichkeit, ohne komplexen Datenaustausch, essenzielle Befundinformationen zu übermitteln.

**Stufe 2** - Verlinkung von Observation-Ressourcen \
Auf der nächsten Stufe werden DiagnosticReport-Ressourcen mit Observation-Ressourcen verknüpft. Dies erlaubt eine detailliertere Erfassung und Darstellung spezifischer Befunde oder Messwerte. Da diese Ressourcen maschinenlesbar und auch kodiert sind ist es möglich nach diesen Inhalten zu suchen sie für Auswertungen zu verwenden oder auch Workflows zu steuern.

**Stufe 3** - Bezugnahme auf anatomische Strukturen \
Die Verknüpfung mit BodyStructure-Ressourcen stellt eine Erweiterung dar, die es ermöglicht, Observations präzise anatomischen Strukturen zuzuordnen. Dieser Bezug ist insbesondere für die longitudinale Patientenversorgung von Bedeutung, da er die Verfolgung und Bezugnahme auf spezifische Läsionen oder Anomalien in Folgeuntersuchungen oder in anderen klinischen Kontexten, wie beispielsweise in der Pathologie, ermöglicht. Wichtig dabei ist, dass die BodyStructure Ressource nicht Teil des Diagnostic Reports ist. Somit müssen Observations auf diese Ressource versioniert verweisen.

**Stufe 4** - Einführung von Befundungs Prozeduren \
Die Integration von Procedure-Ressourcen bietet einen weiteren Detaillierungsgrad, indem sie den Kontext / die Bedingungen beschreibt, unter denen die Observations erhoben wurden. Dies erlaubt eine tiefere Einsicht in die Umstände der Befundung, indem klar definiert wird, nach welchen Kriterien und Voraussetzungen spezifische Informationen und Messwerte erfasst wurden. Die Verknüpfung mit Procedure-Ressourcen erweitert somit den diagnostischen Bericht um wichtige kontextuelle Informationen, die für die Interpretation der Befunde entscheidend sein können.


@```
from
    StructureDefinition
where
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-radiologischer-befund'
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
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-radiologischer-befund'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from
            StructureDefinition
        where
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-radiologischer-befund'
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

@```
from StructureDefinition
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/LogicalModel/Bildgebung'
    for differential.element where id.contains('Bildgebung.Befundbericht')
    select
        FHIR: mapping[0].map,
        Datensatz: path,
        Erklaerung: definition
```

---

**Suchparameter**


Folgende Suchparameter sind für das Modul Bildgebung relevant, auch in Kombination:

@``` from CapabilityStatement where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/CapabilityStatement/metadata' for rest.resource.where(type='DiagnosticReport').searchParam select Name: name, Definition: definition, Type: type, Expectation: extension.where(url='http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation').value.ofType(code)

```

---

**Beispiele**

Beispiel einer DiagnosticReport-Ressource

{{json:fsh-generated/resources/DiagnosticReport-mii-exa-bildgebung-radiologischer-Befund.json}}

---

---
parent:
topic: ImagingStudyExtensionUS
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-us
---

## Extension Modalität US

Die Extension US (Ultraschall) ermöglicht das Erfassen relevanter DICOM-Tags, um Rückschlüsse über die Bildgewinnung ziehen zu können.
Die Informationen über die Eigenschaften des Schallkopfes sowie der Ultraschallfarbe liegen in den entsprechenden DICOM-Tags vor.
Achtung: Die Codes für den Schallkopftyp müssen zwingend mit einem Unterstrich zwischen den Worten bezeichnet werden, auch wenn diese im Header nicht unbedingt so vorliegen!

Relevante DICOM-Tags:

* Schallkopftyp (Transducer Type, [0018,6031])
* Schallkopffrequenz (Transducer Frequency, [0018,6011] --> [0018,6030]) in kHz
* Impulsfolgefrequenz (Pulse Repetition Frequency, [0018,6011] --> [0018,6032]) in Hz
* Ultraschallfarbe (Ultrasound Color Data Present, [0028,0014])

@```
from
    StructureDefinition
where
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-us'
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
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-us'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from
            StructureDefinition
        where
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-us'
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

Beispiel einer ImagingStudy-Ressource mit der Extension für US Metadaten inkl. der modalitätsunabhängigen Extension für Instanzdetails:

{{json:fsh-generated/resources/ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-us.json}}

---

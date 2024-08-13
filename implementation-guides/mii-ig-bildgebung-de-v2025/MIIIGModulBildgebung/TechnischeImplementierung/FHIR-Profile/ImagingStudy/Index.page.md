---
parent:
topic: ImagingStudy
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-bildgebungsstudie
---

## ImagingStudy

Das ImagingStudy-Profil wird verwendet, um Bildgebungsstudien strukturiert zu erfassen und die zugehörigen DICOM-Headerdaten abzubilden. 
Dieses Profil ermöglicht das Anlegen einer Studie, die aus mehreren DICOM-Serien besteht, die wiederum aus mehreren Instanzen (Bildschichten) bestehen. 
Beim Anlegen einer Serie können Erweiterungen (Extensions) ausgewählt werden, die die zugrunde liegende Modalität der Serie genauer beschreiben.


@```
from
    StructureDefinition
where
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-bildgebungsstudie'
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
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-bildgebungsstudie'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from
            StructureDefinition
        where
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-bildgebungsstudie'
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

### Empfohlenes Mapping der DICOM-Tags

Folgende DICOM Tags sind für die entsprechenden Datenelemente des Profils vorgesehen.
Die Datenelemente der jeweiligen Extensions finden sich auf den entsprechenden Unterseiten.

| **Datenelement im Informationsmodell**| **DICOM Tag**			|
|---------------------------------------|-------------------------------|
| Identifier				| (0008,0050) / (0020,000D)	|
| Studien-Beschreibung			| (0008,1030)			|
| Anzahl an enthaltenen SOP-Instanzen	| (0020,1208) 			|
| Anzahl an enthaltenen Serien 		| (0020,1206)       		|
| Beginn 				| (0008,0020) + (0008,0030) 	|
| Personen-Identifikation 		| (0010,0020) 			|
| Modalitäten 				| (0008,0061) 			|
| Prozedur 				| (0008,1032) 			|
| Bildgebungsgrund 			| (0040,1002) 			|
| Anfordernde Maßnahme 			| (0032,1064) 			|
| Serie --> Modalität 			| (0008,0060) 			|
| Serie --> Körperregion 		| (0018,0015) 			|
| Serie --> Beginn 			| (0008,0021) + (0008,0031) 	|
| Serie --> Körperseite 		| (0020,0060) 			|
| Serie --> Serien-Nummer 		| (0020,0011) 			|
| Serie --> Anzahl an in Serie enthaltenen Instanzen | (0020,1209) 	|
| Serie --> Serien-Beschreibung 	| (0008,103E) 			|
| Serie --> Serien-UID 			| (0020,000E) 			|
| Instanz --> SOP-Instanz 		| (0008,0018) 			|
| Instanz --> SOP-Klasse 		| (0008,0016) 			|
| Instanz --> Instanz-Nummer 		| (0020,0013) 			|

@```
from StructureDefinition
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/LogicalModel/Bildgebung'
    for differential.element where id.contains('Bildgebung.Studie')
    select
        FHIR: mapping[0].map,
        Datensatz: path,
        Erklaerung: definition
```

---

**Suchparameter**


Folgende Suchparameter sind für das Modul Bildgebung relevant, auch in Kombination:

@``` from CapabilityStatement where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/CapabilityStatement/metadata' for rest.resource.where(type='ImagingStudy').searchParam select Name: name, Definition: definition, Type: type, Expectation: extension.where(url='http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation').value.ofType(code)

```
---

**Beispiele**

Beispiel einer ImagingStudy-Ressource:

| Hinweis |  |
|---------|---------------------|
| {{render:implementation-guides/ImplementationGuide-Common/images/Warning.jpg}} | Aus Gründen der Übersichtlichkeit wurde in diesem Beispiel darauf verzichtet, alle dazugehörigen Serien bzw. Instanzen mit einzubinden. Natürlich ist es bei der Implkementierung vorgesehen, dass alle zur jeweiligen Studie gehörenden Serien und Instanzen auch in der resultierenden FHIR-Ressource enthalten sind - dafür wird dann einfach die Sequenz "series" bzw "instance" für jede Serie bzw. Instanz wiederholt und mit den entsprechenden Werten befüllt.|

{{json:fsh-generated/resources/ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-ct.json}}

---

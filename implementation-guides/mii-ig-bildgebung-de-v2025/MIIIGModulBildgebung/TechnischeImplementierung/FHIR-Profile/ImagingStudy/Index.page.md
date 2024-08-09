---
parent:
topic: ImagingStudy
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-bildgebungsstudie
---

## ImagingStudy

Das ImagingStudy-Profil wird verwendet, um Bildgebungsstudien strukturiert zu erfassen und die zugehörigen DICOM-Headerdaten abzubilden. 
Dieses Profil ermöglicht das Anlegen einer Studie, die aus mehreren DICOM-Serien besteht, die wiederum aus mehreren Instanzen (Bildschichten) bestehen. 
vgBeim Anlegen einer Serie können Erweiterungen (Extensions) ausgewählt werden, die die zugrunde liegende Modalität der Serie genauer beschreiben.

Relevante DICOM-Tags für die Studien- und Serien-Ebene:

Studien-Ebene:

    Identifier: [(0008, 0050) StudyInstanceUID / (0020, 000D) StudyInstanceUID]
    Studien-Beschreibung: [(0008, 1030) StudyDescription]
    Anzahl an enthaltenen SOP-Instanzen: [(0020, 1208) NumberOfStudyRelatedInstances]
    Anzahl an enthaltenen Serien: [(0020, 1206) NumberOfStudyRelatedSeries]
    Beginn: [(0008, 0020) StudyDate] + [(0008, 0030) StudyTime]
    Personen-Identifikation: [(0010, 0020) PatientID]
    Modalitäten: [(0008, 0061) ModalitiesInStudy]
    Prozedur: [(0008, 1032) ProcedureCodeSequence]
    Bildgebungsgrund: [(0040, 1002) ReasonForStudy]
    Anfordernde Maßnahme: [(0032, 1064) RequestingService]

Serien-Ebene:

    Modalität: [(0008, 0060) Modality]
    Hersteller: [(0008, 0070) Manufacturer]
    Modell: [(0008, 1090) DeviceSerialNumber]
    Körperregion: [(0018, 0015) BodyPartExamined]
    Beginn: [(0008, 0021) SeriesDate] + [(0008, 0031) SeriesTime]
    Körperseite: [(0020, 0060) Laterality]
    Serien-Nummer: [(0020, 0011) SeriesNumber]
    Anzahl an in Serie enthaltenen Instanzen: [(0020, 1209) NumberOfSeriesRelatedInstances]
    Serien-Beschreibung: [(0008, 103E) SeriesDescription]
    Serien-UID: [(0020, 000E) SeriesInstanceUID]
    +
    Extension für modalität
    +
    Extension für imagingInstance

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
| Serie --> Hersteller 			| (0008, 0070) 			|
| Serie --> Modell 			| (0008,1090) 			|
| Serie --> Körperregion 		| (0018,0015) 			|
| Serie --> Beginn 			| (0008,0021) + (0008,0031) 	|
| Serie --> Körperseite 		| (0020,0060) 			|
| Serie --> Serien-Nummer 		| (0020,0011) 			|
| Serie --> Anzahl an in Serie enthaltenen Instanzen | (0020,1209) 	|
| Serie --> Serien-Beschreibung 	| (0008,103E) 			|
| Serie --> Serien-UID 			| (0020,000E) 			|
| Serie --> Maximale Röntgenröhrenspannung | (0018,0060) 		|
| Serie --> Expositionszeit 		| (0018,1150) 			|
| Serie --> Exposition 			| (0018,1152) 			|
| Serie --> Röntgenröhrenstrom 		| (0018,1151) 			|
| Serie --> CTDIVolume 			| (0018,9345) 			|
| Serie --> Scanning Sequenz 		| (0018,0020) 			|
| Serie --> Scanning Sequenz Untervariante | (0018,0021) 		|
| Serie --> Magnetische Feldstärke 	| (0018,0087) 			|
| Serie --> Radiopharmakon 		| (0054,0016)->(0018,0031) 			|
| Serie --> Applikationsstartzeit 	| (0054,0016)->(0018,1042) 			|
| Serie --> Reskalierungstyp 		| (0028,1054) 			|
| Serie --> Gesamte Radionukliddosis 	| (0054,0016)->(0018,1044) 			|
| Serie --> Halbwertszeit 		| (0054,0016)->(0018,1075) 			|
| Instanz --> SOP-Instanz 		| (0008,0018) 			|
| Instanz --> SOP-Klasse 		| (0008,0016) 			|
| Instanz --> Instanz-Nummer 		| (0020,0013) 			|
| Instanz --> Schichtdicke 		| (0018,0050) 			|
| Instanz --> Bildtyp 			| (0008,0008) 			|
| Instanz --> Pixelabstand 		| (0028,0030) 			|


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

{{json:fsh-generated/resources/ImagingStudy-mii-exa-bildgebung-bildgebungsstudie.json}}

---

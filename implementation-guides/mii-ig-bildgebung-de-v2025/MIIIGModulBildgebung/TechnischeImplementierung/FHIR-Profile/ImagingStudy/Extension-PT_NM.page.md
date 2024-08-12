---
parent:
topic: ImagingStudyExtensionPTNM
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-pt-nm
---

## Extension Modalität PET und Nuklearmedizin

Die Extension PT & NM (PET und Nuklearmedizinische Bildgebung) ermöglicht das Erfassen relevanter DICOM-Tags, um Rückschlüsse über die Bildgewinnung ziehen zu können.
Eine Besonderheit der Nuklearmedizin ist die Verwendung eines Radiopharmakons, das aus einem Tracer und einem Radioisotop besteht und somit Stoffwechselbildgebung ermöglicht.
Diese Informationen über das Radiopharmakon liegen verschachtelt in dem DICOM-Tag RadiopharmaceuticalInformationSequence (0054,0016) vor, sogenannte nested DICOM-Tags.

Diese nested DICOM-Tags sind:
Radiopharmakon [(0018, 0031) Radiopharmaceutical]
Applikationsstartzeit [(0018, 1072) RadiopharmaceuticalStartTime]
Gesamte Radionukliddosis [(0018, 1074) RadionuclideTotalDose] in Megabecquerel [MBq]
Halbwertszeit [(0018, 1075) RadionuclideHalfLife] in Sekunden [s]

Nicht nested DICOM-Tags:
ReskalierungsTyp [(0028,1054) RescaleType]

Beispiel des Zugriffs auf ein nested DICOM-Tag mit Python aus einer DICOM-Schicht(Instanz):
    RadiopharmaceuticalStartTime = layer['RadiopharmaceuticalInformationSequence'][0]['RadiopharmaceuticalStartTime'].value

@```
from
    StructureDefinition
where
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-pt-nm'
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
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-pt-nm'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from
            StructureDefinition
        where
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-pt-nm'
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

| Hinweis |  |
|---------|---------------------|
| {{render:implementation-guides/ImplementationGuide-Common/images/Warning.jpg}} | Aus Gründen der Übersichtlichkeit wurde in diesem Beispiel darauf verzichtet, alle dazugehörigen Serien bzw. Instanzen mit einzubinden. Natürlich ist es bei der Implkementierung vorgesehen, dass alle zur jeweiligen Studie gehörenden Serien und Instanzen auch in der resultierenden FHIR-Ressource enthalten sind - dafür wird dann einfach die Sequenz "series" bzw "instance" für jede Serie bzw. Instanz wiederholt und mit den entsprechenden Werten befüllt.|

{{json:fsh-generated/resources/ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-pt.json}}

---

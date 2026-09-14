Das ImagingStudy-Profil wird verwendet, um Bildgebungsstudien strukturiert zu erfassen und die zugehörigen DICOM-Headerdaten abzubilden. 
Dieses Profil ermöglicht das Anlegen einer Studie, die aus mehreren DICOM-Serien besteht, die wiederum aus mehreren Instanzen (Bildschichten) bestehen. 
Beim Anlegen einer Serie können Erweiterungen (Extensions) ausgewählt werden, die die zugrunde liegende Modalität der Serie genauer beschreiben.

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
| Körpergröße               | (0010,1020)               |
| Körpergewicht               | (0010,1030)               |
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

---

Die Zuordnung der Datensatz-Elemente zu diesem Profil ist im [Logischen Modell Bildgebung](StructureDefinition-mii-lm-bildgebung.html) dokumentiert.

---

**Beispiele**

<div class="ig-highlight" markdown="1">
**Hinweis:** Aus Gründen der Übersichtlichkeit wurde in diesem Beispiel darauf verzichtet, alle dazugehörigen Serien bzw. Instanzen mit einzubinden. Natürlich ist es bei der Implementierung vorgesehen, dass alle zur jeweiligen Studie gehörenden Serien und Instanzen auch in der resultierenden FHIR-Ressource enthalten sind - dafür wird dann einfach die Sequenz "series" bzw "instance" für jede Serie bzw. Instanz wiederholt und mit den entsprechenden Werten befüllt.
</div>

Beispiele von ImagingStudy-Ressourcen verschiedener Modalitäten:

Beispiel eines CTs:
[ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-ct](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-ct.html)

Beispiel eines MRTs:
[ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-mr](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-mr.html)

Beispiel eine Röntgenbilds:
[ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-cr](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-cr.html)

Beispiel eines PET-Scans:
[ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-pt](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-pt.html)

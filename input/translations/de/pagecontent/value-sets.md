<!-- markdownlint-disable MD041 -->

Diese Seite beschreibt die ValueSets des Moduls **Bildgebung**. Die
vollständige, automatisch generierte Liste aller ValueSets findet sich in der
[Artefakt-Übersicht](artifacts.html).

### Von DICOM definierte Value Sets

Der DICOM-Standard definiert zum Teil für bestimmte Tags eigene Value Sets,
welche auch in diesen Profilen genutzt werden sollen. Diese sind:

* Modalität: <https://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_29.html>
* Körperseite: <https://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_244.html>
* SOP-Klasse: <https://dicom.nema.org/medical/dicom/current/output/chtml/part04/sect_B.5.html>
* Radiopharmakon PT: <https://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_4021.html>
* Radionuklid PT: <https://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_4020.html>
* Radiopharmakon NM: <https://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_25.html>
* Radionuklid NM: <https://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_18.html>
* Skalierungseinheit: <http://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_84.html>

Für Tags mit "enumerated values", für die das DICOM-Package keine Codes
definiert, hat das Modul eigene CodeSysteme samt zugehörigen ValueSets
angelegt — siehe die [CodeSysteme-Seite](code-systems.html).

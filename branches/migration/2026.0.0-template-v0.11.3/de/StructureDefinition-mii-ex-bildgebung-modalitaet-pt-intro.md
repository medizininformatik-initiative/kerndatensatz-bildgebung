Die Extension PT (Positronen-Emissions-Tomographie) ermöglicht das Erfassen relevanter DICOM-Tags, um Rückschlüsse über die Bildgewinnung ziehen zu können.
Eine Besonderheit der Nuklearmedizin ist die Verwendung eines Radiopharmakons, das aus einem Tracer und einem Radioisotop besteht und somit Stoffwechselbildgebung ermöglicht.
Diese Informationen über das Radiopharmakon liegen verschachtelt in dem DICOM-Tag RadiopharmaceuticalInformationSequence (0054,0016) vor, sogenannte nested DICOM-Tags.

Beispiel des Zugriffs auf ein nested DICOM-Tag mit Python aus einer DICOM-Schicht(Instanz):

    RadiopharmaceuticalStartTime = layer['RadiopharmaceuticalInformationSequence'][0]['RadiopharmaceuticalStartTime'].value

Implementation:

- Radiopharmakon (ValueSet mit Codes: https://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_4021.html):
  Das Radiopharmakon kann unter Bestimmung des Codes „0054,0016“ (Radiopharmaceutical Information Sequence) → „0054,0304“ (Radiopharmaceutical Code Sequence) → „0008,0100“ (Code Value) als Code in den Klarnamen umgewandelt werden.
  Ist dieser nicht vorhanden, kann der Wert direkt aus dem Tag „0054,0016“ (Radiopharmaceutical Information Sequence) → „0054,0304“ (Radiopharmaceutical Code Sequence) → „0008,0104“ (Code Meaning) extrahiert werden. Falls unter Umständen sich der Klarname von dem ValueSet unterscheidet, kann ein lokales Mapping am Standort gemacht werden. Alternativ kann bei weiterem Fehlen auch noch das Tag „0054,0016“ (Radiopharmaceutical Information Sequence) → "0018,0031" (Radiopharmaceutical) zu Rate gezogen werden, bitte nur verwenden, falls sich im String konstant der Tracer UND das Radionuklid befinden (siehe Link des Valuesets).

- Radionuklid (ValueSet mit Codes: https://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_4020.html)
  Das Radionuklid kann unter Bestimmung des Codes „0054,0016“ (Radiopharmaceutical Information Sequence) → „0054,0300“ (Radiopharmaceutical Code Sequence) → „0008,0100“ (Code Value) als Code in den Klarnamen umgewandelt werden.
- Tracer-Einwirkzeit:
  Dies ist ein Custom Tag und wird aus der Differenz zwischen den Zeitangaben in Sekunden der Acquisition Time "0008,0032" (oder ähnlichem) und der „0054,0016“ (Radiopharmaceutical Information Sequence) → "0018, 1072" RadiopharmaceuticalStartTime gebildet.

- Halbwertszeit ["0018, 1075" RadionuclideHalfLife] in Sekunden [s]

- Gesamte Radionukliddosis ["0018, 1074" RadionuclideTotalDose] in _Becquerel [Bq]_ (Achtung: Bei NM dagegen wird normalerweise die Einheit MBq verwendet!)

- Skalierungseinheit ["0054,1001" Units]
  Falls Units nicht vorhanden oder leer, kann das Tag "0028,1054" (RescaleType) verwendet werden.

- Serientyp ["0054,1000" Series Type]

---
**Beispiele**

<div class="ig-highlight" markdown="1">
**Hinweis:** Aus Gründen der Übersichtlichkeit wurde in diesem Beispiel darauf verzichtet, alle dazugehörigen Serien bzw. Instanzen mit einzubinden. Natürlich ist es bei der Implementierung vorgesehen, dass alle zur jeweiligen Studie gehörenden Serien und Instanzen auch in der resultierenden FHIR-Ressource enthalten sind - dafür wird dann einfach die Sequenz "series" bzw "instance" für jede Serie bzw. Instanz wiederholt und mit den entsprechenden Werten befüllt.
</div>

Beispiel einer ImagingStudy-Ressource mit der Extension für PET Metadaten inkl. der modalitätsunabhängigen Extensions für Kontrastmittel, Instanzdetails und Gerätehersteller:

[ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-pt](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-pt.html)

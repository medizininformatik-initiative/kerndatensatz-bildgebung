Diese Extension Kontrastmittelgabe ermöglicht es, die Verwendung von Kontrastmitteln in der BildSerie anzugeben und gleichzeitig mit einer Referenz auf das KDS-Modul Medikation(MedicationStatement) Details anzulegen. Der hier verwendete DICOM Tag bildet einen boolschen Wert ab.

Relevante DICOM-Tags sind:

* Contrast/Bolus Agent [(0018,0010) contrastBolus]
    

---
**Beispiele**

<div class="ig-highlight" markdown="1">
**Hinweis:** Aus Gründen der Übersichtlichkeit wurde in diesem Beispiel darauf verzichtet, alle dazugehörigen Serien bzw. Instanzen mit einzubinden. Natürlich ist es bei der Implementierung vorgesehen, dass alle zur jeweiligen Studie gehörenden Serien und Instanzen auch in der resultierenden FHIR-Ressource enthalten sind - dafür wird dann einfach die Sequenz "series" bzw "instance" für jede Serie bzw. Instanz wiederholt und mit den entsprechenden Werten befüllt.
</div>

Beispiele von ImagingStudy-Ressourcen mit der Extension für Kontrastmittelgabe:

Beispiel eines CTs:
[ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-ct](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-ct.html)

Beispiel eines MRTs:
[ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-mr](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-mr.html)

Beispiel eine Röntgenbilds:
[ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-cr](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-cr.html)

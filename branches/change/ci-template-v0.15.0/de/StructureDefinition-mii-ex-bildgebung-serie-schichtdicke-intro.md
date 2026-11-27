Diese Extension Schichtdicke ermöglicht es, die Schichtdicke der einzelnen Instanzen in der Bildserie anzugeben. Dies soll vorrangig dafür genutzt werden, wenn aus Kapazitätsgründen die Instanzebene der ImagingStudy nicht umgesetzt wird. Wenn die Instanzebene umgesetzt wird, soll die Schichtdicke in dieser Ebene befüllt werden (siehe Extension-Instanzdetails)
Achtung: Da sliceThickness laut DICOM-Standard ein Instanz-Element ist, muss bei der Befüllung auf Serienebene sichergestellt werden, dass die Schichtdicke über die betrachtete Serie hinweg in alles Instanzen konstant ist!

Relevante DICOM-Tags sind:

- Schichtdicke [(0018, 0050) SliceThickness] in [mm]

---
**Beispiele**

<div class="ig-highlight" markdown="1">
**Hinweis:** Aus Gründen der Übersichtlichkeit wurde in diesem Beispiel darauf verzichtet, alle dazugehörigen Serien bzw. Instanzen mit einzubinden. Natürlich ist es bei der Implementierung vorgesehen, dass alle zur jeweiligen Studie gehörenden Serien und Instanzen auch in der resultierenden FHIR-Ressource enthalten sind - dafür wird dann einfach die Sequenz "series" bzw "instance" für jede Serie bzw. Instanz wiederholt und mit den entsprechenden Werten befüllt.
</div>

Beispiele von ImagingStudy-Ressourcen mit der Extension für Schichtdicke in der Serie:

Beispiel eines MRTs:
[ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-mr-series](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-mr-series.html)

Diese Extension Schichtdicke ermöglicht es, die Schichtdicke der einzelnen Instanzen in der Bildserie anzugeben. Dies soll vorrangig dafür genutzt werden, wenn aus Kapazitätsgründen die Instanzebene der ImagingStudy nicht umgesetzt wird. Wenn die Instanzebene umgesetzt wird, soll die Schichtdicke in dieser Ebene befüllt werden (siehe Extension-Instanzdetails)
Achtung: Da sliceThickness laut DICOM-Standard ein Instanz-Element ist, muss bei der Befüllung auf Serienebene sichergestellt werden, dass die Schichtdicke über die betrachtete Serie hinweg in alles Instanzen konstant ist!

Relevante DICOM-Tags sind:

- Schichtdicke [(0018, 0050) SliceThickness] in [mm]

> Aus Gründen der Übersichtlichkeit wurde in den Beispielen darauf verzichtet, alle dazugehörigen Serien bzw. Instanzen mit einzubinden. Natürlich ist es bei der Implementierung vorgesehen, dass alle zur jeweiligen Studie gehörenden Serien und Instanzen auch in der resultierenden FHIR-Ressource enthalten sind - dafür wird dann einfach die Sequenz "series" bzw. "instance" für jede Serie bzw. Instanz wiederholt und mit den entsprechenden Werten befüllt.

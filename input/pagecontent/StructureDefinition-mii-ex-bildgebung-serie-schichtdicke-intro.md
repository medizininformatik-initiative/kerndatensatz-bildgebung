## Extension Schichtdicke auf Serienebene

Diese Extension Schichtdicke ermöglicht es, die Schichtdicke der einzelnen Instanzen in der Bildserie anzugeben. Dies soll vorrangig dafür genutzt werden, wenn aus Kapazitätsgründen die Instanzebene der ImagingStudy nicht umgesetzt wird. Wenn die Instanzebene umgesetzt wird, soll die Schichtdicke in dieser Ebene befüllt werden (siehe Extension-Instanzdetails)
Achtung: Da sliceThickness laut DICOM-Standard ein Instanz-Element ist, muss bei der Befüllung auf Serienebene sichergestellt werden, dass die Schichtdicke über die betrachtete Serie hinweg in alles Instanzen konstant ist!

Relevante DICOM-Tags sind:

- Schichtdicke [(0018, 0050) SliceThickness] in [mm]

Beispiele von ImagingStudy-Ressourcen mit der Extension für Schichtdicke in der Serie:

Beispiel eines MRTs:

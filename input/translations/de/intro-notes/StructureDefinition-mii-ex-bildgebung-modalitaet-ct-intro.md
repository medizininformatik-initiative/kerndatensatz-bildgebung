Die Extension CT (Computertomographie) ermöglicht das Erfassen relevanter DICOM-Tags, um Rückschlüsse über die Bildgewinnung ziehen zu können.
Eine Besonderheit der Computertomographie ist die Verwendung von Röntgenstrahlen zur Erzeugung detaillierter Querschnittsbilder des Körpers.
Diese Informationen über die Strahlungserzeugung, Strahlenbelastung und die technischen Parameter der Bildgebung liegen in den entsprechenden DICOM-Tags vor.

Relevante DICOM-Tags:

- CTDIvol [(0018, 9345) CTDIVolume] in Milligray [mGy]
- Röntgenröhrenspannung [(0018, 0060) KVP] in Kilovolt [kV]
- Expositionszeit [(0018, 1150) exposureTime] in Millisekunden [ms]
- Exposition [(0018, 1152) exposure] in Milliampere-Sekunden [mAs]
- Röntgenröhrenstrom [(0018, 1151) xRayTubeCurrent] in Milliampere [mA]
- Filterkern [(0018,1210) convolutionalKernel]

---
**Beispiele**

<div class="ig-highlight" markdown="1">
**Hinweis:** Aus Gründen der Übersichtlichkeit wurde in diesem Beispiel darauf verzichtet, alle dazugehörigen Serien bzw. Instanzen mit einzubinden. Natürlich ist es bei der Implementierung vorgesehen, dass alle zur jeweiligen Studie gehörenden Serien und Instanzen auch in der resultierenden FHIR-Ressource enthalten sind - dafür wird dann einfach die Sequenz "series" bzw "instance" für jede Serie bzw. Instanz wiederholt und mit den entsprechenden Werten befüllt.
</div>

Beispiel einer ImagingStudy-Ressource mit der Extension für CT Metadaten inkl. der modalitätsunabhängigen Extensions für Kontrastmittel, Instanzdetails und Gerätehersteller:

[ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-ct](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-ct.html)

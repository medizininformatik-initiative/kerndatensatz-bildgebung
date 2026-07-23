## Extension Modalität CT

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

````

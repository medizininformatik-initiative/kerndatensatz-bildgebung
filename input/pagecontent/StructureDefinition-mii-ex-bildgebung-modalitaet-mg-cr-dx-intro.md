## Extension Modalität Mammografie, Röntgen, Digitales Röntgen

Die Extension für die Modalitäten MG (Mammographie), CR (Computed Radiography) und DX (Digital Radiography) ermöglicht das Erfassen relevanter DICOM-Tags, um Rückschlüsse über die Bildgewinnung ziehen zu können. Diese Modalitäten nutzen Röntgenstrahlen zur Erstellung von Bildern des Körpers, wobei die Strahlungserzeugung, Strahlenbelastung und spezifische technische Parameter der Bildgebung in den entsprechenden DICOM-Tags festgehalten werden.

Relevante DICOM-Tags:

* Röntgenröhrenspannung [(0018, 0060) KVP] in Kilovolt [kV]
* Expositionszeit [(0018, 1150) exposureTime] in Millisekunden [ms]
* Exposition [(0018, 1152) exposure] in Milliampere-Sekunden [mAs]
* Röntgenröhrenstrom [(0018, 1151) xRayTubeCurrent] in Milliampere [mA]
* Blickposition [(0018,5101)] kann für [MG-](http://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_4014.html) bzw. [Röntgen-](https://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_4010.html)Aufnahmen über die von DICOM bereitgestellten Mappings in SNOMED CT überführt werden.

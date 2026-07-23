## Extension Modalität MR

Die Extension MR (Magnetresonanztomographie) ermöglicht das Erfassen relevanter DICOM-Tags, um Rückschlüsse über die Bildgewinnung ziehen zu können.
Eine Besonderheit der Magnetresonanztomographie ist die Verwendung eines starken Magnetfelds zur Bildgebung, wodurch detaillierte Bilder von Gewebestrukturen erzeugt werden können.
Diese Informationen über die Magnetfeldstärke, die verschiedenen Zeitintervalle und die Scansequenzen liegen in den entsprechenden DICOM-Tags vor.

Relevante DICOM-Tags:

* Magnetfeldstärke [(0018, 0087) magneticFieldStrength] in Tesla [T]
* Scansequenz [(0018, 0020) scanningSequence]
* Scansequenzvariante [(0018, 0021) scanningSequenceVariant]
* Echozeit (TE) [(0018,0081) Echo Time] in Millisekunden [ms]
* Repetitionszeit (TR) [(0018,0080) Repetition Time] in Millisekunden [ms]
* Inversionszeit (TI) [(0018,0082) Inversion Time] in Millisekunden [ms]
* Kippwinkel [(0018,1314) Flip Angle] in Grad (°) [deg]

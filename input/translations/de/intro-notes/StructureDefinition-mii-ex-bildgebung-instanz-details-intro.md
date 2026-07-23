Die Extension für DICOM-Instanzen ermöglicht das Erfassen relevanter DICOM-Tags, um detaillierte Informationen über die Bildinstanzen zu erhalten.
Diese Instanzen enthalten wesentliche Parameter zur Beschreibung und Klassifikation der Bilddaten und ihrer Eigenschaften.
Dies ermöglicht das Nachvollziehen der Eigenschaften der einzelnen Schichten und gibt somit Hinweise auf die Eigenschaften der gesamten Serie.
Beispielsweise kann die Homogenität der Pixelabstände oder Schichtdicken über die ganze Serie hinweg untersucht werden, was gleichzeitig als Ein- oder Ausschlusskriterium für Studien dient.

Relevante DICOM-Tags:

* Schichtdicke [(0018, 0050) SliceThickness] in [mm]
* Bildtyp [(0008, 0008) ImageType]
* Pixelabstand (x) [(0028, 0030) PixelSpacing] in [mm]
* Pixelabstand (y) [(0028, 0030) PixelSpacing] in [mm]

Die Pixelabstände sind in X und Y aufgeteilt und müssen aus dem zugrunde liegenden DICOM-Tag extrahiert werden.
Das DICOM-Tag PixelSpacing speichert X- und Y-Abstände gleichzeitig als String in folgendem Format: z. B. [0.703125, 0.703125].

> Aus Gründen der Übersichtlichkeit wurde in den Beispielen darauf verzichtet, alle dazugehörigen Serien bzw. Instanzen mit einzubinden. Natürlich ist es bei der Implementierung vorgesehen, dass alle zur jeweiligen Studie gehörenden Serien und Instanzen auch in der resultierenden FHIR-Ressource enthalten sind - dafür wird dann einfach die Sequenz "series" bzw. "instance" für jede Serie bzw. Instanz wiederholt und mit den entsprechenden Werten befüllt.

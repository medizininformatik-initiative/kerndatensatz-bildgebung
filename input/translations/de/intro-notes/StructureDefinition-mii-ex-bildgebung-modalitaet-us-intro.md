Die Extension US (Ultraschall) ermöglicht das Erfassen relevanter DICOM-Tags, um Rückschlüsse über die Bildgewinnung ziehen zu können.
Die Informationen über die Eigenschaften des Schallkopfes sowie der Ultraschallfarbe liegen in den entsprechenden DICOM-Tags vor.
Achtung: Die Codes für den Schallkopftyp müssen zwingend mit einem Unterstrich zwischen den Worten bezeichnet werden, auch wenn diese im Header nicht unbedingt so vorliegen!

Relevante DICOM-Tags:

* Schallkopftyp (Transducer Type, [0018,6031])
* Schallkopffrequenz (Transducer Frequency, [0018,6011] --> [0018,6030]) in kHz
* Impulsfolgefrequenz (Pulse Repetition Frequency, [0018,6011] --> [0018,6032]) in Hz
* Ultraschallfarbe (Ultrasound Color Data Present, [0028,0014])

> Aus Gründen der Übersichtlichkeit wurde in den Beispielen darauf verzichtet, alle dazugehörigen Serien bzw. Instanzen mit einzubinden. Natürlich ist es bei der Implementierung vorgesehen, dass alle zur jeweiligen Studie gehörenden Serien und Instanzen auch in der resultierenden FHIR-Ressource enthalten sind - dafür wird dann einfach die Sequenz "series" bzw. "instance" für jede Serie bzw. Instanz wiederholt und mit den entsprechenden Werten befüllt.

Die Extension US (Ultraschall) ermöglicht das Erfassen relevanter DICOM-Tags, um Rückschlüsse über die Bildgewinnung ziehen zu können.
Die Informationen über die Eigenschaften des Schallkopfes sowie der Ultraschallfarbe liegen in den entsprechenden DICOM-Tags vor.
Achtung: Die Codes für den Schallkopftyp müssen zwingend mit einem Unterstrich zwischen den Worten bezeichnet werden, auch wenn diese im Header nicht unbedingt so vorliegen!

Relevante DICOM-Tags:

* Schallkopftyp (Transducer Type, [0018,6031])
* Schallkopffrequenz (Transducer Frequency, [0018,6011] --> [0018,6030]) in kHz
* Impulsfolgefrequenz (Pulse Repetition Frequency, [0018,6011] --> [0018,6032]) in Hz
* Ultraschallfarbe (Ultrasound Color Data Present, [0028,0014])

---
**Beispiele**

<div class="ig-highlight" markdown="1">
**Hinweis:** Aus Gründen der Übersichtlichkeit wurde in diesem Beispiel darauf verzichtet, alle dazugehörigen Serien bzw. Instanzen mit einzubinden. Natürlich ist es bei der Implementierung vorgesehen, dass alle zur jeweiligen Studie gehörenden Serien und Instanzen auch in der resultierenden FHIR-Ressource enthalten sind - dafür wird dann einfach die Sequenz "series" bzw "instance" für jede Serie bzw. Instanz wiederholt und mit den entsprechenden Werten befüllt.
</div>

Beispiel einer ImagingStudy-Ressource mit der Extension für US Metadaten inkl. der modalitätsunabhängigen Extension für Instanzdetails:

[ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-us](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-us.html)

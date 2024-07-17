## Kontext im Gesamtprojekt / Bezüge zu anderen Modulen


Bildgebende Modalitäten sind von essentieller Bedeutung für die medizinische Diagnostik und dienen daraufhin als eine der Grundlagen für die Entscheidung von Therapien und Behandlungsplanung sowie für Forschungszwecke. Der Strukturierungsgrad und die Art der Beschreibungen der Bilddaten variiert jedoch erheblich zwischen den Standorten. Ein umfassender Überblick über die Verfügbarkeit strukturierter Bilddaten an den Konsortialstandorten liegt derzeit nicht vor. Dieser Umstand wird durch die vorgeschlagene abgestufte Bereitstellung berücksichtigt, die von den vorhandenen Daten abhängt.

### Beziehung zum Modul Person

Die Zuordnung von Bildgebungsstudien zu einem Patienten oder einer Patientin erfolgt über Referenzen von der Ressource ImagingStudy zum Modul [PERSON](https://simplifier.net/medizininformatikinitiative-modulperson).

### Beziehung zum Modul Fall

Die Zuordnung von Bildgebungsstudien zu einem Behandlungsfall erfolgt über Referenzen von der Ressource ImagingStudy zum Modul [FALL](https://simplifier.net/medizininformatikinitiative-modulfall). Es sollte stets eine Referenz auf den jeweiligen Behandlungsfall mitgeführt werden, um den Bezug der Bildgebungsstudie zu diesem Fall herzustellen.

### Beziehung zum Modul Prozedur

Im Zusammenhang mit bildgebenden Modalitäten kann es zu Beziehungen zu durchgeführten Prozeduren kommen, beispielsweise einer MRT-Untersuchung vor einer Operation. Die Ressource ImagingStudy spezifiziert in diesem Kontext die Art der Bildgebung und relevante Parameter. Für Angaben zur durchgeführten Prozedur wird das Modul [PROZEDUR](https://simplifier.net/medizininformatikinitiative-modulprozeduren) verwendet. Die Strukturen dieses Moduls ermöglichen es, die Beziehung zwischen Bildgebungsstudie und Prozedur über Referenzen der ImagingStudy zu "Prozedur" auszudrücken.


### Beziehung zum Modul Diagnose

Die Ressource ImagingStudy enthält Verknüpfungen zum Modul [DIAGNOSE](https://simplifier.net/medizininformatikinitiative-moduldiagnosen), die es ermöglichen, die bildgebende Untersuchung als diagnostisches Werkzeug zur Unterstützung der Diagnose zu erfassen. Dies ist besonders relevant für die Interpretation der Bildgebungsstudien und die Einordnung der Ergebnisse im diagnostischen Kontext.

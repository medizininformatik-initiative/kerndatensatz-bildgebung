## Kontext im Gesamtprojekt / Bezüge zu anderen Modulen

Die Medikamentenverordnung und -vergabe sind Kernprozesse der Routineversorgung und findet an allen Kliniken der MI-I statt. 
Der Anteil digital dokumentierter Verordnungen ist jedoch zwischen den Standorten in Bezug auf den Strukturierungsgrad, die abgedeckten Populationen und Medikamente sehr unterschiedlich. Ein Gesamtüberblick zur Verfügbarkeit strukturierter Medikationsdaten an den Konsortialstandorten liegt aktuell nicht vor. Diesem Umstand wird durch die vorgeschlagene abgestufte Bereitstellung — abhängig von den vorhandenen Daten — Rechnung getragen. Die Dokumentation von Medikationsplänen ist gesetzlich vorgeschrieben und sollte an allen Standorten verfügbar sein, wobei auch hier der Anteil strukturierter Dokumentation sehr unterschiedlich ist.

Medikationsdaten sind von zentraler Bedeutung für eine Vielzahl von Fragestellungen, z.B. in der Pharmakovigilanz (AMTS) oder auch als Ein-/Ausschlusskriterium für Studienkollektive. In den von der [AG Data Sharing](https://www.medizininformatik-initiative.de/index.php/de/zusammenarbeit/arbeitsgruppe-data-sharing) zusammengestellten Audit-Abfragen werden sie in den Vorschlägen z.B. des [SMITH Konsortiums](https://www.medizininformatik-initiative.de/de/konsortien/smith) aufgeführt. Zusätzlich wird das Modul MEDIKATION für den konsortienübergreifenden Use Case POLAR — Polypharmazie benötigt.


### Beziehung zum Modul Person

Die Zuordnung von Medikationsdaten zu einem Patienten bzw. einer Patientin erfolgt über Referenzen vom Modul MEDIKATION zum MODUL [PERSON](https://simplifier.net/medizininformatikinitiative-modulperson).

### Beziehung zum Modul Fall

Die Zuordnung von Medikationsdaten zu einem Fall erfolgt über Referenzen vom Modul MEDIKATION zum MODUL [FALL](https://simplifier.net/medizininformatikinitiative-modulfall). Wenn immer verfügbar sollte eine Referenz auf den Behandlungsfall mitgeführt werden, um den Fallbezug der Medikation zu erhalten.

* Statements/Liste i. S. Entlass/Aufnahmemedikation ⇒ Einrichtungskontakt.
* Request ⇒ Abteilungsstellen (oder besser auch Versorgungsstellen)
* Administration ⇒ Versorgungsstellen

### Beziehung zum Modul Prozedur

Die Einnahme, Verabreichung oder Anordnung einer Medikation kann in Bezug zu einer durchgeführten Prozedur stehen, bspw. eine Kontrastmittelgabe vor einer Röntgen-Diagnostik. Das Modul MEDIKATION spezifiziert in diesem Rahmen u.a. das Medikament, sowie Dosis und Verabreichungszeitpunkt. Für die Angaben zur Prozedur wird das Modul [PROZEDUR](https://simplifier.net/medizininformatikinitiative-modulprozeduren) verwendet. Die Datenstrukturen dieses Moduls ermöglichen es, den Bezug zur Prozedur über Referenzen von MEDIKATION zu PROZEDUR auszudrücken.

Die Beziehung zwischen den beiden Modulen ist darüber hinaus relevant für Use Cases in Verbindung mit dem Operationen- und Prozedurenschlüssel – OPS. Zu Abrechnungszwecken werden in den Kliniken ausgewählte teure Medikamente unter Nutzung des Kapitels 6 des OPS-Kataloges fallbezogen erfasst. In diesem Fall kann die klinische Dokumentation der medikamentösen Therapie, wie in diesem Modul beschrieben, mit der Prozedurenklassifikation nach OPS verknüpft werden.

### Beziehung zum Modul Diagnose

Das Modul MEDIKATION enthält Verbindungen zum Modul [DIAGNOSE](https://simplifier.net/medizininformatikinitiative-moduldiagnosen), welche ermöglichen, die zugrundeliegende Erkrankung als Ursache (Behandlungsgrund) für eine medikamentöse Therapie zu erfassen. 
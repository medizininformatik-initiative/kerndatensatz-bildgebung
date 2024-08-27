## Kontext im Gesamtprojekt / Bezüge zu anderen Modulen


Bildgebende Modalitäten sind von essentieller Bedeutung für die medizinische Diagnostik und dienen daraufhin als eine der Grundlagen für die Entscheidung von Therapien und Behandlungsplanung sowie für Forschungszwecke. Der Strukturierungsgrad und die Art der Beschreibungen der Bilddaten variiert jedoch erheblich zwischen den Standorten. Ein umfassender Überblick über die Verfügbarkeit strukturierter Bilddaten an den Konsortialstandorten liegt derzeit nicht vor. Dieser Umstand wird durch die vorgeschlagene abgestufte Bereitstellung berücksichtigt, die von den vorhandenen Daten abhängt.

### Beziehung zum Modul Person

Die Zuordnung von Bildgebungsstudien zu einem Patienten oder einer Patientin erfolgt über Referenzen von der Ressource **Studie** (ImagingStudy) zum Modul [PERSON](https://simplifier.net/mii-basismodul-person-2024). Ebenso wird im **Befundbericht** (DiagnosticReport) und in der **Anforderung** (ServiceRequest) das Modul [PERSON](https://simplifier.net/mii-basismodul-person-2024) referenziert.

### Beziehung zum Modul Fall

Die Zuordnung von Bildgebungsstudien zu einem Behandlungsfall erfolgt über Referenzen von der Ressource **Studie** (ImagingStudy) bzw. **Befundbericht** (DiagnosticReport) zum Modul [FALL](https://simplifier.net/medizininformatikinitiative-modulfall). Es sollte stets eine Referenz auf den jeweiligen Behandlungsfall mitgeführt werden, um den Bezug der Bildgebungsstudie zu diesem Fall herzustellen.

### Beziehung zum Modul Prozedur

Im Zusammenhang mit bildgebenden Modalitäten kann es zu Beziehungen zu durchgeführten Prozeduren kommen, beispielsweise einer MRT-Untersuchung vor einer Operation. Für Angaben zur durchgeführten Prozedur wird das Modul [PROZEDUR](https://simplifier.net/mii-basismodul-prozedur-2024) in den Ressourcen **Studie** (ImagingStudy), **Befundbericht** (DiagnosticReport) sowie in der verknüpften Ressource **GenerischeBeobachtung** (Observation) verwendet. 

### Beziehung zum Modul Diagnose

Die Ressource **Vorbefund** (Condition) enthält Verknüpfungen zum Modul [DIAGNOSE](https://simplifier.net/mii-basismodul-diagnose-2024), die es ermöglichen, die bildgebende Untersuchung als diagnostisches Werkzeug zur Unterstützung der Diagnose zu erfassen. Diese werden über eine Referenz in der Ressource **Anforderung** (ServiceRequest) abgebildet, welche wiederum im **Befundbericht** (DiagnosticReport) referenziert wird.

### Beziehung zum Modul Medikation

Zur Darstellung der Kontrastmittelgabe wird sowohl in der **Bildgebungsprozedur** (Procedure), als auch in der **Studie** (ImagingStudy) ein Bezug auf das Modul [Medikation](https://simplifier.net/mii-basismodul-medikation-2024) hergestellt. In der **Bildgebungsprozedur** wird die Kontrastmittelgabe mit Hilfe der **Medikamentenverabreichung** (MedicationAdministration) abgebildet und in der **Studie** (ImagingStudy) zusätzlich durch die **Medikationsverordnung** (MedicationStatement) ergänzt.

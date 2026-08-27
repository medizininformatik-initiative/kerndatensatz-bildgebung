// MIGRATION STAND-IN (Gate A / ①-Queue, 2026-08-27): Die Beispielinstanzen des
// Moduls referenzieren durchgängig Patient/PatExample, die Quelle liefert aber
// keine Patient-Instanz — auf Simplifier blieb die Referenz einfach unaufgelöst,
// der HL7 IG Publisher 2.3.2 bricht dagegen beim Rendern des
// DiagnosticReport-Beispiels mit einer NPE ab (DiagnosticReportRenderer
// .populateSubjectSummary), wenn das Subject nicht auflösbar ist.
// Diese minimale synthetische Instanz macht die vorhandenen Referenzen
// auflösbar; Vorbild: Modul Onkologie (example-patient-1.fsh, Kim Musterperson).
// Rein synthetische Daten. Entscheidung bestätigen oder durch ein
// KDS-Person-konformes Beispiel ersetzen.
Instance: PatExample
InstanceOf: Patient
Usage: #example
Title: "Beispiel-Patient (synthetisch)"
Description: "Synthetischer Beispiel-Patient als Ziel der Patient/PatExample-Referenzen der Beispielinstanzen dieses Moduls. Kein Bestandteil der Spezifikation — dient ausschließlich der Auflösbarkeit der Beispiel-Referenzen im gerenderten Leitfaden."
* name.family = "Beispielpatientin"
* name.given = "Erika"
* gender = #female
* birthDate = "1970-01-01"

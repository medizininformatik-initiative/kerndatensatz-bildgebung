Hintergrund Umsetzung- Gruppe 2 Befund

Profilierung für DiagnosticReport und Observation angelegt. Aufbauend auf Vorarbeit in Artdecor.  

DiagnosticReport umfasst die komplette ImagingStudy incl. Voruntersuchungen, Metainformationen (Gruppe 1), Beobachtungen/ Resultate und Interpretation/ Beurteilung. 

Die Beobachtungen werden unter `DiagnosticReport.result`  ( Observation) abgebildet. 
Beobachtungs-typen: 
* Pathologisch - Boolean
* Lokalisation - Code
* Morphologie - String
* Ausdehnung - Quantity

Dabei wurden die folgenden Abbildungsmöglichkeiten diskutiert: 

Option 1:
- Beobachtungen als Observation.component
- Eine Observation kann in diesem Szenario bis zu 4 components enthalten (s.o.)
- Problem: nicht gut abfragbar, slicing für Ausdehnung nicht möglich, widerspricht konzept der obs 


Option 2 - preferred:
- Beobachtungen als eigene Observations, welche unter einer "parent Observation" liegen- diese hat bis zu 4 members (`Observation.hasMember`)
- Ausdehnung kann geslict werden- dadurch auch leichter abfragbar
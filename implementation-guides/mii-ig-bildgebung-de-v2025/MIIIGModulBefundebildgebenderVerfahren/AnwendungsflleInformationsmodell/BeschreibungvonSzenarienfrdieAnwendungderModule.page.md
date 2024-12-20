## Beschreibung von Szenarien für die Anwendung der Module

<!-- In diesem Abschnitt werden spezifische Anwendungsfälle und Beispiele für das Modul Bildgebung beschrieben.  -->


Konkrete Beispiele:

**Angabe und Dokumentation einer Bildgebung zur Diagnosestellung:**

Beispiel: Eine Patientin mit Verdacht auf Axiale Spondyloarthritis mit Morbus Bechterew kommt stationär zur Diagnoseevaluation. Hierbei wird eine native MRT zur Diagnosestellung durchgeführt.

Die MRT ist zur Frühdiagnostik geeignet, da entzündliche Veränderungen in den Sakroiliakalgelenken bereits sichtbar sind, wenn konventionelle Verfahren (Röntgen) noch unauffällig sind.

Für diese MRT-Aufnahme wird eine Serie vom Hüftbereich generiert. Die Aufnahmeparameter, die auch im DICOM-Header hinterlegt sind, werden auf die einzelnen FHIR Ressourcen gematcht und die Bildgebung somit dokumentiert (bspw. Study-Instance-UID, Series-Instance-UID, Modalität etc.).

Falls beispielsweise für Forschungszwecke angefragt wird, wie viele native Hüft-MRTs zur Diagnosestellung von Morbus Bechterew in diesem Krankenhaus durchgeführt wurden, kann dies durch die Implementierung in FHIR ohne viel Aufwand beantwortet werden.

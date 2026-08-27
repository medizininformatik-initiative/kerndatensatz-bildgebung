# Sicherheit und Datenschutz - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* **Sicherheit und Datenschutz**

## Sicherheit und Datenschutz

 Diese Seite enthält Übersetzungen aus der Originalsprache, in der der Leitfaden verfasst wurde. Informationen zu diesen Übersetzungen und Anweisungen zum Abgeben von Feedback zu den Übersetzungen finden Sie [hier](translationinfo.md). 

Dieser Abschnitt richtet sich an Sicherheits- und Datenschutz-Fachleute. Allgemeine Anforderungen stehen in der FHIR-Kernspezifikation — [Security & Privacy Module](https://build.fhir.org/secpriv-module.html) und die [Security-Checkliste](https://build.fhir.org/security.html). Diese Seite wiederholt sie nicht; sie verlinkt den übergreifenden Datenschutzrahmen und nennt, was **für dieses Modul spezifisch** ist.

#### 1. Das übergreifende Datenschutzkonzept

Das [übergreifende Datenschutzkonzept der Medizininformatik-Initiative](https://www.medizininformatik-initiative.de/de/datenschutzkonzept) regelt, wie Patientendaten über das Netz der Datenintegrationszentren hinweg für die Forschung verarbeitet werden dürfen: die Rechtsgrundlage (der Broad Consent der MII), die Rollen der Datenintegrationszentren und der Use-&-Access-Committees sowie die standortübergreifenden Anwendungsszenarien (Machbarkeitsanfragen, verteilte Analysen, Daten- und Bioproben-Bereitstellung). Alles, was dieses Modul spezifiziert, bewegt sich innerhalb dieses Rahmens — dieser Leitfaden fügt keinen eigenen Verarbeitungszweck hinzu.

#### 2. De-Identifikation, Minimierung und Pseudonymisierung (DIMP)

Wie Daten, die ein Datenintegrationszentrum verlassen, praktisch de-identifiziert werden, spezifiziert [DIMP (De-Identification — Minimisation — Pseudonymisation)](https://medizininformatik-initiative.github.io/dataportal/data-node/DIMP.html) in der Dokumentation des Datenportals: direkte Identifikatoren werden entfernt, vom genehmigten Projekt nicht benötigte Datenelemente entfallen, und identifizierende Werte werden durch projektspezifische Pseudonyme ersetzt (FHIR-Pseudonymizer-Konfiguration). Die Profile dieses Moduls beschreiben die Daten **vor** Anwendung von DIMP; welche Elemente eine konkrete Datenbereitstellung erreicht, entscheidet je Projekt die DIMP-Konfiguration, nicht dieser Leitfaden.

#### 3. Modul-spezifische Aspekte

Dies ist der eigene Beitrag des Moduls: die Sicherheits- und Datenschutz-Eigenschaften, die aus der **Art der Daten dieses Moduls** folgen. **Der Inhalt dieses Abschnitts ist optional** — nicht jedes Modul hat eigene Aspekte. Hat Ihres keine, besteht der gesamte Abschnitt aus dem folgenden Standardtext (löschen Sie die Beispiel- und TODO-Boxen unten und übernehmen Sie ihn wörtlich):

> Über den oben verlinkten übergreifenden Rahmen hinaus — das übergreifende Datenschutzkonzept, den ihm zugrunde liegenden Broad Consent und DIMP — führt dieses Modul keine Datenkategorie, die eigene Sicherheits- oder Datenschutzaspekte aufwirft, und stellt keine modulspezifischen Sicherheits- oder Datenschutzanforderungen an Implementierende.

> **Written during migration - review before release.** Die folgenden modulspezifischen Aspekte wurden aus den Artefakten des Moduls abgeleitet (Instanzdetails-Extension: `burnedInAnnotation`; DICOM-Metadaten in der ImagingStudy); sie standen nicht als Narrativ im Quell-Leitfaden.

Über den oben verlinkten übergreifenden Rahmen hinaus verdienen zwei Eigenschaften von Bildgebungsdaten bei der Implementierung dieses Moduls Beachtung:

* **Identifizierende DICOM-Metadaten.** Das ImagingStudy-Profil und seine Extensions übernehmen Werte direkt aus DICOM-Headern (UIDs, Gerätedaten, Aufnahmeparameter). DICOM-Header der Quellsysteme können direkt identifizierende Attribute enthalten; welche Elemente eine konkrete Datenausleitung überstehen, entscheidet die DIMP-Konfiguration.
* **Eingebrannte Annotationen (Burned-in Annotations).** Pixeldaten mancher Modalitäten (insbesondere US und Secondary Captures) können Patienteninformationen enthalten, die ins Bild selbst eingebrannt sind. Die Instanzdetails-Extension bildet genau dafür das DICOM-Attribut **Burned In Annotation** ab, damit solche Instanzen erkannt werden können; Systeme, die Bilddaten für die Sekundärnutzung bereitstellen, SOLLTEN dieses Attribut in ihren De-Identifikations-Pipelines auswerten.


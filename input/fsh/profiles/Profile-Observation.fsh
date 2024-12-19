//Head
Profile: MII_PR_Bildgebung_Radiologische_Beobachtung
Parent: Observation
Id: mii-pr-bildgebung-radiologische-beobachtung
Title: "MII PR Bildgebung Radiologische Beobachtung"
Description: "Dieses Profil beschreibt den Befund/eine Beobachtung in der radiologischer Bildgebung. Es bietet die Möglichkeit strukturiert Beobachtungen abzubilden und den Befundbericht zu ergänzen."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-radiologische-beobachtung"
//Translation Meta
* insert Translation(^name, en-US, MII_PR_Imaging_Radiological_Observation)
* insert Translation(^title, en-US, MII PR Imaging Radiological Observation)
* insert Translation(^description, en-US, The profile describes a observation for radiological images.)
//Meta
* insert PR_CS_VS_Version
* insert PR_CS_VS_Date
* insert Publisher
* insert LicenseCodeableCCBY40
* id MS
* meta MS
* meta.source MS
* meta.profile MS
//Profile
* extension contains
  MII_EX_Bildgebung_Serie_UID named SeriesUID 0..1 and
  MII_EX_Bildgebung_SOP_Instanz_UID named SOPInstanzUID 0..1 and
  http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.bodyStructure named bodyStructure 0..* MS
* extension[bodyStructure].valueReference only Reference(MII_PR_Bildgebung_Koerperstruktur)
* extension[SeriesUID] ^short = "Serien UID"
* extension[SeriesUID] ^definition = "UID einer DICOM-Serie"
* extension[SOPInstanzUID] ^short = "SOP Instanz UID"
* extension[SOPInstanzUID] ^definition = "UID einer SOP Instanz"
* extension[bodyStructure] ^short = "Körperstruktur"
* extension[bodyStructure] ^definition = "Referenz auf eine Körperstruktur"
* partOf MS
* partOf only Reference (MII_PR_Bildgebung_Radiologische_Befundungsprozedur)
* partOf ^short = "Teil von"
* partOf ^definition = "Teil einer Befundungprozedur"
* status MS
* status ^short = "Status"
* status ^definition = "angemeldet | vorläufig | endgültig | geändert | korrigiert | abgebrochen | fehlerhafte Eingabe | unbekannt"
* category MS
* category ^short = "Kategorie"
* category ^definition = "Klassifikation in diagnostischen Fachbereich und Gruppe"
* code MS
* code ^short = "Code"
* code ^definition = "Ein Code für die zu befundende Beoabchtung"
* subject 1..1 MS
* subject only Reference(Patient)
* subject ^short = "Person"
* subject ^definition = "Person, auf die sich die Beobachtung bezieht"
* issued MS
* issued ^short = "Dokumentationsdatum"
* issued ^definition = "Zeitpunkt, an dem das Ergebnis der Laboruntersuchung dokumentiert wurde"
* value[x] MS
* value[x] ^short = "Messwert"
* value[x] ^definition = "Wert der Analyse"
* bodySite MS
* bodySite ^short = "Anatomie"
* bodySite ^definition = "betrachtete Anatomie der Beobachtung"
* hasMember MS
* hasMember only Reference(Observation)
* hasMember ^short = "weitere Beobachtungen"
* hasMember ^definition = "Referenzierung weiterer Beobachtungen"
* derivedFrom MS
* derivedFrom ^short = "abgeleitet"
* derivedFrom ^definition = "Abgeleitet von ImagingStudy, ect."
* component MS
* component ^short = "Bestandteile"
* component ^definition = "detailierte Bestandteile der Beobachtung"

//Translation Profile
* insert Translation(extension[SeriesUID] ^short, de-DE, Serien UID)
* insert Translation(extension[SeriesUID] ^short, en-US, Series UID)
* insert Translation(extension[SeriesUID] ^definition, de-DE, UID einer DICOM-Serie)
* insert Translation(extension[SeriesUID] ^definition, en-US, UID of a series)
* insert Translation(extension[SOPInstanzUID] ^short, de-DE, SOP Instanz UID)
* insert Translation(extension[SOPInstanzUID] ^short, en-US, SOP Instance UID)
* insert Translation(extension[SOPInstanzUID] ^definition, de-DE, UID einer SOP Instanz)
* insert Translation(extension[SOPInstanzUID] ^definition, en-US, UID of a SOP instance)
* insert Translation(extension[bodyStructure] ^short, de-DE, Körperstruktur)
* insert Translation(extension[bodyStructure] ^short, en-US, body structure)
* insert Translation(extension[bodyStructure] ^definition, de-DE, Referenz auf eine Körperstruktur)
* insert Translation(extension[bodyStructure] ^definition, en-US, reference on a body structure)
* insert Translation(partOf ^short, de-DE, Teil von)
* insert Translation(partOf ^short, en-US, part of)
* insert Translation(partOf ^definition, de-DE, Teil einer Befundungprozedur)
* insert Translation(partOf ^definition, en-US, part of a read procedure)
* insert Translation(status ^short, de-DE, Status)
* insert Translation(status ^short, en-US, status)
* insert Translation(status ^definition, de-DE, angemeldet | vorläufig | endgültig | geändert | korrigiert | abgebrochen | fehlerhafte Eingabe | unbekannt)
* insert Translation(status ^definition, en-US, registered | preliminary | final | amended | corrected | cancelled | entered-in-error | unknown)
* insert Translation(category ^short, de-DE, Kategorie)
* insert Translation(category ^short, en-US, Category)
* insert Translation(category ^definition, de-DE, Klassifikation in diagnostischen Fachbereich und Gruppe)
* insert Translation(category ^definition, en-US, Classification of the diagnostic service section)
* insert Translation(code ^short, de-DE, Code)
* insert Translation(code ^short, en-US, Code)
* insert Translation(code ^definition, de-DE, Ein Code für die zu befundende Beoabchtung)
* insert Translation(code ^definition, en-US, A code identifying the inspected observation)
* insert Translation(subject ^short, de-DE, Person)
* insert Translation(subject ^short, en-US, person)
* insert Translation(subject ^definition, de-DE, Person\, auf die sich die Beobachtung bezieht)
* insert Translation(subject ^definition, en-US, person\, which this observation is about)
* insert Translation(issued ^short, de-DE, Dokumentationsdatum)
* insert Translation(issued ^short, en-US, Issued)
* insert Translation(issued ^definition, de-DE, Zeitpunkt\, an dem das Ergebnis der Laboruntersuchung dokumentiert wurde)
* insert Translation(issued ^definition, en-US, The point in time when the laboratory result was documented)
* insert Translation(value[x] ^short, de-DE, Messwert)
* insert Translation(value[x] ^short, en-US, Value)
* insert Translation(value[x] ^definition, de-DE, Wert der Analyse)
* insert Translation(value[x] ^definition, en-US, Value of the analysis)
* insert Translation(bodySite ^short, de-DE, Anatomie)
* insert Translation(bodySite ^short, en-US, body site)
* insert Translation(bodySite ^definition, de-DE, betrachtete Anatomie der Beobachtung)
* insert Translation(bodySite ^definition, en-US, inspected body site in this observation)
* insert Translation(hasMember ^short, de-DE, weitere Beobachtungen)
* insert Translation(hasMember ^short, en-US, additional observation)
* insert Translation(hasMember ^definition, de-DE, Referenzierung weiterer Beobachtungen)
* insert Translation(hasMember ^definition, en-US, reference on additional observations)
* insert Translation(derivedFrom ^short, de-DE, abgeleitet)
* insert Translation(derivedFrom ^short, en-US, derived from)
* insert Translation(derivedFrom ^definition, de-DE, Abgeleitet von ImagingStudy\, ect.)
* insert Translation(derivedFrom ^definition, en-US, derived from an imagingStud\, etc.)
* insert Translation(component ^short, de-DE, Bestandteile)
* insert Translation(component ^short, en-US, components)
* insert Translation(component ^definition, de-DE, detailierte Bestandteile der Beobachtung)
* insert Translation(component ^definition, en-US, detailed components of this observation)

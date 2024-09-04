# Medizininformatik-Initiative - Kerndatensatz - Modul Diagnostik: Befunde bildgebender Verfahren 

## Übersicht

[![FHIR Project on GitHub.com](https://img.shields.io/badge/FHIR_project_on_GitHub.com-kerndatensatzmodul--bildgebung-green)](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung)

[![CI (FHIR Validation)](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/actions/workflows/main.yml/badge.svg)](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/actions/workflows/main.yml)

Das vorliegende Projekt beschreibt die FHIR-Spezifikation des Erweiterungsmoduls 'Diagnostik: Befunde bildgebender Verfahren', welches einen zentralen Teil des Kerndatensatzes der Medizininformatik-Initiative darstellt. Die hier veröffentlichten FHIR-Profile und ImplemenationGuides dienen als zentrale und verbindliche Spezifikation für die syntaktische und semantische Kodierung der Modulinhalte

## Status

Aktuelle Kommentireungsversion: [2025.0.0-ballot](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.bildgebung/2025.0.0-ballot)

Alle veröffentlichen FHIR-Artefakte innerhalb des Projektes verfügen über einen Status durch welchen der jeweilige Reifegrad abgeleitet werden kann. Profile mit dem Status 'Draft' wurden noch nicht ballotiert und können noch diversen und substantiellen Änderungen unterliegen. Verpflichtende und ballotierte Ergebnisse sind unter dem Tab 'Packages' zu finden.

## Mitwirkungs- und Kommentierungsmöglichkeiten

* Kommentareinreichung via [GitHub](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/issues)
* Diskussionsforum im int. [FHIR-Chat](https://chat.fhir.org/#narrow/stream/179307-german.2Fmi-initiative)
* Teilnahme am [Interoperabilitätsforum](https://wiki.hl7.de/index.php?title=Interoperabilit%C3%A4tsforum)

## Zusammenfassung

Das Erweiterungsmodul Bildgebung umfasst sowohl ein Teilmodul zum _radiologischen_ **Befund** (z.B. Indikation, Beurteilung, Auffälligkeiten, Aufnahmequalität etc.) als auch ein Teilmodul zu den **Imaging-Metadaten**, welche im DICOM-Header enthalten sind (z.B. technische Parameter, Studiendetails, Modalitäten, Körperregionen und -seiten etc.).

### Teilmodul Befundtext
Das Teilmodul zum Befund berücksichtigt zwei Sichtweisen, deren gemeinsames Element die Entität Befundbericht ist: 
1.	bereits hochstrukturierte Reports und deren Ergebnisse können über die generische Beobachtung abgebildet werden, 
2.	un- bzw. semistrukturierte Befunde (i.e. historische Freitext-Befunde) können über die Entitäten semistrukturierter Befundbericht und Befundabschnitt abgebildet werden. Hier ist es zusätzlich möglich, einzelne strukturierte Beobachtungen auch als generische _Observations_ abzubilden.

Dieses Konzept ermöglicht einerseits der Abbildung und Einschließung der bereits vorliegenden retrospektiven historischen Befunde (i.S.v. „backward compatibility“) der Standorte, andererseits bietet dies die Möglichkeit für die Berücksichtigung der neuen hochstrukturierten Befundtemplates von 
Tools aus der Industrie (i.S.v. „foward compatibility“).

### Teilmodul Imaging Metadaten 
Die hier vorliegende Spezifikation des Informationsmodells bezieht sich auf die Metadaten. Dafür wurde sich an der FHIR Ressource „ImagingStudy“ aus der [FHIR-Kernspezifikation](https://hl7.org/fhir/R4/imagingstudy.html) orientiert und überlegt, welche Elemente für die MII relevant sind und welche zusätzlichen Attribute der DICOM-Header abgebildet werden sollen.  

Zur Modellierung wurde das Teilmodul „Metadaten“ analog zu der Hierarchie im DICOM-Standard und in der Imaging Study in drei Teilmodule strukturiert:
- Studienebene
- Serienebene
- Instanzebene 

Zusätzlich gibt es modalitätsspezifische Metadaten, die sich je nach vorliegender Modalität unterscheiden. Im Moment werden die Modalitäten MR, CT, DX, CR, MG, NM und PET betrachtet und es ist geplant, in einem stufenweisen Verfahren, in Zukunft auch weitere modalitätsspezifische Attribute anderer Modalitäten zu spezifizieren.

### Updates 
2024.01.16 - Restrukturierung und Verschönerung des UML Diagramms von Lucas Scherer (UKER).

2024.02.06 - UML-Anpassung an die Guidelines des EU Health Data Space (AG Befundtext).

2024.04.19 - Finale Überarbeitung UML für NSG-Beschlussvorlage

2024.08.23 - Finale Überarbeitung der FHIR-Implementierung und des Implementation Guides für die 1. Ballotierungsphase

## Wichtige Dokumente und Links

* [Beschreibung des MII-Kerndatensatzes in der Version 1.0 vom 10.3.2017 (PDF)](https://www.medizininformatik-initiative.de/sites/default/files/inline-files/MII_04_Kerndatensatz_1-0.pdf)
* [Datenmodellbeschreibung des MII-Kerndatensatzes in ART-DECOR](https://art-decor.org/ad/#/mide-/datasets/dataset/2.16.840.1.113883.3.1937.777.24.1.1/2018-06-05T12:44:12/concept/2.16.840.1.113883.3.1937.777.24.2.2795/2023-11-14T08:32:26)
* [GitHub Repository](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung)

## Autoren und Ansprechpartner

### Leitung des Moduls:

* Máté Maros, Universitätsmedizin Mannheim

### Technische Umsetzung:

* Steven Böhner (Technische Umsetzung FHIR Profile, Implementation Guides)
* Viola Braunmüller (Technische Umsetzung FHIR Profile, Implementation Guides)
* Noemi Deppenwiese (Technische Umsetzung FHIR Profile, Implementation Guides)
* Alexa Iancu (Technische Umsetzung FHIR Profile, Implementation Guide, Logical Models)
* Johannes Kast (Technische Umsetzung FHIR Profile)
* Lucas Scherer (Technische Umsetzung FHIR Profile, Implementation Guides)
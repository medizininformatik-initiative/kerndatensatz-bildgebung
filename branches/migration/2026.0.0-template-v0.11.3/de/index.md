# Startseite - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* **Startseite**

## Startseite

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/ImplementationGuide/mii-ig-bildgebung | *Version*:2027.0.0-ballot |
| Active Stand: 2026-08-27 | *Maschinenlesbarer Name*:MII_IG_Bildgebung |

### Einführung

Die vorliegende Spezifikation beschreibt die FHIR-Repräsentation des Kerndatensatzmoduls **Bildgebung** der Medizininformatik-Initiative (MII). Im Folgenden werden die Use Cases des Moduls sowie die dazugehörigen FHIR-Profile, Extensions und Terminologie-Ressourcen in ihrer verbindlichen Form beschrieben. Der MII-Kerndatensatz ermöglicht die standardisierte Sekundärnutzung klinischer Routinedaten für die medizinische Forschung.

| | |
| :--- | :--- |
| Datum | 01.09.2026 |
| Version | 2027.0.0-ballot (CalVer`YYYY.n.n`) |
| Status | active |
| Realm | DE |

### Beschreibung des Moduls

Das Kerndatensatzmodul **Bildgebung** enthält Datenelemente zur Dokumentation radiologischer Bildgebung und Befundung aller gängigen Modalitäten. Es ist Bestandteil des Kerndatensatzes (KDS) der Medizininformatik-Initiative (MII).

Die medizinische Bildgebung spielt eine zentrale Rolle in der klinischen Praxis bei der Diagnose, Therapie und Dokumentation verschiedener Krankheiten und wird voraussichtlich noch wichtiger werden. Es existiert ein stetig wachsendes Volumen an klinischen Bilddaten in den Krankenhäusern. Diese Daten sind entscheidend für eine patientenzentrierte und individualisierte Gesundheitsversorgung und fördern die Entwicklung neuer Auswertungsmethoden zur Optimierung des Behandlungsstandards. Die sekundäre Nutzung dieser Daten bietet massive Potentiale, die durch dieses Modul des KDS in der MII zukünftig abgebildet werden können.

#### Teilmodule

Grob lässt sich das gesamte Kerndatensatzmodul **Bildgebung** in zwei Teilmodule aufteilen: die ImagingStudy mit Informationen aus dem DICOM-Header und die Abbildung des radiologischen Befundberichts über den DiagnosticReport. Beide Teilmodule ergänzen sich in der Abbildung ihrer Datenelemente und wurden kongruent aufeinander abgestimmt. Um einen Gesamtüberblick über die vorliegende Datenlage zu bekommen, ist die Nutzung beider Teilmodule erforderlich. Theoretisch ist es aber auch möglich, die Teilmodule getrennt voneinander zu implementieren, falls am gegebenen Standort bisher nur eine Datenquelle (z.B. RIS) erschlossen wurde.

##### Teilmodul „Metadaten"

Zur Modellierung wurde die ImagingStudy analog in drei Teilmodule strukturiert:

1. Studienebene
1. Serienebene
1. Instanzebene

Dafür wurde sich an der internationalen FHIR-Ressource [ImagingStudy](https://hl7.org/fhir/R4/imagingstudy.html) orientiert und überlegt, welche Elemente für die Medizininformatik-Initiative relevant sind. Es wurde außerdem diskutiert, welche weiteren DICOM-Metadaten von Interesse sind, die im Profil abgebildet werden sollen.

Ergänzt wurden vorrangig modalitätsspezifische Attribute auf Serien-Ebene. Diese sollen dazu beitragen, einen tieferen technischen Einblick in die jeweilige genutzte Modalität zu erlangen.

* Bei den röntgenbasierten Modalitäten (DX, CT, MG, CR) werden die Werte der Röntgenröhrenspannung und des Röntgenröhrenstroms betrachtet sowie die Werte der Exposition und der Expositionszeit und der Blickposition.
* Die nuklearmedizinischen Modalitäten (NM und PT) beinhalten Dosis und weitere Informationen zum applizierten Radiopharmakon, Radionuklid und Tracer.
* Bei der Modalität MR werden die Scanning Sequence und Variant sowie die genutzte magnetische Feldstärke und die Zeitintervalle TE, TR und TI abgebildet.
* Beim Ultraschall (US) werden der genutzte Schallkopftyp, die Schallkopffrequenz, die Impulsfolgefrequenz und die Ultraschallfarbe betrachtet.

Im Moment werden diese acht Modalitäten (MR, CT, DX, CR, MG, US, NM und PT) im Teilmodul abgebildet, welche den Großteil des radiologischen Klinikalltags abdecken. In Zukunft ist geplant, auch noch weitere Modalitäten auszuspezifizieren.

Die Originalnamen der Elemente aus dem FHIR Profil wurden ins Deutsche übersetzt und ggf. zur besseren Lesbarkeit angepasst. Die Instanzebene sowie auch die Serienebene sind komplett optional, sodass auch nur die Attribute auf Studienebene befüllt werden können. Allerdings wird empfohlen, wenn möglich, auch die beiden unteren Ebenen zu befüllen, um ein umfassendes Bild der abgebildeten Bildgebungsstudien zu erhalten.

##### Teilmodul „Befundbericht"

Das Teilmodul zum Befund berücksichtigt zwei Perspektiven, deren gemeinsames Element der Befundbericht ist:

1. Hochstrukturierte Berichte und deren Ergebnisse können durch eine generische Beobachtung dargestellt werden.
1. Un- oder semistrukturierte Befunde (z. B. historische Freitext-Befunde) lassen sich über die Entitäten semistrukturierter Befundbericht und Befundabschnitt darstellen. Hierbei ist es auch möglich, einzelne strukturierte Beobachtungen als generische Observations abzubilden.

Dieses Konzept ermöglicht sowohl die Integration und Berücksichtigung bereits vorhandener historischer Befunde (Rückwärtskompatibilität) als auch die Nutzung neuer hochstrukturierter Befundvorlagen aus der Industrie (Vorwärtskompatibilität).

In der ersten Version des Kerndatensatzmoduls gibt es noch keine festgelegten Vorgaben zur Darstellung einzelner strukturierter Befundwerte. Dafür ist eine generische Beobachtung definiert, die als Grundlage dient, um in zukünftigen Iterationen anhand fachlicher Vorgaben (z. B. aus Use Cases, DRG-Templates) Profile für strukturierte Befundwerte zu entwickeln.

Das zentrale Element des Teilmoduls ist der Befundbericht. Dieser bildet den Rahmen für die Informationen des Befundes, die entweder als semistrukturiertes Dokument (in Abschnitte gegliederter Freitext), als strukturierte Beobachtung oder als Kombination aus beidem abgebildet werden können. Die Modellierung einer Körperstruktur (z. B. ein beobachteter Tumor) erlaubt die direkte Beobachtung eines Verlaufs (z. B. Wachstum eines Tumors).

Wenn die Befundung einem vorgegebenen Algorithmus folgt, kann dies als Befundungsprozedur angegeben werden. Jeder Befund enthält eine Referenz auf die zugrunde liegenden Bilder, die als Studie dargestellt werden (vgl. Teilmodul „Metadaten").

### Zielgruppen

##### Implementierende

Datenintegrationszentren (DIZ), Software-Entwickler:innen und System-Architekt:innen, die FHIR-basierte Lösungen umsetzen.
 → siehe [Profile](profiles.md) und [Logische Modelle](logical-models.md).

##### Forschende

Wissenschaftler:innen, die KDS-Daten für die medizinische Forschung nutzen.
 → siehe [Guidance](guidance.md).

### Inhalte

* **[Guidance](guidance.md)** — Einstieg und fachliche Hinweise.
* **Conformance** — die KDS-weiten Konformitätsregeln (Anforderungssprache, Must Support, Umgang mit fehlenden Daten) werden zentral vom [Meta-Modul](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Conformance) gepflegt; die modulspezifischen Aspekte zu [Sicherheit und Datenschutz](security-and-privacy.md) sind Teil dieses Leitfadens.
* **[Profile](profiles.md)** und die weiteren **[Artefakt-Seiten](artifacts.md)** — die technischen Artefakte.
* **[Beispiele](examples.md)** — Beispielinstanzen.
* **[Abhängigkeiten](ImplementationGuide-mii-ig-bildgebung.md)** — die ImplementationGuide-Ressource mit Abhängigkeitstabelle, Cross-Version-Analyse und Copyright-Angaben.

### Verwandte Leitfäden

Der MII-Kerndatensatz besteht aus mehreren Modulen; das [Meta-Modul](https://www.medizininformatik-initiative.de/fhir/fdpg/ImplementationGuide/mii-ig-meta) hält die modulübergreifenden Artefakte. Die Basismodule (Person, Fall, Diagnose, Prozedur, Laborbefund, Medikation, Consent) werden von diesem Modul referenziert — siehe die unter [Hinweise für Implementierende](implementer-guidance.md) beschriebenen Bezüge.

### Impressum

Dieser Leitfaden ist im Rahmen der Medizininformatik-Initiative erstellt worden und unterliegt per Governance-Prozess dem Abstimmungsverfahren des Interoperabilitätsforums und der Technischen Komitees von HL7 Deutschland e. V.

### Ansprechpartner

* Alexa Iancu, Universitätsklinikum Erlangen (UKER)
* Karoline Buckow, TMF – Technologie- und Methodenplattform für die vernetzte medizinische Forschung e.V.
* Franziska Klepka, TMF – Technologie- und Methodenplattform für die vernetzte medizinische Forschung e.V.

Fragen zu der vorliegenden Publikation können jederzeit unter [chat.fhir.org](https://chat.fhir.org/) im Stream 'german/mi-initiative' gestellt werden.

Anmerkungen und Kritik werden in Form von 'Issues' auf [GitHub](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/issues) gern entgegengenommen.

### Autoren (in alphabetischer Reihenfolge)

* Sebastian Arndt (Universitätsklinikum Erlangen)
* Steven Böhner (Universitätsklinikum Regensburg)
* Viola Braunmüller (Universitätsklinikum Tübingen)
* Noemi Deppenwiese (Universitätsklinikum Erlangen)
* Teresa Graetz (Universitätsklinikum Erlangen)
* Alexa Iancu (Universitätsklinikum Erlangen)
* Johannes Kast (Mint Medical GmbH)
* David Männle (Universitätsmedizin Mannheim)
* Máté Maros (Universitätsmedizin Mannheim)
* Matthias May (Universitätsklinikum Erlangen)
* Daniel Pinto dos Santos (Universitätsklinikum Köln, Universitätsklinikum Frankfurt)
* Tobias Pogarell (Universitätsklinikum Erlangen)
* Lucas Mundo (Universitätsklinikum Erlangen)
* Fabian Schinzler (Universitätsklinikum Würzburg)
* Daniel Schmitz (Universitätsmedizin Mainz)
* Friederike Schneider (Mint Medical GmbH)
* Damian Wrobel (Mint Medical GmbH)

### Copyright-Hinweis, Nutzungshinweise

© 2019+ TMF e. V., Charlottenstraße 42, 10117 Berlin. Dieses Werk ist lizenziert unter der [Creative Commons Namensnennung 4.0 International Lizenz (CC-BY-4.0)](https://creativecommons.org/licenses/by/4.0/).

Zu den Nutzungsrechten der zugrunde liegenden FHIR-Technologie siehe die FHIR-Basis-Spezifikation.

Einige verwendete Codesysteme werden von anderen Organisationen herausgegeben und gepflegt. Es gilt das Copyright der dort jeweils aufgeführten Herausgeber (Publisher).

### Disclaimer

Der Inhalt dieses Dokuments ist öffentlich. Zu beachten ist, dass Teile dieses Dokuments auf FHIR Version R4 beruhen, für die das Copyright von HL7 International gilt.

Obwohl diese Publikation mit größter Sorgfalt erstellt wurde, können die Autoren keinerlei Haftung für direkten oder indirekten Schaden übernehmen, der durch den Inhalt dieser Spezifikation entstehen könnte.


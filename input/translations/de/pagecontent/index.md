Die vorliegende Spezifikation beschreibt die FHIR-Repräsentation des Kerndatensatzmoduls **Bildgebung** der Medizininformatik-Initiative (MII).
Im Folgenden werden die Use Cases des Moduls sowie die dazugehörigen FHIR-Profile und Terminologie-Ressourcen in ihrer verbindlichen Form beschrieben.

| Veröffentlichung |            |
| ---------------- | ---------- |
| Datum            | 17.07.2026 |
| Version          | 2026.2.0   |
| Status           | Active     |
| Realm            | DE         |

### Über dieses Modul

Das Kerndatensatzmodul **Bildgebung** enthält Datenelemente zur Dokumentation radiologischer Bildgebung und Befundung aller gängigen Modalitäten. Es ist Bestandteil des Kerndatensatzes (KDS) der Medizininformatik-Initiative (MII).

Die medizinische Bildgebung spielt eine zentrale Rolle in der klinischen Praxis bei der Diagnose, Therapie und Dokumentation verschiedener Krankheiten und wird voraussichtlich noch wichtiger werden. Es existiert ein stetig wachsendes Volumen an klinischen Bilddaten in den Krankenhäusern. Diese Daten sind entscheidend für eine patientenzentrierte und individualisierte Gesundheitsversorgung und fördern die Entwicklung neuer Auswertungsmethoden zur Optimierung des Behandlungsstandards. Die sekundäre Nutzung dieser Daten bietet massive Potentiale, die durch dieses Modul des KDS in der MII zukünftig abgebildet werden können.

### Impressum

Dieser Leitfaden ist im Rahmen der Medizininformatik-Initiative erstellt worden und unterliegt per Governance-Prozess dem Abstimmungsverfahren des Interoperabilitätsforums und der Technischen Komitees von HL7 Deutschland e. V.

### Ansprechpartner

- Alexa Iancu, Universitätsklinikum Erlangen (UKER)
- Karoline Buckow, TMF – Technologie- und Methodenplattform für die vernetzte medizinische Forschung e.V.
- Franziska Klepka, TMF – Technologie- und Methodenplattform für die vernetzte medizinische Forschung e.V.

Fragen zu der vorliegenden Publikation können jederzeit unter [chat.fhir.org](https://chat.fhir.org/) im Stream 'german/mi-initiative' gestellt werden.

Anmerkungen und Kritik werden in Form von 'Issues' auf [GitHub](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/issues) gern entgegengenommen.

### Autoren (in alphabetischer Reihenfolge)

- Sebastian Arndt (Universitätsklinikum Erlangen)
- Steven Böhner (Universitätsklinikum Regensburg)
- Viola Braunmüller (Universitätsklinikum Tübingen)
- Noemi Deppenwiese (Universitätsklinikum Erlangen)
- Teresa Graetz (Universitätsklinikum Erlangen)
- Alexa Iancu (Universitätsklinikum Erlangen)
- Johannes Kast (Mint Medical GmbH)
- David Männle (Universitätsmedizin Mannheim)
- Máté Maros (Universitätsmedizin Mannheim)
- Matthias May (Universitätsklinikum Erlangen)
- Daniel Pinto dos Santos (Universitätsklinikum Köln, Universitätsklinikum Frankfurt)
- Tobias Pogarell (Universitätsklinikum Erlangen)
- Lucas Mundo (Universitätsklinikum Erlangen)
- Daniel Schmitz (Universitätsmedizin Mainz)
- Friederike Schneider (Mint Medical GmbH)
- Damian Wrobel (Mint Medical GmbH)

### Copyright-Hinweis, Nutzungshinweise

© 2019+ TMF e. V., Charlottenstraße 42, 10117 Berlin.

Dieses Werk ist lizenziert unter der [Creative Commons Namensnennung 4.0 International Lizenz](https://creativecommons.org/licenses/by/4.0/).

[![CC BY 4.0 Logo](https://licensebuttons.net/l/by/4.0/88x31.png)](https://creativecommons.org/licenses/by/4.0/)

Zu den Nutzungsrechten der zugrunde liegenden FHIR-Technologie siehe die FHIR-Basis-Spezifikation.

Einige verwendete Codesysteme werden von anderen Organisationen herausgegeben und gepflegt. Es gilt das Copyright der dort jeweils aufgeführten Herausgeber (Publisher).

### Disclaimer

- Der Inhalt dieses Dokuments ist öffentlich. Zu beachten ist, dass Teile dieses Dokuments auf FHIR Version R4 beruhen, für die das Copyright von HL7 International gilt.

- Obwohl diese Publikation mit größter Sorgfalt erstellt wurde, können die Autoren keinerlei Haftung für direkten oder indirekten Schaden übernehmen, der durch den Inhalt dieser Spezifikation entstehen könnte.

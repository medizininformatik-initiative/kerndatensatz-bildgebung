---
parent:
---
### UML
Als abstraktere Version eines Informationsmodells und zur besseren Verdeutlichung von Beziehungen der fachlichen Konzepte untereinander wurde aufbauend auf den Spezifikationen in ART-DECOR ein UML-Klassendiagramm erstellt. In ART-DECOR als Gruppen abgebildete Konzepte werden als eigene Klassen modelliert, die hier Assoziationsbeziehungen zueinander haben. Dieses logische Modell dient nur zur Abbildung der Datenelemente und deren Beschreibungen. Verwendete Datentypen und Kardinalitäten sind nicht als verpflichtend anzusehen. Dies wird abschließend durch die FHIR Profile festgelegt. Die Zuordnung der FHIR-Elemente zur ART-DECOR-Spezifikation wird im Kommentar-Feld im ART-DECOR beschrieben. Es wurde bewusst eine möglichst generische Abbildung der radiologischen Befundung gewählt, um hier ein breites Spektrum von Befundungsrichtlinien und -Templates abbilden zu können. Im weiteren Verlauf dieser Seite, werden weitere UML-Diagramme zur besseren Verständlichkeit präsentiert.

Zur besseren Lesbarkeit findet sich das UML [hier](https://simplifier.net/medizininformatik-initiative-modul-bildgebung/guides-implementationguide-common-images-uml-modul-bildgebung)

{{render:implementation-guides/ImplementationGuide-Common/images/UML_Modul_Bildgebung.png}}

Zur besseren Übersicht ist hier zusätzlich noch die abstrakte Darstellung des Moduls Bildgebung dargestellt:
 
{{render:implementation-guides/ImplementationGuide-Common/images/UML_Modul_Bildgebung_Simple.png}}

Die Darstellung des Befunds ist im vollständigen UML möglichst generisch abgebildet, wobei er zur Implementierung verschiedene Ansätze gibt. Im Anschluss sollen die verschiedenen Varianten detailiert aufgeführt werden:

Variante 1: vollstrukturuerte Befunde

{{render:implementation-guides/ImplementationGuide-Common/images/UML_Befund_strukturiert.png}}

Variante 2: semistrukturierte Befunde

{{render:implementation-guides/ImplementationGuide-Common/images/UML_Befund_semistrukturiert.png}}

Variante 3: Freitextbefunde

{{render:implementation-guides/ImplementationGuide-Common/images/UML_Befund_freitext.png}}

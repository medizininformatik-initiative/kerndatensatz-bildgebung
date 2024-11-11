---
parent:
---
## UML
Als abstraktere Version eines Informationsmodells und zur besseren Verdeutlichung von Beziehungen der fachlichen Konzepte untereinander wurde aufbauend auf den Spezifikationen in ART-DECOR ein UML-Klassendiagramm erstellt. In ART-DECOR als Gruppen abgebildete Konzepte werden als eigene Klassen modelliert, die hier Assoziationsbeziehungen zueinander haben. Dieses logische Modell dient nur zur Abbildung der Datenelemente und deren Beschreibungen. Verwendete Datentypen und Kardinalitäten sind nicht als verpflichtend anzusehen. Dies wird abschließend durch die FHIR Profile festgelegt. Die Zuordnung der FHIR-Elemente zur ART-DECOR-Spezifikation wird im Kommentar-Feld im ART-DECOR beschrieben. Es wurde bewusst eine möglichst generische Abbildung der radiologischen Befundung gewählt, um hier ein breites Spektrum von Befundungsrichtlinien und -Templates abbilden zu können. Damit die Struktur leichter nachvollzogen werden kann, gibt es zusätzlich zum vollständigen UML noch zwei Seiten, die die Teile Metadaten und Befund gesondert betrachten.

Zur besseren Lesbarkeit des vollständigen UML, findet dieses sich nochmal [hier](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/blob/release/v2025/implementation-guides/ImplementationGuide-Common/images/UML_Modul_Bildgebung.svg). Aus Übersichtlichkeitsgründen wurden die Referenzen auf die "Patient"-Ressource nur von den zentralen Profilen aus modelliert. Ausschluss über weitere Referenzen darauf, geben die Texte innerhalb der Profile sowie die dazugehörigen FHIR-Profile.

{{render:implementation-guides/ImplementationGuide-Common/images/UML_Modul_Bildgebung.png}}


Die abstrakte Darstellung des UMLs zeigt das UML rein auf Klassenebene mit dem Fokus auf die Assoziationsbeziehungen im Modul:
 
{{render:implementation-guides/ImplementationGuide-Common/images/UML_Modul_Bildgebung_Simple.png}}

Als abstraktere Version eines Informationsmodells und zur besseren Verdeutlichung von Beziehungen der fachlichen Konzepte untereinander wurde aufbauend auf den Spezifikationen in ART-DECOR ein UML-Klassendiagramm erstellt. In ART-DECOR als Gruppen abgebildete Konzepte werden als eigene Klassen modelliert, die hier Assoziationsbeziehungen zueinander haben. Dieses logische Modell dient nur zur Abbildung der Datenelemente und deren Beschreibungen. Verwendete Datentypen und Kardinalitäten sind nicht als verpflichtend anzusehen. Dies wird abschließend durch die FHIR Profile festgelegt. Die Zuordnung der FHIR-Elemente zur ART-DECOR-Spezifikation wird im Kommentar-Feld im ART-DECOR beschrieben. Es wurde bewusst eine möglichst generische Abbildung der radiologischen Befundung gewählt, um hier ein breites Spektrum von Befundungsrichtlinien und -Templates abbilden zu können. Damit die Struktur leichter nachvollzogen werden kann, gibt es zusätzlich zum vollständigen UML noch zwei Seiten, die die Teile Metadaten und Befund gesondert betrachten.

Zur besseren Lesbarkeit des vollständigen UML, findet dieses sich nochmal [hier](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/blob/main/implementation-guides/ImplementationGuide-Common/images/UML_Modul_Bildgebung.svg). Aus Übersichtlichkeitsgründen wurden die Referenzen auf die "Patient"-Ressource nur von den zentralen Profilen aus modelliert. Aufschluss über weitere Referenzen darauf, geben die Texte innerhalb der Profile sowie die dazugehörigen FHIR-Profile.

![UML Modul Bildgebung](uml-modul-bildgebung.png)

Die abstrakte Darstellung des UMLs zeigt das UML rein auf Klassenebene mit dem Fokus auf die Assoziationsbeziehungen im Modul:

![UML Modul Bildgebung (vereinfacht)](uml-modul-bildgebung-simple.png)

## UML Metadaten

Damit das Modul mit seinen zwei Abschnitten übersichtlicher und verständlicher bleibt, wird hier das vollständige UML nochmal unterteilt in die Abschnitte Metadaten und Befunde. In diesem Abschnitt hier wird auf das Thema Metadaten eingegangen.

Hier geht es hauptsächlich um die Erfassung der DICOM-Metadaten, die in einer FHIR ImagingStudy dargestellt werden. Ergänzt wird sie durch modalitätsspezifische Erweiterungen, die zusätzlich relevante Daten erfassen.

![UML Metadaten](uml-metadaten.png)

## UML Befund

Damit das Modul mit seinen zwei Abschnitten übersichtlicher und verständlicher bleibt, wird hier das vollständige UML nochmal unterteilt in die Abschnitte Metadaten und Befunde. In diesem Abschnitt hier wird auf das Thema Befund eingegangen.

Der Abschnitt Befund kann, je nach Datenlage, in drei verschiedenen Varianten umgesetzt werden.

### Variante 1: vollstrukturierte Befunde

Diese Variante kann gewählt werden, wenn es vollstrukturierte Befunde in den vorhandenen Daten gibt. Beispiel wären hier die Templates der DRG.

![UML strukturierter Befund](uml-befund-strukturiert.png)

### Variante 2: semistrukturierte Befunde

Diese Variante kann gewählt werden, wenn es Befunde in den Daten gibt, die zum Beispiel schon in Kapitel strukturiert wurden.

![UML semistrukturierter Befund](uml-befund-semistrukturiert.png)

### Variante 3: Freitextbefunde

Diese Variante kann gewählt werden, wenn die Daten rein in Freitext unstrukturiert vorliegen.

![UML Freitextbefund](uml-befund-freitext.png)

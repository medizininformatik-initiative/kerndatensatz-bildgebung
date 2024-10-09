# Beschreibung Modul 

Das Modul BEFUNDE BILDGEBENDER VERFAHREN enthält Datenelemenete zur Dokumentation radiologischer Bildgebung und Befundung aller gängigen Modalitäten. Es ist Bestandteil der Erweiterungsmodule des Kerndatensatzes (KDS) der Medizininformatik-Initiative (MII).

Die medizinische Bildgebung spielt eine zentrale Rolle in der klinischen Praxis bei der Diagnose, Therapie und Dokumentation verschiedener Krankheiten und wird voraussichtlich noch wichtiger werden. Es existiert ein stetig wachsendes Volumen an klinischen Bilddaten in den Krankenhäusern. Diese Daten sind entscheidend für eine patientenzentrierte und individualisierte Gesundheitsversorgung und fördern die Entwicklung neuer Auswertungsmethoden zur Optimierung des Behandlungsstandards. Die sekundäre Nutzung dieser Daten bietet massive Potentiale, die durch dieses Erweiterungsmoduls des KDS in der MII zukünftig abgebildet werden können. 

## Teilmodule

Grob lässt sich das gesamte Modul BEFUNDE BILDGEBENDER VERFAHREN in zwei Teilmodule aufteilen: die ImagingStudy mit Informationen aus dem DICOM-Header und die Abbildung des radiologischen Befundberichts über den DiagnosticReport.
Beide Teilmodule ergänzen sich in der Abbildung ihrer Datenelemente und wurden kongruent aufeinander abgestimmt.
Um einen Gesamtüberblick über die vorliegende Datenlage zu bekommen, ist die Nutzung beider Teilmodule erforderlich. Theoretisch ist es aber auch möglich, die Teilmodule getrennt voneinander zu implementieren, falls am gegegebenen Standort bisher nur eine Datenquelle (z.B. RIS) erschlossen wurde.

### Teilmodul "Metadaten"

Zur Modellierung wurde die ImagingStudy analog in drei Teilmodule strukturiert:
1. Studienebene
2. Serienebene
3. Instanzebene

Dafür wurde sich an der internationalen FHIR-Ressource "ImagingStudy" (https://hl7.org/fhir/R4/imagingstudy.html) orientiert und überlegt, welche Elemente für die Medizininformatik-Initiative relevant sind. Es wurde außerdem diskutiert, welche weiteren DICOM-Metadaten von Interesse sind, die im Profil abgebildet werden sollen.

Ergänzt wurden vorrangig modalitätsspezifische Attribute auf Serien-Ebene. Diese sollen dazu beitragen, einen tieferen technischen Einblick in die jeweilige genutzte Modalität zu erlangen.
• Bei den röntgenbasierten Modalitäten (DX, CT, MG, CR) werden die Werte der
Röntgenröhrenspannung und des Röntgenröhrenstroms abgebildet sowie die Werte der
Exposition und der Expositionszeit.
• Die nuklearmedizinischen Modalitäten (NM und PET) beinhalten Dosis und weitere Informationen zum applizierten Radiopharmakon sowie dem Reskalierungstypen.
• Bei der Modalität MR werden die Scanning Sequence und Variant sowie die genutzte magnetische Feldstärke abgebildet.

Im Moment werden diese sieben Modalitäten (MR, CT, DX, CR, MG, NM und PET) im Teilmodul betrachtet und es ist geplant, in einem stufenweisen Verfahren, in Zukunft auch weitere modalitätsspezifische Attribute anderer Modalitäten zu spezifizieren.

Die Originalnamen der Elemente aus dem FHIR Profil wurden ins Deutsche übersetzt und ggf. zur besseren Lesbarkeit angepasst. Die Instanzebene sowie auch die Serienebene sind komplett optional, sodass auch nur die Attribute auf Studienebene befüllt werden können. Allerdings wird empfohlen, wenn mögich, auch die beiden unteren Ebenen zu befüllen, um ein umfassendes Bild der abgebildeten Bildgebungsstudien zu erhalten.

### Teilmodul "Befundbericht"

Das Teilmodul zum Befund berücksichtigt zwei Perspektiven, deren gemeinsames Element der Befundbericht ist:

1. Hochstrukturierte Berichte und deren Ergebnisse können durch eine generische Beobachtung dargestellt werden.
2. Un- oder semistrukturierte Befunde (z. B. historische Freitext-Befunde) lassen sich über die Entitäten semistrukturierter Befundbericht und Befundabschnitt darstellen. Hierbei ist es auch möglich, einzelne strukturierte Beobachtungen als generische Observations abzubilden.

Dieses Konzept ermöglicht sowohl die Integration und Berücksichtigung bereits vorhandener historischer Befunde (Rückwärtskompatibilität) als auch die Nutzung neuer hochstrukturierter Befundvorlagen aus der Industrie (Vorwärtskompatibilität).

In der ersten Version des Kerndatensatzmoduls gibt es noch keine festgelegten Vorgaben zur Darstellung einzelner strukturierter Befundwerte. Dafür ist eine generische Beobachtung definiert, die als Grundlage dient, um in zukünftigen Iterationen anhand fachlicher Vorgaben (z. B. aus Use Cases, DRG-Templates) Profile für strukturierte Befundwerte zu entwickeln.

Das zentrale Element des Teilmoduls ist der Befundbericht. Dieser bildet den Rahmen für die Informationen des Befundes, die entweder als semistrukturiertes Dokument (in Abschnitte gegliederter Freitext), als strukturierte Beobachtung oder als Kombination aus beidem abgebildet werden können. Die Modellierung einer Körperstruktur (z. B. ein beobachteter Tumor) erlaubt die direkte Beobachtung eines Verlaufs (z. B. Wachstum eines Tumors).

Wenn die Befundung einem vorgegebenen Algorithmus folgt, kann dies als Befundungsprozedur angegeben werden. Jeder Befund enthält eine Referenz auf die zugrunde liegenden Bilder, die als Studie dargestellt werden (vgl. Teilmodul "Metadaten").

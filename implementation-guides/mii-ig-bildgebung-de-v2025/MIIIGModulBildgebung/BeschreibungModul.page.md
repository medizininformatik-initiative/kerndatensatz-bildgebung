# Beschreibung Modul 

Das Modul BILDGEBENDE VERFAHREN enthält Datenelemenete zur Dokumentation radiologischer Bildgebung und Befundung aller gängigen Modalitäten. Es ist Bestandteil der Erweiterungsmodule des Kerndatensatzes (KDS) der Medizininformatik-Initiative (MII).

Die medizinische Bildgebung spielt eine zentrale Rolle in der klinischen Praxis bei der Diagnose, Therapie und Dokumentation verschiedener Krankheiten und wird voraussichtlich noch wichtiger werden. Es existiert ein stetig wachsendes Volumen an klinischen Bilddaten in den Krankenhäusern. Diese Daten sind entscheidend für eine patientenzentrierte und individualisierte Gesundheitsversorgung und fördern die Entwicklung neuer Auswertungsmethoden zur Optimierung des Behandlungsstandards. Die sekundäre Nutzung dieser Daten bietet massive Potentiale, die durch dieses Erweiterungsmoduls des KDS in der MII zukünftig abgebildet werden können. 

## Teilmodule

Grob lässt sich das gesamte Modul BILDGEBENDE VERFAHREN in zwei Teilmodule aufteilen: die ImagingStudy mit Informationen auf dem DICOM-Header und die Abbildung des radiologischen Befundberichts über den DiagnosticReport.
Beide Teilmodule ergänzen sich in der Abbildung ihrer Datenelemente und wurden kongruent aufeinander abgestimmt.
Um einen Gesamtüberblick über die vorliegende Datenlage zu bekommen, ist die Nutzung beider Teilmodule erforderlich. Theoretisch ist es aber auch möglich, die Teilmodule getrennt voneinander zu implementieren, falls am gegegebenen Standort bisher nur eine Datenquelle (z.B. RIS) erschlossen wurde.

### Teilmodul "Metadaten"

Zur Modellierung wurde die ImagingStudy analog wie in der FHIR Kernspizifikation in drei Teilmodule strukturiert:
1. Studienebene
2. Serienebene
3. Serienebene

Dafür wurde sich am internationalen FHIR Profil "ImagingStudy" (https://hl7.org/fhir/R4/imagingstudy.html) orientiert und überlegt, welche Elemente für die Mediziniformatik-Initaitve relevant sind. Es wurde außerdem diskutiert, welche weiteren DICOM-Metadaten von Interesse sind, die im Profil abgebildet werden sollen.
Die Referenzen "Endpoint" und "Specimen" wurden weggelassen. Alle anderen Elemente des Profils "Imaging Study" wurden übernommen. Ergänzt wurden vorrangig modalitätsspezifische Attribute auf Serien-Ebene.
Die Originalnamen der Elemente aus dem FHIR Profil wurden ins Deutsche übersetzt und ggf. zur besseren Lesbarkeit angepasst. Die Instanzebene sowie auch die Serienebene sind komplett optional, sodass auch nur die Attribute auf Studienebene befüllt werden können. Allerdings wird empfohlen, wenn mögich, auch die beiden unteren Ebenen zu befüllen, um ein umfassendes Bild der abgebildeten Bildgebungsstudien zu erhalten.

### Teilmodul "Befundbericht"

TODO

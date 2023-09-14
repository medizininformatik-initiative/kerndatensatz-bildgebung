## Beschreibung Modul 

Das Modul BILDGEBUNG enthält Datenelemenete zur Dokumentation radiologischer Bildgebung aller gängigen Modalitäten. Es ist Bestandteil der Basiosmodule des Kerndatensatzes der Medizininformatikinitiative.

Was wurde genutzt?
- ART-DECOR zur Modellierung. Dafür wurde sich am internationalen FHIR Profil "Imaging Study" (https://hl7.org/fhir/R4/imagingstudy.html) orientiert und überlegt welche Elemente für die Mediziniformatikinitaitve relevant sind. Dabei wurde auch überlegt, welche weiteren DICOM Header von Interesse sind, die im Profil abgebildet werden sollen (wie beispielsweise relevante DICOM Tags für bestimmte Modalitäten).

Zur Modellierung wurde die Imaging Study in drei Teilmodule strukturiert:
1. Studienebene (nicht Referenzen)
2. Studienebene (Referenzen)
3. Serienebene

# 1. Studie (nicht Referenzen)

# 2. Studie (Referenzen)

# 3. Serie

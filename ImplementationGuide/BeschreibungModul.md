# Beschreibung Modul 

Das Modul BILDGEBUNG enthält Datenelemenete zur Dokumentation radiologischer Bildgebung und Befundung aller gängigen Modalitäten. Es ist Bestandteil der Basismodule des Kerndatensatzes der Medizininformatikinitiative.

Was wurde genutzt?
- ART-DECOR zur Modellierung. Dafür wurde sich am internationalen FHIR Profil "Imaging Study" (https://hl7.org/fhir/R4/imagingstudy.html) orientiert und überlegt welche Elemente für die Mediziniformatikinitaitve relevant sind. Dabei wurde auch überlegt, welche weiteren DICOM Header von Interesse sind, die im Profil abgebildet werden sollen (wie beispielsweise relevante DICOM Tags für bestimmte Modalitäten (Feldstärke, Röhrenspannung, ...) oder Aufnahmeparameter wie Pixel Spacing, Slice Thickness, ...) [To Do Umsetzung]).

Zur Modellierung wurde die Imaging Study in drei Teilmodule strukturiert:
1. Studienebene (nicht Referenzen)
2. Studienebene (Referenzen)
3. Serienebene

## Teilmodule 

### 1. Studie (nicht Referenzen)

### 2. Studie (Referenzen)

### 3. Serie

**Ausschnitt aus ART-DECOR**
![image](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/assets/98951773/14231b52-43a7-414f-8f3c-4167736815df)

Die Referenzen "Endpoint" und "Specimen" wurden weggelassen. Alle anderen Elemente des Profils "Imaging Study" wurden übernommen. 
Die Originalnamen der Elemente aus dem FHIR Profil wurden ins Deutsche übersetzt und ggf. zur besseren Lesbarkeit angepasst. Die Instanzebene, als auch die Serienebene sind komplett optional, sodass auch nur die Ressourcen auf Studienebene gefüllt werden können. Allerdings wird empfohlen, wenn mögich, auch die Ressourcen zu allen in der Studie enthaltenen Serien zu füllen.  

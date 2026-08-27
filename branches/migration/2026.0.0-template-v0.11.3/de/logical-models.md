# Logische Modelle - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* **Logische Modelle**

## Logische Modelle

 Diese Seite enthält Übersetzungen aus der Originalsprache, in der der Leitfaden verfasst wurde. Informationen zu diesen Übersetzungen und Anweisungen zum Abgeben von Feedback zu den Übersetzungen finden Sie [hier](translationinfo.md). 

### Datensätze inkl. Beschreibungen

Das Kerndatensatzmodul **Bildgebung** umfasst sowohl Profile zur Abbildung eines radiologischen Befunds (Indikation, Beurteilung, Auffälligkeiten, Aufnahmequalität etc.) als auch ein Profil zu den Metainformationen, welche im DICOM-Header enthalten sind (Technische Parameter, Studiendetails, Modalitäten, Körperregionen und -seiten etc.). Die Struktur des Befunds kann entweder in Freitextform vorliegen oder in strukturierter als auch semistrukturierter Form vorliegen.

Es ist zu beachten, dass das LogicalModel rein auf die Abbildung der Datenelemente und deren Beschreibung in hierarchischer Struktur abzielt. Verwendete Datentypen und Kardinalitäten sind nicht als verpflichtend anzusehen. Dies wird abschließend durch die FHIR-Profile festgelegt. Für jedes Element innerhalb des Logical Models existiert ein 1:1 Mapping auf ein Element einer konkreten FHIR Ressource.

Artefakt-Seite: [Logisches Modell Bildgebung](StructureDefinition-mii-lm-bildgebung.md)


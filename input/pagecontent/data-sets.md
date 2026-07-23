## Datensätze inkl. Beschreibungen

Das Kerndatensatzmodul **Bildgebung** umfasst sowohl Profile zur Abbildung eines radiologischen Befunds (Indikation, Beurteilung, Auffälligkeiten, Aufnahmequalität etc.) als auch ein Profil zu den Metainformationen, welche im DICOM-Header enthalten sind (Technische Parameter, Studiendetails, Modalitäten, Körperregionen und -seiten etc.). Die Struktur des Befunds kann entweder in Freitextform oder in strukturierter als auch semistrukturierter Form vorliegen.

Es ist zu beachten, dass das LogicalModel rein auf die Abbildung der Datenelemente und deren Beschreibung in hierarchischer Struktur abzielt. Verwendete Datentypen und Kardinalitäten sind nicht als verpflichtend anzusehen. Dies wird abschließend durch die FHIR-Profile festgelegt. Für jedes Element innerhalb des Logical Models existiert ein 1:1-Mapping auf ein Element einer konkreten FHIR-Ressource.

Das formale Informationsmodell ist als Logical Model hinterlegt: [MII LM Bildgebung](StructureDefinition-mii-lm-bildgebung.html). Die vollständige Elementstruktur inkl. Beschreibungen wird nachfolgend eingebettet:

{% include StructureDefinition-mii-lm-bildgebung-snapshot.xhtml %}

### Model-to-Profile-Mapping

Die Rückverfolgbarkeit vom Informationsmodell (Logical Model) zu den FHIR-Profilen wird über die Mapping-Angaben in den Elementdefinitionen des Logical Models hergestellt (`mapping`-Einträge je Element). Eine Übersicht der zentralen Profile des Moduls:

| Fachliches Konzept | FHIR-Profil |
|--------------------|-------------|
| Bildgebungsstudie (DICOM-Metadaten) | [MII PR Bildgebung Bildgebungsstudie](StructureDefinition-mii-pr-bildgebung-bildgebungsstudie.html) |
| Radiologischer Befundbericht | [MII PR Bildgebung Radiologischer Befund](StructureDefinition-mii-pr-bildgebung-radiologischer-befund.html) |
| Generische Beobachtung | [MII PR Bildgebung Radiologische Beobachtung](StructureDefinition-mii-pr-bildgebung-radiologische-beobachtung.html) |
| Messung | [MII PR Bildgebung Radiologische Messung](StructureDefinition-mii-pr-bildgebung-radiologische-messung.html) |
| Körperstruktur | [MII PR Bildgebung Koerperstruktur](StructureDefinition-mii-pr-bildgebung-koerperstruktur.html) |
| Semistrukturierter Befundbericht | [MII PR Bildgebung Semistrukturierter Befundbericht](StructureDefinition-mii-pr-bildgebung-semistrukt-befundbericht.html) |
| Anforderung | [MII PR Bildgebung Anforderung](StructureDefinition-mii-pr-bildgebung-anforderung-bildgebung.html) |
| Bildgebungsprozedur | [MII PR Bildgebung Bildgebungsprozedur](StructureDefinition-mii-pr-bildgebung-bildgebungsprozedur.html) |
| Befundungsprozedur | [MII PR Bildgebung Radiologische Befundungsprozedur](StructureDefinition-mii-pr-bildgebung-radiologische-befundungsprozedur.html) |
| Gerät | [MII PR Bildgebung Geraet](StructureDefinition-mii-pr-bildgebung-geraet.html) |

Eine vollständige Liste aller Profile, Extensions, ValueSets und CodeSysteme findet sich unter [Artefakte](artifacts.html).

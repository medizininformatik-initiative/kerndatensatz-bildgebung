## Datensätze inkl. Beschreibungen

Das Modul Bildgebung umfasst sowohl ein Profil zum radiologischen Befund selbst (Indikation, Beurteilung, Auffäligkeiten, Aufnahmequalität etc.) als auch ein Profil zu den Metainformationen, welche im DICOM-Header enthalten sind (Technische Parameter, Studiendetails, Modalitäten, Körperregionen und -seiten etc.). 

Die bisher inoffizielle und nicht veröffentlichte Version des Informationsmodells für das Modul Bildgebung (ImagingStudy und RadioBefund) findet sich auf [TODO]. 

Es ist zu beachten, dass das Logical Model rein auf die Abbildung der Datenelemente und deren Beschreibung abzielt. Verwendete Datentypen und Kardinalitäten sind nicht als verpflichtend anzusehen. Dies wird abschließend durch die FHIR-Profile festgelegt. Für jedes Element innerhalb des Logical Models existiert ein 1:1 Mapping auf ein Element einer konkreten FHIR Ressource.

{{tree:MII-LM-Bildgebung}}
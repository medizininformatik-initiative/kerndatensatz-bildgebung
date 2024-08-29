# Voraussetzungen für den Test

## Testumgebung

Für den Test wird eine lokaler FHIR-Server benötigt. Diesen erhält man entweder als DockerImage oder als GitHub-Repository. Mit einem lokalen HAPI FHIR-Server, z.B [hapi-fhir-jpaserver-starter](https://github.com/hapifhir/hapi-fhir-jpaserver-starter), bekommt man ein leicht verständliches Swagger-UI, welches alle passenden REST-Operations in einer GUI anzeigt. Eine zusätzliche Funktion des HAPI FHIR-Server ist das *Auto-Indexing* der Suchparameter zu ihren Profilen. Damit dies funktioniert müssen zuerst die Suchparameter hinzugefügt werden und anschließend die Profile.

## Testoperationen

Die grundlegenden REST-Operations, die man zum Testen benötigt, sind ***GET***, ***PUT***  und ***POST***. Mit ***GET*** kann man Ressourcen nach ihrer ID suchen, mit ***PUT*** eine bereits bestehende Ressource mit der ID suchen und aktualisieren und mit ***POST*** eine neue Ressource mit ZufallsID hinzufügen. Falls vorwiegend ***POST*** verwendet wird sollte man sich die zugewiesenen ID anderweitig notieren, um diese bei Bedarf auffinden zu können. Für das Hinzufügen der Beispieldaten empfiehlt sich ***PUT***, da hier die ID selbst festgelegt werden kann und bei einer nicht vorhanden Ressource direkt eine neue erstellt wird.

## Testdaten

Um die Ressourcen des Moduls **Bildgebung** testen zu können, benötigt es zum einen die definierten Suchparameter und Profile, sowie Testdaten um die Referenzen auflösen zu können. Folgenden Demodaten wurden aus den HL7 FHIR-Basisprofilen und den weiteren KDS-Modulen der MII generiert.

- [Condition](https://www.medizininformatik-initiative.de/Kerndatensatz/Modul_Diagnose_Version_2/MIIIGModulDiagnose.html)
- [DiagnosticReport](http://hl7.org/fhir/R4/diagnosticreport-examples.html)
- [Encounter](https://www.medizininformatik-initiative.de/Kerndatensatz/Modul_Fall_Version_2/MIIIGModulFall.html)
- [Medication](https://www.medizininformatik-initiative.de/Kerndatensatz/Modul_Medikation_Version_2/MIIIGModulMedikation.html)
- [Observation](http://hl7.org/fhir/R4/observation-examples.html)
- [Patient](https://www.medizininformatik-initiative.de/Kerndatensatz/Modul_Person_Version_2/MIIIGModulPerson.html)
- [Practitioner](http://hl7.org/fhir/R4/practitioner-examples.html)

Die Ressourcen des Moduls **Bildgebung** liegen im Ordner ´´´/fsh-generated/resources´´´

## Reihenfolgen für die hier benutzten Profile

Durch die definierten Referenzen ist es notwendig die Ressourcen in der richtigen Reihenfolge dem FHIR-Server hinzuzufügen:

1. SearchParameter (46)
2. Patient-Example
3. Pratitioner-Example
4. Medication-Example
5. MedicationAdministration-Profil
6. Condition-Example
7. Encounter-Example
8. BodyStructure-Profil
9. ReadProcedure-Profil
10. Observation-Example
11. DiagnosticReport-Example
12. ServiceRequest-Profil
13. ImagingProcedure-Profil
14. ImagingStudy CT-Profil
15. ImagingStudy CR-Profil
16. ImagingStudy MR-Profil
17. ImagingStudy PT-Profil
18. Observation-Profil
19. Composition-Profil
20. DiagnosticReport-Profil
21. CarePlan-Profil

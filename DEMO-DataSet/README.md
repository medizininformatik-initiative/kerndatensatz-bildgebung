# Demo Ressourcen

Die hier bereitgestellten Ressourcen dienen zum Testen für Suchparameter und Resoourcen Validierung. Da die Profile Abhängigkeiten zu einander haben, ist es wichtig diese in der richtigen Reihenfolge einem lokalen FHIR-Server zu übergeben. Für die Tests wurde hier ein HAPI FHIR-Server verwendet. Hier kann man sich ein #reindex-Post sparen, wenn man die Suchparameter vor den Beispielprofilen hochlädt. Über einen #update-Post sollte man sich beim Hochladen die IDs selbst festlegen, damit sie in den Ressourcen richtig hinterlgt sind. Folgenden Liste soll dies Vereinfachen:
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

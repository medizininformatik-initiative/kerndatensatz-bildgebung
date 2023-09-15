## Datensätze inkl. Beschreibungen

Das Modul Medikation umfasst Datensätze zur Medikation selbst (Arzneimittel, Rezeptur, Wirkstoff), zur Anwendung beim Patienten (Einnahmedauer, Dosierung) und Metainformationen (Status, Bezüge, Autor, Datum etc.). 

Die offizielle und abgenommene Version des Informationsmodells für das Modul Medikation findet sich auf [ART-DECOR](https://art-decor.org/art-decor/decor-datasets--mide-). Zur Vereinheitlichung der Repräsentation wurde das Informationsmodell zusätzlich als FHIR Logical Model abgebildet:

{{tree:https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/LogicalModel/BasismodulMedikation}}

Es ist zu beachten, dass das Logical Model rein auf die Abbildung der Datenelemente und deren Beschreibung abzielt. Verwendete Datentypen und Kardinalitäten sind nicht als verpflichtend anzusehen. Dies wird abschließend durch die FHIR-Profile festgelegt. Für jedes Element innerhalb des Logical Models existiert ein 1:1 Mapping auf ein Element einer konkreten FHIR Ressource.

@```
from StructureDefinition 
where url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/LogicalModel/BasismodulMedikation'
    for differential.element
    select 
        Datensatz: path, 
        Erklaerung: definition 
```

<br><br>


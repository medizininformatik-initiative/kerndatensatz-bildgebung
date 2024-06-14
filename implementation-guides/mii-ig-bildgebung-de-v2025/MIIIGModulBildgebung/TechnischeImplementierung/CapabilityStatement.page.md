---
parent: 
---
## {{page-title}}

Um eine dezentrale Datenauswertung mittels des Deutsche Forschungsdatenportal für Gesundheit der Medizininformatik-Intiative zu ermöglichen MUSS die [capabilities-Interaktion](https://www.hl7.org/fhir/http:html#capabilities) unterstützt werden, sodass durch den FHIR-Server unter ```[BASE-URL]/metadata``` ein CapabilityStatement exponiert wird. Innerhalb dieses CapabilityStatement MUSS angegeben werden, welche Profile inkl. Version, sowie welche Suchparameter unterstützt werden.

Nachfolgend wird aufgelistet, welche Inhalte verpflichtend im CapabilityStatement angegeben werden MÜSSEN. Darüber hinaus MUSS eine Konformität zu dem nachfolgenden CapabilityStatement in der jeweiligen CapabilityStatement Instanz unter [```CapabilityStatement.instantiates```](https://www.hl7.org/fhir/capabilitystatement-definitions.html#CapabilityStatement.instantiates) angegeben werden.

Canonical: ```https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/CapabilityStatement/metadata```

[Link Simplifier Profil Übersicht](https://simplifier.net/resolve?canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/CapabilityStatement/metadata&fhirVersion=R4&scope=de.medizininformatikinitiative.kerndatensatz.medikation@2.0.0)


{{render:https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/CapabilityStatement/metadata}}
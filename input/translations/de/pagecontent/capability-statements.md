Um eine dezentrale Datenauswertung mittels des Deutschen Forschungsdatenportals für Gesundheit der Medizininformatik-Initiative zu ermöglichen, MUSS die [capabilities-Interaktion](https://www.hl7.org/fhir/R4/http.html#capabilities) unterstützt werden, sodass durch den FHIR-Server unter ```[BASE-URL]/metadata``` ein CapabilityStatement exponiert wird. Innerhalb dieses CapabilityStatement MUSS angegeben werden, welche Profile inkl. Version, sowie welche Suchparameter unterstützt werden.

Nachfolgend wird aufgelistet, welche Inhalte verpflichtend im CapabilityStatement angegeben werden MÜSSEN. Darüber hinaus MUSS eine Konformität zu dem nachfolgenden CapabilityStatement in der jeweiligen CapabilityStatement Instanz unter [```CapabilityStatement.instantiates```](https://www.hl7.org/fhir/capabilitystatement-definitions.html#CapabilityStatement.instantiates) angegeben werden.

Canonical: ```https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/CapabilityStatement/metadata```

Die vollständige Definition der geforderten Interaktionen, Profile und Suchparameter findet sich im [CapabilityStatement](CapabilityStatement-mii-cps-bildgebung-capabilitystatement.html).

//Head
Profile: MII_PR_Bildgebung_Behandlungsempfehlung
Parent: CarePlan
Id: mii-pr-bildgebung-behandlungsempfehlung
Title: "MII PR Bildgebung Behandlungsempfehlung"
Description: "Diese Profil beschreibt die ärztliche Behandlungsempfehlung einer Person. Sie unterstützt den radiologischen Befund mit Zusatzinformation"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-behandlungsempfehlung"
//Translation Meta
* insert Translation(^name, en-US, MII_PR_Imaging_Care_Plan)
* insert Translation(^title, en-US, MII PR Imaging Care Plan)
* insert Translation(^description, en-US, The profile describes a advisory for medical care.)
//Meta
* insert PR_CS_VS_Version
* insert Publisher
* insert KDS_Copyright
* id MS
* meta MS
* meta.source MS
* meta.profile MS
//Translation Profile
* insert Translation(status ^short, de-DE, Status)
* insert Translation(status ^short, en-US, status)
* insert Translation(status ^definition, de-DE, Entwurf | Aktiv | Wartend | Widerrufen | Abgeschlossen | Fehlerhafte Eingabe | Unbekannt)
* insert Translation(status ^definition, en-US, draft | active | on-hold | revoked | completed | entered-in-error | unknown)
* insert Translation(intent ^short, de-DE, Absicht)
* insert Translation(intent ^short, en-US, intent)
* insert Translation(intent ^definition, de-DE, Vorschlag | Plan | Anordnung | Option | Richtlinie)
* insert Translation(intent ^definition, en-US, proposal | plan | order | option | directive)
* insert Translation(description ^short, de-DE, Beschreibung)
* insert Translation(description ^short, en-US, description)
* insert Translation(description ^definition, de-DE, Freitextbeschreibung der Behandlungsempfehlung)
* insert Translation(description ^definition, en-US, description of the care plan)
* insert Translation(subject ^short, de-DE, Person)
* insert Translation(subject ^short, en-US, person)
* insert Translation(subject ^definition, de-DE, Person\, auf die sich die Behandlungsempfehlung bezieht)
* insert Translation(subject ^definition, en-US, person\, which this care plan is about)
* insert Translation(supportingInfo ^short, de-DE, Zusatzinformation)
* insert Translation(supportingInfo ^short, en-US, additional information)
* insert Translation(supportingInfo ^definition, de-DE, Zusatzinformation für einen Befundbericht)
* insert Translation(supportingInfo ^definition, en-US, additional information for a diagnostic report)
//Profile
* status MS
* intent MS
* description MS
* subject MS
* subject only Reference(Patient)
* supportingInfo MS
* supportingInfo only Reference(MII_PR_Bildgebung_Radiologischer_Befund)

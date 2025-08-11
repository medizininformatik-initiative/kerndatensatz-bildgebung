//Head
Profile: MII_PR_Bildgebung_Koerperstruktur
Parent: BodyStructure
Id: mii-pr-bildgebung-koerperstruktur
Title: "MII PR Bildgebung Körperstruktur"
Description: "Dieses Profil beschreibt die dargestellte Körperstrukturen nach Morphologie und Lokalisation."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-koerperstruktur"
//Translation Meta
* insert Translation(^name, en-US, MII_PR_Imaging_BodyStructure)
* insert Translation(^title, de-DE, Körperstrukutur)
* insert Translation(^title, en-US, body structure)
* insert Translation(^description, de-EN, Beschreibt die befundete Körperstruktur mit Morphologie und Lokalisation)
* insert Translation(^description, en-US, The profile describes the examined body structure in morphology and location.)
//Meta
* insert PR_CS_VS_Version
* insert PR_CS_VS_Date
* insert Publisher
* insert LicenseCodeableCCBY40
* id MS
* meta MS
* meta.source MS
* meta.profile MS
//Profile
* morphology MS
* morphology from $morphology (required)
* morphology ^short = "Morphologie"
* morphology ^definition = "Morphologie der Körperstruktur"
* location MS
* location from $location (required)
* location ^short = "Lokalisation"
* location ^definition = "Lokalisation der Körperstruktur im Bild"
* locationQualifier MS
* locationQualifier from $locQual (required)
* locationQualifier ^short = "nähere Lokalisation"
* locationQualifier ^definition = "explizite Beschreibung der Lokalisation"
* patient MS
* patient ^short = "Person"
* patient ^definition = "Person, an der sich die untersuchte Körperstruktur befindet"

//Translation Profile
* insert Translation(morphology ^short, de-DE, Morphologie)
* insert Translation(morphology ^short, en-US, morphology)
* insert Translation(morphology ^definition, de-DE, Morphologie der Körperstruktur)
* insert Translation(morphology ^definition, en-US, morphology of the body structure)
* insert Translation(location ^short, de-DE, Lokalisation)
* insert Translation(location ^short, en-US, location)
* insert Translation(location ^definition, de-DE, Lokalisation der Körperstruktur im Bild)
* insert Translation(location ^definition, en-US, location of the described body structure in the picture)
* insert Translation(locationQualifier ^short, de-DE, nähere Lokalisation)
* insert Translation(locationQualifier ^short, en-US, qualified location)
* insert Translation(locationQualifier ^definition, de-DE, explizite Beschreibung der Lokalisation)
* insert Translation(locationQualifier ^definition, en-US, explicit description of the body structure)
* insert Translation(patient ^short, de-DE, Person)
* insert Translation(patient ^short, en-US, person)
* insert Translation(patient ^definition, de-DE, Person\, an der sich die untersuchte Körperstruktur befindet)
* insert Translation(patient ^definition, en-US, person\, who contains the described body structure)
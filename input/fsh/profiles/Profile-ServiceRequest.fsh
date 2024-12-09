//Head
Profile: MII_PR_Bildgebung_Anforderung_Bildgebung
Parent: ServiceRequest
Id: mii-pr-bildgebung-anforderung-bildgebung
Title: "MII PR Bildgebung Anforderung Bildgebung"
Description: "Profil zur Anforderung einer Bildgebung."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-anforderung-bildgebung"
//Translation Meta
* insert Translation(^name, en-US, MII_PR_Imaging_Service_Request)
* insert Translation(^title, en-US, MII PR Imaging Service Request)
* insert Translation(^description, en-US, The profile describes a service request.)
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
* status MS
* status ^short = "Status"
* status ^definition = "Entwurf | Aktiv | Wartend | Widerrufen | Abgeschlossen | Fehlerhafte Eingabe | Unbekannt"
* intent MS
* intent ^short = "Absicht"
* intent ^definition = "Vorschlag | Plan | Anweisung | Erstverordnung | Reflexverordnung | Füllverordnung | Beispielverordnung | Option"
* category 1..* MS
* category ^patternCodeableConcept = $SCT#363679005
* category ^short = "Kategorie"
* category ^definition = "Kategorie der Serviceanforderung"
* code MS
* code ^short = "Kode"
* code ^definition = "Kode der Serviceanforderung in LOINC, RadLex oder SNOMED CT"
* code.coding MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    loinc 0..* MS and
    radlex 0..* MS and
    sct 0..* MS
* code.coding[loinc] ^patternCoding.system = $loinc
* code.coding[radlex] ^patternCoding.system = $radlex
* code.coding[sct] ^patternCoding.system = $SCT
* code.coding[sct].code from MII_VS_Bildgebung_Service_Request_Coding (preferred)
* subject MS
* subject only Reference(Patient)
* subject ^short = "Person"
* subject ^definition = "Person, auf die sich die Anforderung bezieht"
* encounter MS
* encounter ^short = "Versorgungsstellenkontakt"
* encounter ^definition = "Referenz auf den Versorgungsstellenkontakt"
* authoredOn MS
* authoredOn ^short = "Erstellungszeitpunkt"
* authoredOn ^definition = "Erstellungszeitpunkt der Anforderung"
* requester MS
* requester ^short = "Anforderer"
* requester ^definition = "Person, die die Anforderung erstellt"
* reasonCode MS
* reasonCode from MII_VS_Bildgebung_Service_Request_Reason (preferred)
* reasonCode ^short = "Anforderungsgrund"
* reasonCode ^definition = "kodierter Grund für die Anforderung"
* reasonReference MS
* reasonReference ^short = "Anforderungbezug"
* reasonReference ^definition = "Grund, auf den sich die Anforderung bezieht"
* supportingInfo MS
* supportingInfo only Reference(DiagnosticReport or ImagingStudy)
* supportingInfo ^short = "Zusatzinformation"
* supportingInfo ^definition = "Zusätzliche Informationen zur Anforderung"

//Translation Profile
* insert Translation(status ^short, de-DE, Status)
* insert Translation(status ^short, en-US, status)
* insert Translation(status ^definition, de-DE, Entwurf | Aktiv | Wartend | Widerrufen | Abgeschlossen | Fehlerhafte Eingabe | Unbekannt)
* insert Translation(status ^definition, en-US, draft | active | on-hold | revoked | completed | entered-in-error | unknown)
* insert Translation(intent ^short, de-DE, Absicht)
* insert Translation(intent ^short, en-US, intent)
* insert Translation(intent ^definition, de-DE, Vorschlag | Plan | Anweisung | Erstverordnung | Reflexverordnung | Füllverordnung | Beispielverordnung | Option)
* insert Translation(intent ^definition, en-US, proposal | plan | directive | original-order | reflex-order | filler-order | instance-order | option)
* insert Translation(category ^short, de-DE, Kategorie)
* insert Translation(category ^short, en-US, category)
* insert Translation(category ^definition, de-DE, Kategorie der Serviceanforderung)
* insert Translation(category ^definition, en-US, category of this service request)
* insert Translation(code ^short, de-DE, Kode)
* insert Translation(code ^short, en-US, code)
* insert Translation(code ^definition, de-DE, Kode der Serviceanforderung in LOINC\, RadLex oder SNOMED CT)
* insert Translation(code ^definition, en-US, code of this service request in LOINC\, RadLex or SNOMED CT)
* insert Translation(subject ^short, de-DE, Person)
* insert Translation(subject ^short, en-US, person)
* insert Translation(subject ^definition, de-DE, Person\, auf die sich die Anforderung bezieht)
* insert Translation(subject ^definition, en-US, person\, which this service request is about)
* insert Translation(encounter ^short, de-DE, Versorgungsstellenkontakt)
* insert Translation(encounter ^short, en-US, encounter)
* insert Translation(encounter ^definition, de-DE, Referenz auf den Versorgungsstellenkontakt)
* insert Translation(encounter ^definition, en-US, reference on the encounter)
* insert Translation(authoredOn ^short, de-DE, Erstellungszeitpunkt)
* insert Translation(authoredOn ^short, en-US, time of creation)
* insert Translation(authoredOn ^definition, de-DE, Erstellungszeitpunkt der Anforderung)
* insert Translation(authoredOn ^definition, en-US, time of creation of this service request)
* insert Translation(requester ^short, de-DE, Anforderer)
* insert Translation(requester ^short, en-US, requester)
* insert Translation(requester ^definition, de-DE, Person\, die die Anforderung erstellt)
* insert Translation(requester ^definition, en-US, person\, who created this service request)
* insert Translation(reasonCode ^short, de-DE, Anforderungsgrund)
* insert Translation(reasonCode ^short, en-US, reason)
* insert Translation(reasonCode ^definition, de-DE, kodierter Grund für die Anforderung)
* insert Translation(reasonCode ^definition, en-US, coded reason for this service request)
* insert Translation(reasonReference ^short, de-DE, Anforderungbezug)
* insert Translation(reasonReference ^short, en-US, reason reference)
* insert Translation(reasonReference ^definition, de-DE, Grund\, auf den sich die Anforderung bezieht)
* insert Translation(reasonReference ^definition, en-US, reference to the reason of this service request)
* insert Translation(supportingInfo ^short, de-DE, Zusatzinformation)
* insert Translation(supportingInfo ^short, en-US, additional information)
* insert Translation(supportingInfo ^definition, de-DE, Zusätzliche Informationen zur Anforderung)
* insert Translation(supportingInfo ^definition, en-US, additional information on this service request)

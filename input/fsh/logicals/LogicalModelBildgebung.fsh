Logical: MII_LM_Bildgebung
Parent: Element
Id: mii-lm-bildgebung
Title: "MII LM Bildgebung"
Description: "MII LogicalModel Modul Bildgebung"
* insert Translation(^name, en-US, MII_LM_Bildgebung)
* insert Translation(^title, en-US, MII LM Bildgebung)
* insert Translation(^description, en-US, MII LogicalModel Module Bildgebung)
* insert Publisher
* insert PR_CS_VS_Version
* insert KDS_Copyright
* ^date = "2024-07-03"
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-Bildgebung/StructureDefinition/LogicalModel/Bildgebung"
* . ^short = "Das Erweiterungsmodul Bildgebung enthält Datenelemente zur Dokumentation Bildgebungsstudien und radiologischen Befundberichten"

* Empfehlung 0..* BackboneElement "Empfehlung" "Therapieempfehlungen aus vorherigen Behandlungen"
  * ArtEmpfehlung 1..1 http://hl7.org/fhir/StructureDefinition/Coding "Art der Empfehlung" "Beschreibt die Art der Empfehlung."
  * FreitextEmpfehlung 0..1 http://hl7.org/fhir/StructureDefinition/string "Freitextempfehlung" ""
* Befundbericht 1..1 BackboneElement "Befundbericht" ""
  * AnforderndeMaßnahme 0..* Reference(ServiceRequest) "Anfordernde Maßnahme" "Basiert auf einer ServiceRequest-Anfrage."
  * Status 1..1 http://hl7.org/fhir/StructureDefinition/Coding "Status" "Status des Befundberichts."
  * Person 0..1 Reference(Patient) "Personen-Identifikation" "Die Person, für die der Befundbericht erstellt wurde."
  * Fall 1..1 Reference(Encounter) "Fall-Referenz" "Referenz über Fall auf den Versorgungsstellenkontakt."
  * Zeitpunkt 0..1 http://hl7.org/fhir/StructureDefinition/dateTime "Klinisch relevanter Zeitpunkt" "Klinisch relevanter Zeitpunkt, auf den sich der Bericht bezieht."
  * Periode 0..1 http://hl7.org/fhir/StructureDefinition/Period "Klinisch relevante Periode" "Klinisch relevante Periode, auf die sich der Bericht bezieht."
  * ZeitpunktErstellung 0..1 http://hl7.org/fhir/StructureDefinition/dateTime "Zeitpunkt der Erstellung" "Zeitpunkt der Erstellung des Berichts."
  * Beobachtung 0..* Reference(Observation) "Beobachtung" "Referenz auf die generische Beobachtung."
  * Studienbezug 1..* Reference(ImagingStudy) "Studienbezug" "Bezug auf die zugehörige(n) Bildgebungsstudie(n)."
  * InterpretationBeobachtung 0..1 http://hl7.org/fhir/StructureDefinition/markdown "Interpretation" "Freitextinterpretation der Beobachtung."
  * StrukturierteInterpretation 0..1 http://hl7.org/fhir/StructureDefinition/CodeableConcept "Strukturierte Interpretation" "Strukturierte Interpretation der Beobachtung."
  * Zusatzinformation 0..1 Reference(DiagnosticReport or Procedure) "Zusatzinformation" "Referenz auf weitere Befundberichte zum Patienten."
  * Dokumentenanhang 0..* http://hl7.org/fhir/StructureDefinition/Attachment "Dokumentenanhang" "Anhang der Dokumente und Bilder."
* SemistrukturiertesBefunddokument 1..1 BackboneElement "Semistrukturiertes Befunddokument" "Abbildung des Befunds über generische Composition."
  * DatumUhrzeit 1..1 http://hl7.org/fhir/StructureDefinition/dateTime "Datum und Uhrzeit der Bearbeitung" ""
  * Autor 1..* Reference(Practitioner) "Autor" "Referenz auf den Autor der Beschreibung."
  * Befundbericht 1..1 Reference(DiagnosticReport) "Befundbericht" "Referenz auf den zugeordneten Befundbericht."
  * Befundabschnitt 0..* BackboneElement "Befundabschnitt" "Befundabschnitt des semistrukturierten Befunddokuments."
    * Titel 0..1 http://hl7.org/fhir/StructureDefinition/string "Titel" "Titel des Befundabschnitts."
    * Art 0..1 http://hl7.org/fhir/StructureDefinition/CodeableConcept "Art" "Art des Befundabschnitts."
    * Text 0..1 http://hl7.org/fhir/StructureDefinition/Narrative "Text" "Textueller Inhalt des Befundabschnitts."
    * Eintrag 0..* Reference(Observation) "Eintrag" "Referenz auf eine Observation, die zum Eintrag des Befundabschnitts gehört."
    * Unterabschnitt 0..1 BackboneElement "Unterabschnitt" "Referenz auf einen weiteren Unterabschnitt."
* GenerischeBeobachtung 0..* BackboneElement "Befundabschnitt" "Befundabschnitt des semistrukturierten Befunddokuments."
  * TeilEinerBefundungsprozedur 0..* Reference(Procedure) "Teil einer Befundungsprozedur" ""
  * Beobachtungstyp 1..1 http://hl7.org/fhir/StructureDefinition/CodeableConcept "Beobachtungstyp" "Typ der Beobachtung."
  * Status 1..1 http://hl7.org/fhir/StructureDefinition/Coding "Status" "Status der Beobachtung."
  * Beobachtungszeitpunkt 0..1 http://hl7.org/fhir/StructureDefinition/dateTime "Beobachtungszeitpunkt" "Zeitpunkt an dem die Beobachtung gemacht wird."
  * Beschreibung[x] 0..1 BackboneElement "Beschreibung" "Detaillierte Beschreibung der Beobachtung mit value[x]."
  * Körperregion 0..1 http://hl7.org/fhir/StructureDefinition/CodeableConcept "Körperregion" "Codierte Körperregion der Beobachtung"
  * Studienbezug 0..* Reference(ImagingStudy) "Studienbezug" "Bezug auf die zugehörige(n) Bildgebungsstudie(n)."
  * WeitereBeobachtung 0..* Reference(Observation) "Weitere Beobachtung(en)" "Weitere Beobachtung(en) als Referenz auf weitere Observation(s)."
  * ErweiterteBeschreibung 0..* BackboneElement "Erweiterte Beschreibung" "Kann mehrere Beschreibungen strukturiert abbilden."
  * Bildnummer 0..1 http://hl7.org/fhir/StructureDefinition/string "Bildnummer" "DICOM Series UID der zugehörigen Serie."
  * Schichtposition 0..1 http://hl7.org/fhir/StructureDefinition/string "Schichtposition" "DICOM Instance UID der zugehörigen SOP Instance."
  * ErweiterteKörperstruktur 0..1 Reference(BodyStructure) "Erweiterte Körperstruktur" "Backport der R5 Referenz auf das BodyStructure-Profil."
* Anforderung 0..1 BackboneElement "Anforderung" "Anfoderung der jeweiligen Bildgebungsmaßnahme"
  * ArtAnfrage 0..1 http://hl7.org/fhir/StructureDefinition/CodeableConcept "Art der Anfrage" "Art der Anfrage"
  * Patientenbezug 1..1 Reference(Patient) "Patientenbezug" "Bezug zu dem Patienten, für den die Anfoderung besteht"
  * Zusatzinformation 0..1 Reference(DiagnosticReport) "Zusatzinformation" "Zusatzinformation zur jeweiligen Anfoderung"
* Studie 0..* BackboneElement "Studie" "Bildgebungsstudie"
  * Prozedur 0..1 Reference(Procedure) "Prozedur" "Referenz auf die dazugehörige medizinische Prozedur der Studie."
  * Identifier 0..* http://hl7.org/fhir/StructureDefinition/Identifier "Identifier" "Identifier der Bildgebungsstudie."
  * Status 1..1 http://hl7.org/fhir/StructureDefinition/Coding "Status" "Status der Bildgebungsstudie- Info darüber, ob die Studie gültig, ungültig, zurückgezogen, etc. ist."
  * Studien-Beschreibung 0..1 http://hl7.org/fhir/StructureDefinition/string "Studien-Beschreibung" "Beschreibung der Bildgebungsstudie"
  * AnzahlInstanzen 0..1 http://hl7.org/fhir/StructureDefinition/unsignedInt "Anzhal der SOP Instanzen" "Anzahl der in der Bildgebungsstudie enthaltenen SOP Instanzen, z.B. 127"
  * AnzahlSerien 0..1 http://hl7.org/fhir/StructureDefinition/unsignedInt "Anzahl der Serien" "Anzahl der in der Bildgebungsstudie enthaltenen Serien, z.B. 5"
  * Beginn 0..1 http://hl7.org/fhir/StructureDefinition/dateTime "Beginn" "Datum und Zeitpunkt, an dem die Studie gestartet wurde (z.B. Zeitpunkt des Beginns der CT-Untersuchung)."
  * Indikation 0..1 Reference(Condition or Observation) "Indikation" "Indikation der Bildgebungsstudie, d.h. der Grund, aus dem diese Bildgebung angefertigt wurde."
  * Modalitäten 0..* http://hl7.org/fhir/StructureDefinition/Coding "Modalitäten" "Set/Liste aller verschiedenen Modalitäten, die in dieser DICOM-Studie enthalten sind."
  * QuellePACS 0..* Reference(Endpoint) "Quelle zum PACS-Bild" "Referenz auf den Speicherort der Bildgebungsstudie im PACS"
  * AnforderndeMaßnahme 0..* Reference(ServiceRequest) "Anfordernde Maßnahme" "Referenz auf die anfordernde Maßnahme dieser Bildgebungsstudie"
  * Bildgebungsgrund 0..* http://hl7.org/fhir/StructureDefinition/string "Bildgebungsgrund" "Grund, aus dem die Prozedur angefordert wurde"
  * Fall 0..1 Reference(Encounter) "Fall-Referenz" "Referenz zum dazugehörigen Fall der Bildgebungsstudie."
  * Person 1..1 Reference(Patient) "Person" "Person, auf die sich die Bildgebungsstudie bezieht"
  * Serien 0..* BackboneElement "Serien" "Die Serien der DICOM-Studie"
    * Serien-UID 1..1 http://hl7.org/fhir/StructureDefinition/id "Serien-UID" "UID der DICOM-Serie"
    * Serien-Nummer 0..1 http://hl7.org/fhir/StructureDefinition/unsignedInt "Serien-Nummer" "Nummer der jeweiligen DICOM-Serie"
    * Modalität 1..1 http://hl7.org/fhir/StructureDefinition/Coding "Modalität" "Modalität der DICOM-Serie, z.B. 'MR' oder 'CR'"
    * Serien-Beschreibung 0..1 http://hl7.org/fhir/StructureDefinition/string "Serien-Beschreibung" "Beschreibung der jeweiligen Serie"
    * AnzahlInstanzen 0..1 http://hl7.org/fhir/StructureDefinition/unsignedInt "Anzhal der SOP Instanzen" "Anzahl der in der Serie enthaltenen SOP Instanzen, z.B. 28"
    * Körperregion 0..1 http://hl7.org/fhir/StructureDefinition/Coding "Körperregion" "Codierte Information über die untersuchte Körperregion der Serie"
    * Körperseite 0..1 http://hl7.org/fhir/StructureDefinition/Coding "Körperseite/Lateralität" "Information über die Körperseite der untersuchten Körperregion, z.B. linksseitig"
    * Beginn 0..1 http://hl7.org/fhir/StructureDefinition/dateTime "Beginn" "Datum und Zeitpunkt, an dem die Serie gestartet wurde (z.B. Zeitpunkt des Beginns der jeweiligen Serienaufnahme)."
    * Hersteller 0..1 http://hl7.org/fhir/StructureDefinition/CodeableConcept "Hersteller" "Hersteller der genutzten bildgebenden Modalität. "
    * Modell 0..1 http://hl7.org/fhir/StructureDefinition/string "Modell" "Das genutzte Modell des Herstellers der bildgebenden Modalität."
    * Kontrastmittelgabe 0..1 http://hl7.org/fhir/StructureDefinition/boolean "Kontrastmittelgabe" "Information darüber, ob bei der Serie Kontrastmittel genutzt wurde oder nicht"
    //* Kontrastmitteldetails 0..* Reference(TODO) "Kontrastmitteldetails" "Details zur Kontrastmittelgabe über das MedicationStatement"
    * Instanzen 0..* BackboneElement "Instanzen" "Alle Instanzen dieser DICOM-Serie."
      * SOP-Instanz 1..1 http://hl7.org/fhir/StructureDefinition/id "SOP-Instanz UID" "UID der jeweiligen SOP-Instanz"
      * SOP-Klasse 1..1 http://hl7.org/fhir/StructureDefinition/Coding "SOP-Klasse" "SOP-Klasse der jeweiligen SOP-Instanz"
      * Instanz-Nummer 0..1 http://hl7.org/fhir/StructureDefinition/unsignedInt "Instanz-Nummer" "Nummer der jeweiligen Instanz"
      * Beschreibung 0..1 http://hl7.org/fhir/StructureDefinition/string "Instanz-Beschreibung" "Beschreibung der jeweiligen Instanz"
      * Bildtyp 0..1 http://hl7.org/fhir/StructureDefinition/string "Bildtyp" "Bildtyp der Instanz"
      * Schichtdicke 1..1 http://hl7.org/fhir/StructureDefinition/unsignedInt "Schichtdicke in mm" "Schichtdicke der SOP-Instanz in mm"
      * PixelabstandX 1..1 http://hl7.org/fhir/StructureDefinition/unsignedInt "Pixelabstand in x-Richtung in mm" "Pixelabstand in x-Richtung in mm"
      * PixelabstandY 1..1 http://hl7.org/fhir/StructureDefinition/unsignedInt "Pixelabstand in y-Richtung in mm" "Pixelabstand in y-Richtung in mm"


Mapping: Bildgebung-LogicalModel
Id: FHIR
Title: "Bildgebung LogicalModel FHIR Mapping"
Source: MII_LM_Bildgebung
* Empfehlung -> "CarePlan"
  * ArtEmpfehlung -> "CarePlan.intent"
  * FreitextEmpfehlung -> "CarePlan.description"
* Befundbericht -> "DiagnosticReport"
  * AnforderndeMaßnahme -> "DiagnosticReport.basedOn"
  * Status -> "DiagnosticReport.status"
  * Person -> "DiagnosticReport.subject"
  * Fall -> "DiagnosticReport.encounter"
  * Zeitpunkt -> "DiagnosticReport.effective.effectiveDateTime"
  * Periode -> "DiagnosticReport.effective.effectivePeriod"
  * ZeitpunktErstellung -> "DiagnosticReport.issued"
  * Beobachtung -> "DiagnosticReport.result"
  * InterpretationBeobachtung -> "DiagnosticReport.conclusion"
  * StrukturierteInterpretation -> "DiagnosticReport.conclusionCode"
  * Zusatzinformation -> "DiagnosticReport.supportingInfo.reference"
  * Dokumentenanhang -> "DiagnosticReport.presentedForm"
  * Studienbezug -> "DiagnosticReport.study"
* SemistrukturiertesBefunddokument -> "Composition"
  * DatumUhrzeit -> "Composition.date"
  * Autor -> "Composition.author"
  * Befundbericht -> "Composition.subject"
  * Befundabschnitt -> "Composition.section"
    * Titel -> "Composition.section.title"
    * Art -> "Composition.section.code"
    * Text -> "Composition.section.text"
    * Eintrag -> "Composition.section.entry"
    * Unterabschnitt -> "Composition.section.section"
* GenerischeBeobachtung -> "Observation"
  * TeilEinerBefundungsprozedur -> "Observation.partOf"
  * Beobachtungstyp -> "Observation.code"
  * Status -> "Observation.status"
  * Beobachtungszeitpunkt -> "Observation.issued"
  * Beschreibung[x] -> "Observation.value[x]"
  * Körperregion -> "Observation.bodySite"
  * Studienbezug -> "Obervation.derivedFrom"
  * WeitereBeobachtung -> "Observation.hasMember"
  * ErweiterteBeschreibung -> "Observation.component" //haben wir als Referenz abgebildet?
  * Bildnummer -> "Observation.extension(TODO)"
  * Schichtposition -> "Observation.extension(TODO)"
  //* ErweiterteKörperstruktur -> TODO //Backport?
* Anforderung -> "ServiceRequest"
  * ArtAnfrage -> "ServiceRequest.code"
  * Patientenbezug -> "ServiceRequest.subject"
  * Zusatzinformation -> "ServiceRequest.supportingInfo"
* Studie -> "ImagingStudy"
  * Prozedur -> "ImagingStudy.TODO" //hier war gedacht, direkt die KDS-Prozedur zu referenzieren (angelehnt an R6)
  * Identifier -> "ImagingStudy.identifier"
  * Status -> "ImagingStudy.status"
  * Studien-Beschreibung -> "ImagingStudy.description"
  * AnzahlInstanzen -> "ImagingStudy.numberOfInstances"
  * AnzahlSerien -> "ImagingStudy.numberOfSeries"
  * Beginn -> "ImagingStudy.started"
  * Indikation -> "ImagingStudy.reasonReference"
  * Modalitäten -> "ImagingStudy.modality"
  * QuellePACS -> "ImagingStudy.endpoint"
  * AnforderndeMaßnahme -> "ImagingStudy.basedOn"
  * Bildgebungsgrund -> "ImagingStudy.extension(TODO)"
  * Fall -> "ImagingStudy.encounter"
  * Person -> "ImagingStudy.subject"
  * Serien -> "ImagingStudy.series"
    * Serien-UID -> "ImagingStudy.series.uid"
    * Serien-Nummer -> "ImagingStudy.series.number"
    * Modalität -> "ImagingStudy.series.modality"
    * Serien-Beschreibung -> "ImagingStudy.series.description"
    * AnzahlInstanzen -> "ImagingStudy.series.numberOfInstances"
    * Körperregion -> "ImagingStudy.series.bodySite"
    * Körperseite -> "ImagingStudy.series.laterality"
    * Beginn -> "ImagingStudy.series.started"
    * Hersteller -> "ImagingStudy.series.extension(TODO)"
    * Modell -> "ImagingStudy.series.extension(TODO)"
    * Kontrastmittelgabe -> "ImagingStudy.series.extension(TODO)"
    //* Kontrastmitteldetails -> "ImagingStudy.series.extension(TODO)"
    // TODO: Modalitätsspezifische Attribute
    * Instanzen -> "ImagingStudy.series.instance"
      * SOP-Instanz -> "ImagingStudy.series.instance.uid"
      * SOP-Klasse -> "ImagingStudy.series.instance.sopClass"
      * Beschreibung -> "ImagingStudy.series.instance.title"
      * Instanz-Nummer -> "ImagingStudy.series.instance.number"
      * Bildtyp -> "ImagingStudy.series.instance.extension(TODO)"
      * Schichtdicke -> "ImagingStudy.series.instance.extension(TODO)"
      * PixelabstandX -> "ImagingStudy.series.instance.extension(TODO)"
      * PixelabstandY -> "ImagingStudy.series.instance.extension(TODO)"


// Mapping: Bildgebung-LogicalModel-Profile
// Id: KDS-Profile
// Title: "Bildgebung LogicalModel KDS-Profile Mapping"
// Source: MII_LM_Bildgebung
// * Medikation -> "https://www.medizininformatik-initiative.de/fhir/core/modul-Bildgebung/StructureDefinition/Medication"
// * Medikationsliste -> "https://www.medizininformatik-initiative.de/fhir/core/modul-Bildgebung/StructureDefinition/Medikationsliste"
// * Medikationsverordnung -> "https://www.medizininformatik-initiative.de/fhir/core/modul-Bildgebung/StructureDefinition/MedicationRequest"
// * Medikationseintrag -> "https://www.medizininformatik-initiative.de/fhir/core/modul-Bildgebung/StructureDefinition/MedicationStatement"
// * Medikationsverabreichung -> "https://www.medizininformatik-initiative.de/fhir/core/modul-Bildgebung/StructureDefinition/MedicationAdministration"

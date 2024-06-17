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
* ^date = "2024-06-17"
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-Bildgebung/StructureDefinition/LogicalModel/Bildgebung"
* . ^short = "Das Erweiterungsmodul Bildgebung enthält Datenelemente zur Dokumentation Bildgebungsstudien und radiologischen Befundberichten"

* Empfehlung 0..* BackboneElement "Empfehlung" ""
    * ArtEmpfehlung 1..1 http://hl7.org/fhir/StructureDefinition/Coding "Art der Empfehlung" "Beschreibt die Art der Empfehlung."
    * FreitextEmpfehlung 0..1 http://hl7.org/fhir/StructureDefinition/string "Freitextempfehlung" ""
* Befundbericht BackboneElement "Befundbericht" "Radiologischer Befundbericht"
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
    * Zusatzinformation 0..1 Reference(DiagnosticReport) or Reference(Procedure) "Zusatzinformation" "Referenz auf weitere Befundberichte zum Patienten."
    * Dokumentenanhang 0..* http://hl7.org/fhir/StructureDefinition/Attachment "Dokumentenanhang" "Anhang der Dokumente und Bilder."
* SemistrukturiertesBefunddokument BackboneElement "Semistrukturiertes Befunddokument" "Abbildung des Befunds über generische composition."
    * DatumUhrzeit 1..1 http://hl7.org/fhir/StructureDefinition/dateTime "Datum und Uhrzeit der Bearbeitung" ""
    * Autor 1..* Reference(Practitioner) "Autor" "Referenz auf den Autor der Beschreibung."
    * Befundbericht 1..1 Reference(DiagnosticReport) "Befundbericht" "Referenz auf den zugeordneten Befundbericht."
* Befundabschnitt BackboneElement "Befundabschnitt" "Befundabschnitt des semistrukturierten Befunddokuments."
    * Titel 0..1 http://hl7.org/fhir/StructureDefinition/string "Titel" "Titel des Befundabschnitts."
    * Art 0..1 http://hl7.org/fhir/StructureDefinition/CodeableConcept "Art" "Art des Befundabschnitts."
    * Text 0..1 http://hl7.org/fhir/StructureDefinition/Narrative "Text" "Textueller Inhalt des Befundabschnitts."
    * Eintrag 0..* Reference(Observation) "Eintrag" "Referenz auf eine Observation, die zum Eintrag des Befundabschnitts gehört."
    * Unterabschnitt 0..1 Reference(composition.section) "Unterabschnitt" "Referenz auf einen weiteren Unterabschnitt."
* GenerischeBeobachtung BackboneElement "Befundabschnitt" "Befundabschnitt des semistrukturierten Befunddokuments."
    * TeilEinerBefundungsprozedur 0..* Reference(Procedure) "Teil einer Befundungsprozedur" ""
    * Beobachtungstyp 1..1 http://hl7.org/fhir/StructureDefinition/CodeableConcept "Beobachtungstyp" "Typ der Beobachtung."
    * Status 1..1 http://hl7.org/fhir/StructureDefinition/Coding "Status" "Status der Beobachtung."
    * Beobachtungszeitpunkt 0..1 http://hl7.org/fhir/StructureDefinition/dateTime "Beobachtungszeitpunkt" "Zeitpunkt an dem die Beobachtung gemacht wird."
    * Beschreibung[x] 0..1  "Beschreibung" "Detaillierte Beschreibung der Beobachtung mit value[x]."
    * Körperregion 0..1 http://hl7.org/fhir/StructureDefinition/CodeableConcept "Körperregion" "Codierte Körperregion der Beobachtung"
    * Studienbezug 0..* Reference(ImagingStudy) "Studienbezug" "Bezug auf die zugehörige(n) Bildgebungsstudie(n)."
    * WeitereBeobachtung 0..* Reference(Observation) "Weitere Beobachtung(en)" "Weitere Beobachtung(en) als Referenz auf weitere Observation(s)."
    * ErweiterteBeschreibung Reference(Observation.component) "Erweiterte Beschreibung" "Kann mehrere Beschreibungen strukturiert abbilden."
    * Bildnummer 0..1 http://hl7.org/fhir/StructureDefinition/string "Bildnummer" "DICOM Series UID der zugehörigen Serie."
    * Schichtposition 0..1 http://hl7.org/fhir/StructureDefinition/string "Schichtposition" "DICOM Instance UID der zugehörigen SOP Instance."
    * ErweiterteKörperstruktur 0..1 Reference(BodyStructure) "Erweiterte Körperstruktur" "Backport der R5 Referenz auf das BodyStructure-Profil."



Mapping: Bildgebung-LogicalModel
Id: FHIR
Title: "Bildgebung LogicalModel FHIR Mapping"
Source: MII_LM_Bildgebung
* Empfehlung -> "CarePlan"
  * ArtEmpfehlung -> "CarePlan.TODO"
  * FreitextEmpfehlung-> "CarePlan.description"
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
    * Studienbezug -> "DiagnosticReport.extension(TODO).value"


// Mapping: Bildgebung-LogicalModel-Profile
// Id: KDS-Profile
// Title: "Bildgebung LogicalModel KDS-Profile Mapping"
// Source: MII_LM_Bildgebung
// * Medikation -> "https://www.medizininformatik-initiative.de/fhir/core/modul-Bildgebung/StructureDefinition/Medication"
// * Medikationsliste -> "https://www.medizininformatik-initiative.de/fhir/core/modul-Bildgebung/StructureDefinition/Medikationsliste"
// * Medikationsverordnung -> "https://www.medizininformatik-initiative.de/fhir/core/modul-Bildgebung/StructureDefinition/MedicationRequest"
// * Medikationseintrag -> "https://www.medizininformatik-initiative.de/fhir/core/modul-Bildgebung/StructureDefinition/MedicationStatement"
// * Medikationsverabreichung -> "https://www.medizininformatik-initiative.de/fhir/core/modul-Bildgebung/StructureDefinition/MedicationAdministration"
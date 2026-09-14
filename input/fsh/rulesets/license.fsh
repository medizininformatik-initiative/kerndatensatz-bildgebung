// ─────────────────────────────────────────────────────────────────────────────
// Ported from kerndatensatz-basis (main): input/fsh/rulesets/license.fsh
//
// SNOMED International's required attribution notice. Insert it on EVERY
// artifact that uses SNOMED CT codes (profile, value set, code system):
//   * insert SnomedLicense
// It sets `^copyright`, so it is for caret-path declarations (Profile, ValueSet,
// CodeSystem, …). The wording is SNOMED International's — do not reword it.
// Verbatim from basis; nothing module-specific, hence no placeholders.
// ─────────────────────────────────────────────────────────────────────────────

RuleSet: SNOMED_Copyright
* ^copyright = "This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. SNOMED and SNOMED CT are registered trademarks of SNOMED International. Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license."

RuleSet: DICOM_Copyright
* ^copyright = "This value set includes content from DICOM (https://www.dicomstandard.org/). DICOM® is the registered trademark of the National Electrical Manufacturers Association (NEMA) for its Standards publications relating to digital communications of medical information."

RuleSet: LOINC_Copyright
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc)"

RuleSet: ICD10_Copyright
* ^copyright = "WHO, BfArM 1994 - 2024 - Die Erstellung erfolgt unter Verwendung der maschinenlesbaren Fassung des  Bundesinstituts für Arzneimittel und Medizinprodukte (BfArM)"
# MII ImplementationGuide Ressource - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* **MII ImplementationGuide Ressource**

## MII ImplementationGuide Ressource

Diese ImplementationGuide-Ressource definiert die technischen Details dieser Publikation, einschließlich Abhängigkeiten und Veröffentlichungsparametern.

* [XML](../ImplementationGuide-mii-ig-bildgebung.xml)
* [JSON](../ImplementationGuide-mii-ig-bildgebung.json)

### Versionsübergreifende Analyse

This is an R4 IG. None of the features it uses are changed in R4B, so it can be used as is with R4B systems. Packages for both [R4 (de.medizininformatikinitiative.kerndatensatz.bildgebung.r4)](../package.r4.tgz) and [R4B (de.medizininformatikinitiative.kerndatensatz.bildgebung.r4b)](../package.r4b.tgz) are available.

### IG-Abhängigkeiten

Dieser IG enthält die folgenden Abhängigkeiten von anderen IGs.












> **Woher die Versionen kommen.** Jedes Paket der Tabelle ist direkt in [`sushi-config.yaml`](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/blob/main/sushi-config.yaml) (`dependencies:`) gepinnt — auch `hl7.terminology.r4` (THO) und `hl7.fhir.uv.extensions.r4`, und diese beiden mit Bedacht: Die [Automatik des IG Publishers](https://build.fhir.org/ig/FHIR/ig-guidance/versions.html#automatic-packages) liest ausschließlich die **eigene** Abhängigkeitsliste dieses Leitfadens; ohne direkten Pin würde jeder Build stillschweigend das jeweils aktuellste THO-/Extensions-Release injizieren — eine allein im MII-Meta-Paket gepinnte Version kann den Build nicht steuern (verifiziert im Publisher-Quellcode des gepinnten Release). Eine wöchentliche Prüfung warnt, wenn diese beiden Pins von den Vorgaben des gepinnten Meta-Pakets abweichen; die von einem konkreten Build verwendeten Versionen stehen in dessen `qa-versions.json`.

### Globale Profile

Dieser IG deklariert die folgenden globalen Profile — Profile, die für jede unter diesem Leitfaden ausgetauschte Instanz ihres Ressourcentyps gelten. Eine leere Tabelle bedeutet: Dieses Modul deklariert keine.

*There are no Global profiles defined*

### Urheberrechte

This publication includes IP covered under the following statements.

* BfArM - Bundesinstitut für Arzneimittel und Medizinprodukte

* [ATC](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.de/CodeSystem/bfarm/atc): [MII_PR_Bildgebung_Kontrastmittelgabe](StructureDefinition-mii-pr-bildgebung-kontrastmittelgabe.md)


* BfArM 1994 - 2024 - Die Erstellung erfolgt unter Verwendung der maschinenlesbaren Fassung des Bundesinstituts für Arzneimittel und Medizinprodukte (BfArM)

* [OPS](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.de/CodeSystem/bfarm/ops): [MII_PR_Bildgebung_Bildgebungsprozedur](StructureDefinition-mii-pr-bildgebung-bildgebungsprozedur.md) and [MII_PR_Bildgebung_Radiologische_Befundungsprozedur](StructureDefinition-mii-pr-bildgebung-radiologische-befundungsprozedur.md)


* IFA GmbH

* [PZN](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.de/CodeSystem/ifa/pzn): [MII_PR_Bildgebung_Kontrastmittelgabe](StructureDefinition-mii-pr-bildgebung-kontrastmittelgabe.md)


* ISO maintains the copyright on the country codes, and controls its use carefully. For further details see the ISO 3166 web page: [https://www.iso.org/iso-3166-country-codes.html](https://www.iso.org/iso-3166-country-codes.html)

* [ISO 3166-1 Codes for the representation of names of countries and their subdivisions — Part 1: Country code](http://terminology.hl7.org/6.5.0/CodeSystem-ISO3166Part1.html): [MII_CPS_Bildgebung_CapabilityStatement](CapabilityStatement-mii-cps-bildgebung-capabilitystatement.md), [MII_CS_Bildgebung_Instance_Image_Type](CodeSystem-mii-cs-bildgebung-instance-image-type.md)... Show 53 more, [MII_CS_Bildgebung_Scanning_Sequence](CodeSystem-mii-cs-bildgebung-scanning-sequence.md), [MII_CS_Bildgebung_Scanning_Sequence_Variant](CodeSystem-mii-cs-bildgebung-scanning-sequence-variant.md), [MII_CS_Bildgebung_Series_Type](CodeSystem-mii-cs-bildgebung-series-type.md), [MII_CS_Bildgebung_Transducer_Type](CodeSystem-mii-cs-bildgebung-transducer-type.md), [MII_EX_Bildgebung_Bildgebungsgrund](StructureDefinition-mii-ex-bildgebung-bildgebungsgrund.md), [MII_EX_Bildgebung_Gewicht](StructureDefinition-mii-ex-bildgebung-gewicht.md), [MII_EX_Bildgebung_Groesse](StructureDefinition-mii-ex-bildgebung-groesse.md), [MII_EX_Bildgebung_Instanz_Details](StructureDefinition-mii-ex-bildgebung-instanz-details.md), [MII_EX_Bildgebung_Kontrastmittel](StructureDefinition-mii-ex-bildgebung-kontrastmittel.md), [MII_EX_Bildgebung_Modalitaet_CT](StructureDefinition-mii-ex-bildgebung-modalitaet-ct.md), [MII_EX_Bildgebung_Modalitaet_MG_CR_DX](StructureDefinition-mii-ex-bildgebung-modalitaet-mg-cr-dx.md), [MII_EX_Bildgebung_Modalitaet_MR](StructureDefinition-mii-ex-bildgebung-modalitaet-mr.md), [MII_EX_Bildgebung_Modalitaet_NM](StructureDefinition-mii-ex-bildgebung-modalitaet-nm.md), [MII_EX_Bildgebung_Modalitaet_PT](StructureDefinition-mii-ex-bildgebung-modalitaet-pt.md), [MII_EX_Bildgebung_Modalitaet_US](StructureDefinition-mii-ex-bildgebung-modalitaet-us.md), [MII_EX_Bildgebung_SOP_Instanz_UID](StructureDefinition-mii-ex-bildgebung-sop-instanz-uid.md), [MII_EX_Bildgebung_Schichtdicke](StructureDefinition-mii-ex-bildgebung-serie-schichtdicke.md), [MII_EX_Bildgebung_Serie_UID](StructureDefinition-mii-ex-bildgebung-serie-uid.md), [MII_IG_Bildgebung](index.md), [MII_LM_Bildgebung](StructureDefinition-mii-lm-bildgebung.md), [MII_PR_Bildgebung_Anforderung_Bildgebung](StructureDefinition-mii-pr-bildgebung-anforderung-bildgebung.md), [MII_PR_Bildgebung_Behandlungsempfehlung](StructureDefinition-mii-pr-bildgebung-behandlungsempfehlung.md), [MII_PR_Bildgebung_Bildgebungsprozedur](StructureDefinition-mii-pr-bildgebung-bildgebungsprozedur.md), [MII_PR_Bildgebung_Bildgebungsstudie](StructureDefinition-mii-pr-bildgebung-bildgebungsstudie.md), [MII_PR_Bildgebung_Geraet](StructureDefinition-mii-pr-bildgebung-geraet.md), [MII_PR_Bildgebung_Koerperstruktur](StructureDefinition-mii-pr-bildgebung-koerperstruktur.md), [MII_PR_Bildgebung_Kontrastmittelgabe](StructureDefinition-mii-pr-bildgebung-kontrastmittelgabe.md), [MII_PR_Bildgebung_Radiologische_Befundungsprozedur](StructureDefinition-mii-pr-bildgebung-radiologische-befundungsprozedur.md), [MII_PR_Bildgebung_Radiologische_Beobachtung](StructureDefinition-mii-pr-bildgebung-radiologische-beobachtung.md), [MII_PR_Bildgebung_Radiologische_Messung](StructureDefinition-mii-pr-bildgebung-radiologische-messung.md), [MII_PR_Bildgebung_Radiologischer_Befund](StructureDefinition-mii-pr-bildgebung-radiologischer-befund.md), [MII_PR_Bildgebung_Semistrukt_Befundbericht](StructureDefinition-mii-pr-bildgebung-semistrukt-befundbericht.md), [MII_VS_Bildgebung_Diagnostic_Report_Code_LNC](ValueSet-mii-vs-bildgebung-diagnostic-report-code-lnc.md), [MII_VS_Bildgebung_Diagnostic_Report_Code_SCT](ValueSet-mii-vs-bildgebung-diagnostic-report-code-sct.md), [MII_VS_Bildgebung_Findings_LNC](ValueSet-mii-vs-bildgebung-findings-lnc.md), [MII_VS_Bildgebung_Findings_SCT](ValueSet-mii-vs-bildgebung-findings-sct.md), [MII_VS_Bildgebung_ImagingProcedure_Code_SCT](ValueSet-mii-vs-bildgebung-imaging-procedure-code-sct.md), [MII_VS_Bildgebung_ImagingStudy_Series_View_Position](ValueSet-mii-vs-bildgebung-imagingStudy-series-view-position.md), [MII_VS_Bildgebung_Instance_Image_Type_CT](ValueSet-mii-vs-bildgebung-instance-image-type-ct.md), [MII_VS_Bildgebung_Instance_Image_Type_MR](ValueSet-mii-vs-bildgebung-instance-image-type-mr.md), [MII_VS_Bildgebung_Instance_Image_Type_NM](ValueSet-mii-vs-bildgebung-instance-image-type-nm.md), [MII_VS_Bildgebung_Instance_Image_Type_NM_Implementation](ValueSet-mii-vs-bildgebung-instance-image-type-nm-implementation.md), [MII_VS_Bildgebung_Instance_Image_Type_Patient_Examination](ValueSet-mii-vs-bildgebung-instance-image-type-patient-examination.md), [MII_VS_Bildgebung_Instance_Image_Type_Pixel_Data](ValueSet-mii-vs-bildgebung-instance-image-type-pixel-data.md), [MII_VS_Bildgebung_Instance_Image_Type_US](ValueSet-mii-vs-bildgebung-instance-image-type-us.md), [MII_VS_Bildgebung_Instance_Image_Type_US_Implemantation](ValueSet-mii-vs-bildgebung-instance-image-type-us-implementation.md), [MII_VS_Bildgebung_MR_Scanning_Sequence](ValueSet-mii-vs-bildgebung-mr-scanning-sequence.md), [MII_VS_Bildgebung_MR_Scanning_Sequence_Variant](ValueSet-mii-vs-bildgebung-mr-scanning-sequence-variant.md), [MII_VS_Bildgebung_Observation_Body_Site_SCT](ValueSet-mii-vs-bildgebung-observation-body-site-sct.md), [MII_VS_Bildgebung_PT_Series_Type_Spacial](ValueSet-mii-vs-bildgebung-pt-series-type-spacial.md), [MII_VS_Bildgebung_PT_Series_Type_Volumetric](ValueSet-mii-vs-bildgebung-pt-series-type-volumetric.md), [MII_VS_Bildgebung_ServiceRequest_Code_SCT](ValueSet-mii-vs-bildgebung-service-request-code-sct.md) and [MII_VS_Bildgebung_US_Transducer_Type](ValueSet-mii-vs-bildgebung-us-transducer-type.md)


* The UCUM codes, UCUM table (regardless of format), and UCUM Specification are copyright 1999-2009, Regenstrief Institute, Inc. and the Unified Codes for Units of Measures (UCUM) Organization. All rights reserved. [https://ucum.org/trac/wiki/TermsOfUse](https://ucum.org/trac/wiki/TermsOfUse)

* [Unified Code for Units of Measure (UCUM)](http://hl7.org/fhir/uv/xver-r5.r4/0.1.0/CodeSystem-v3-ucum.html): [ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-nm](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-nm.md), [ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-pt](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-pt.md)... Show 4 more, [MII_EX_Bildgebung_Modalitaet_NM](StructureDefinition-mii-ex-bildgebung-modalitaet-nm.md), [MII_EX_Bildgebung_Modalitaet_PT](StructureDefinition-mii-ex-bildgebung-modalitaet-pt.md), [MedicationAdministration/mii-exa-bildgebung-kontrastmittelgabe](MedicationAdministration-mii-exa-bildgebung-kontrastmittelgabe.md) and [Observation/mii-exa-bildgebung-radiologische-messung](Observation-mii-exa-bildgebung-radiologische-messung.md)


* These codes are excerpted from Digital Imaging and Communications in Medicine (DICOM) Standard, Part 16: Content Mapping Resource, Copyright © 2011 by the National Electrical Manufacturers Association.

* [DICOM Controlled Terminology Definitions](http://hl7.org/fhir/R4/codesystem-dicom-dcim.html): [ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-cr](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-cr.md), [ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-ct](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-ct.md)... Show 8 more, [ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-mr](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-mr.md), [ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-mr-series](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-mr-series.md), [ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-nm](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-nm.md), [ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-pt](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-pt.md), [ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-us](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-us.md), [MII_EX_Bildgebung_Modalitaet_NM](StructureDefinition-mii-ex-bildgebung-modalitaet-nm.md), [MII_EX_Bildgebung_Modalitaet_PT](StructureDefinition-mii-ex-bildgebung-modalitaet-pt.md) and [MII_PR_Bildgebung_Bildgebungsstudie](StructureDefinition-mii-pr-bildgebung-bildgebungsstudie.md)


* This material contains content from [LOINC](http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the [license](http://loinc.org/license). LOINC® is a registered United States trademark of Regenstrief Institute, Inc.

* [LOINC](http://terminology.hl7.org/6.5.0/CodeSystem-v3-loinc.html): [Composition/mii-exa-bildgebung-semistrukt-befundbericht](Composition-mii-exa-bildgebung-semistrukt-befundbericht.md), [MII_PR_Bildgebung_Anforderung_Bildgebung](StructureDefinition-mii-pr-bildgebung-anforderung-bildgebung.md)... Show 8 more, [MII_PR_Bildgebung_Bildgebungsprozedur](StructureDefinition-mii-pr-bildgebung-bildgebungsprozedur.md), [MII_PR_Bildgebung_Radiologische_Beobachtung](StructureDefinition-mii-pr-bildgebung-radiologische-beobachtung.md), [MII_PR_Bildgebung_Radiologische_Messung](StructureDefinition-mii-pr-bildgebung-radiologische-messung.md), [MII_PR_Bildgebung_Radiologischer_Befund](StructureDefinition-mii-pr-bildgebung-radiologischer-befund.md), [MII_PR_Bildgebung_Semistrukt_Befundbericht](StructureDefinition-mii-pr-bildgebung-semistrukt-befundbericht.md), [MII_VS_Bildgebung_Diagnostic_Report_Code_LNC](ValueSet-mii-vs-bildgebung-diagnostic-report-code-lnc.md), [MII_VS_Bildgebung_Findings_LNC](ValueSet-mii-vs-bildgebung-findings-lnc.md) and [Observation/mii-exa-bildgebung-radiologische-beobachtung](Observation-mii-exa-bildgebung-radiologische-beobachtung.md)


* This material contains content that is copyright of SNOMED International. Implementers of these specifications must have the appropriate SNOMED CT Affiliate license - for more information contact [https://www.snomed.org/get-snomed](https://www.snomed.org/get-snomed) or [info@snomed.org](mailto:info@snomed.org).

* [SNOMED Clinical Terms&reg; (SNOMED CT&reg;)](http://hl7.org/fhir/R4/codesystem-snomedct.html): [BodyStructure/mii-exa-bildgebung-koerperstruktur](BodyStructure-mii-exa-bildgebung-koerperstruktur.md), [DiagnosticReport/mii-exa-bildgebung-radiologischer-Befund](DiagnosticReport-mii-exa-bildgebung-radiologischer-Befund.md)... Show 28 more, [ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-cr](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-cr.md), [ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-ct](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-ct.md), [ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-mr](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-mr.md), [ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-mr-series](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-mr-series.md), [ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-nm](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-nm.md), [ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-pt](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-pt.md), [ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-us](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-us.md), [MII_EX_Bildgebung_Modalitaet_NM](StructureDefinition-mii-ex-bildgebung-modalitaet-nm.md), [MII_EX_Bildgebung_Modalitaet_PT](StructureDefinition-mii-ex-bildgebung-modalitaet-pt.md), [MII_PR_Bildgebung_Anforderung_Bildgebung](StructureDefinition-mii-pr-bildgebung-anforderung-bildgebung.md), [MII_PR_Bildgebung_Bildgebungsprozedur](StructureDefinition-mii-pr-bildgebung-bildgebungsprozedur.md), [MII_PR_Bildgebung_Bildgebungsstudie](StructureDefinition-mii-pr-bildgebung-bildgebungsstudie.md), [MII_PR_Bildgebung_Koerperstruktur](StructureDefinition-mii-pr-bildgebung-koerperstruktur.md), [MII_PR_Bildgebung_Kontrastmittelgabe](StructureDefinition-mii-pr-bildgebung-kontrastmittelgabe.md), [MII_PR_Bildgebung_Radiologische_Befundungsprozedur](StructureDefinition-mii-pr-bildgebung-radiologische-befundungsprozedur.md), [MII_PR_Bildgebung_Radiologische_Beobachtung](StructureDefinition-mii-pr-bildgebung-radiologische-beobachtung.md), [MII_PR_Bildgebung_Radiologische_Messung](StructureDefinition-mii-pr-bildgebung-radiologische-messung.md), [MII_PR_Bildgebung_Radiologischer_Befund](StructureDefinition-mii-pr-bildgebung-radiologischer-befund.md), [MII_VS_Bildgebung_Diagnostic_Report_Code_SCT](ValueSet-mii-vs-bildgebung-diagnostic-report-code-sct.md), [MII_VS_Bildgebung_Findings_SCT](ValueSet-mii-vs-bildgebung-findings-sct.md), [MII_VS_Bildgebung_ImagingProcedure_Code_SCT](ValueSet-mii-vs-bildgebung-imaging-procedure-code-sct.md), [MII_VS_Bildgebung_Observation_Body_Site_SCT](ValueSet-mii-vs-bildgebung-observation-body-site-sct.md), [MII_VS_Bildgebung_ServiceRequest_Code_SCT](ValueSet-mii-vs-bildgebung-service-request-code-sct.md), [Observation/mii-exa-bildgebung-radiologische-beobachtung](Observation-mii-exa-bildgebung-radiologische-beobachtung.md), [Observation/mii-exa-bildgebung-radiologische-messung](Observation-mii-exa-bildgebung-radiologische-messung.md), [Procedure/mii-exa-bildgebung-bildgebungsprozedur](Procedure-mii-exa-bildgebung-bildgebungsprozedur.md), [Procedure/mii-exa-bildgebung-radiologische-befundungsprozedur](Procedure-mii-exa-bildgebung-radiologische-befundungsprozedur.md) and [ServiceRequest/mii-exa-bildgebung-anforderung-bildgebung](ServiceRequest-mii-exa-bildgebung-anforderung-bildgebung.md)


* This material derives from the HL7 Terminology (THO). THO is copyright ©1989+ Health Level Seven International and is made available under the CC0 designation. For more licensing information see: [https://terminology.hl7.org/license.html](https://terminology.hl7.org/license.html)

* [Observation Category Codes](http://terminology.hl7.org/7.3.0/CodeSystem-observation-category.html): [Observation/mii-exa-bildgebung-radiologische-beobachtung](Observation-mii-exa-bildgebung-radiologische-beobachtung.md)
* [diagnosticServiceSectionId](http://terminology.hl7.org/7.3.0/CodeSystem-v2-0074.html): [MII_PR_Bildgebung_Radiologischer_Befund](StructureDefinition-mii-pr-bildgebung-radiologischer-befund.md)
* [identifierType](http://terminology.hl7.org/7.3.0/CodeSystem-v2-0203.html): [ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-cr](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-cr.md), [ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-ct](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-ct.md)... Show 5 more, [ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-mr](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-mr.md), [ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-mr-series](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-mr-series.md), [ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-nm](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-nm.md), [ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-pt](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-pt.md) and [ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-us](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-us.md)


* Unless otherwise noted, the contents of the FDA website (www.fda.gov) — both text and graphics — are not copyrighted. They are in the public domain and may be republished, reprinted and otherwise used freely by anyone without the need to obtain permission from FDA. Credit to the U.S. Food and Drug Administration as the source is appreciated but not required.

* [Unique Ingredient Identifier (UNII)](http://terminology.hl7.org/6.5.0/CodeSystem-UNII.html): [MII_PR_Bildgebung_Kontrastmittelgabe](StructureDefinition-mii-pr-bildgebung-kontrastmittelgabe.md)


* WHO, BfArM 1994 - 2024 - Die Erstellung erfolgt unter Verwendung der maschinenlesbaren Fassung des Bundesinstituts für Arzneimittel und Medizinprodukte (BfArM)

* [ICD-10-GM](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.de/CodeSystem/bfarm/icd-10-gm): [MII_PR_Bildgebung_Radiologischer_Befund](StructureDefinition-mii-pr-bildgebung-radiologischer-befund.md)


### IG-Parametereinstellungen und Expansionsparameter

Expansionsparameter sind Query-Parameter, die an eine `ValueSet`- `$expand`-Operation übergeben werden können, um zu steuern, wie das ValueSet expandiert wird — also wie die vollständige Liste der Codes aus der ValueSet-Definition erzeugt wird. Die für diesen IG verwendeten [IG-Parameter](https://hl7.org/fhir/tools/en/CodeSystem-ig-parameters.html) sind in [`sushi-config.yaml`](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/blob/main/sushi-config.yaml) (`parameters:`) deklariert. Ein Modul, das seine Expansionsparameter über ein CRMI-Manifest pinnt, verlinkt hier zusätzlich die generierte `Parameters`-Ressource (siehe die auskommentierten Manifest-Blöcke in `sushi-config.yaml` und die Seite Metadata Overview, sofern das Modul sie behält).



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "mii-ig-bildgebung",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableimplementationguide",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableimplementationguide",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-implementationguide"]
  },
  "language" : "en",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/resource-approvalDate",
    "valueDate" : "2026-08-27"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "shareable"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "publishable"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionPolicy",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/artifact-version-policy-codes",
        "code" : "package",
        "display" : "Package"
      }]
    }
  },
  {
    "extension" : [{
      "url" : "packageId",
      "valueId" : "de.medizininformatikinitiative.kerndatensatz.bildgebung"
    },
    {
      "url" : "version",
      "valueString" : "2027.0.0-ballot"
    },
    {
      "url" : "uri",
      "valueUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung"
    }],
    "url" : "http://hl7.org/fhir/StructureDefinition/package-source"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/resource-effectivePeriod",
    "valuePeriod" : {
      "start" : "2027"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-author",
    "valueContactDetail" : {
      "telecom" : [{
        "system" : "email",
        "value" : "TODO:REVIEW"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-editor",
    "valueContactDetail" : {
      "name" : "Taskforce Core Data Set"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-reviewer",
    "valueContactDetail" : {
      "name" : "Interoperability Working Group",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/interoperability-working-group"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-reviewer",
    "valueContactDetail" : {
      "name" : "National Steering Committee",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/national-steering-committee"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-endorser",
    "valueContactDetail" : {
      "name" : "Interoperability Working Group",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/interoperability-working-group"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-endorser",
    "valueContactDetail" : {
      "name" : "National Steering Committee",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/national-steering-committee"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-expansionParameters",
    "valueReference" : {
      "reference" : "Parameters/mii-param-bildgebung-manifest"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm",
    "valueCoding" : {
      "system" : "http://hl7.org/fhir/version-algorithm",
      "code" : "semver"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-usage",
    "valueMarkdown" : "Use this ImplementationGuide resource as a computable definition of all the parts of the corresponding module of the Medical Informatics Initiative core data set."
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-purpose",
    "valueMarkdown" : "Provide the computable publication unit for the MII Core Dataset Bildgebung (Imaging) module, enabling implementers to discover, validate, version, and apply the specification consistently."
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-topic",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl",
        "code" : "C16502"
      }]
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/ImplementationGuide/mii-ig-bildgebung",
  "version" : "2027.0.0-ballot",
  "name" : "MII_IG_Bildgebung",
  "title" : "MII IG Kerndatensatz-Modul Bildgebung",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-27",
  "publisher" : "Medizininformatik Initiative",
  "_publisher" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "de"
      },
      {
        "url" : "content",
        "valueString" : "Medizininformatik Initiative"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "FHIR profiles for representing imaging procedures, imaging studies, and structured radiological findings and measurements, part of the MII core dataset.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "packageId" : "de.medizininformatikinitiative.kerndatensatz.bildgebung",
  "license" : "CC-BY-4.0",
  "fhirVersion" : ["4.0.1"],
  "dependsOn" : [{
    "id" : "de_basisprofil_r4",
    "uri" : "http://fhir.org/packages/de.basisprofil.r4/ImplementationGuide/de.basisprofil.r4",
    "packageId" : "de.basisprofil.r4",
    "version" : "1.5.4"
  },
  {
    "id" : "de_medizininformatikinitiative_kerndatensatz_meta",
    "uri" : "https://www.medizininformatik-initiative.de/fhir/modul-meta/ImplementationGuide/mii-ig-meta",
    "packageId" : "de.medizininformatikinitiative.kerndatensatz.meta",
    "version" : "2026.0.0"
  },
  {
    "id" : "de_medizininformatikinitiative_kerndatensatz_medikation",
    "uri" : "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/ImplementationGuide/mii-ig-medikation",
    "packageId" : "de.medizininformatikinitiative.kerndatensatz.medikation",
    "version" : "2026.0.1"
  },
  {
    "id" : "de_medizininformatikinitiative_kerndatensatz_base",
    "uri" : "https://www.medizininformatik-initiative.de/fhir/modul-base/ImplementationGuide/mii-ig-base",
    "packageId" : "de.medizininformatikinitiative.kerndatensatz.base",
    "version" : "2026.0.1"
  },
  {
    "id" : "fhir_dicom",
    "uri" : "http://fhir.org/packages/fhir.dicom",
    "packageId" : "fhir.dicom",
    "version" : "2025.3.20250714"
  },
  {
    "id" : "hl7_fhir_uv_extensions_r4",
    "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
    "packageId" : "hl7.fhir.uv.extensions.r4",
    "version" : "5.2.0"
  },
  {
    "id" : "hl7_fhir_uv_crmi",
    "uri" : "http://hl7.org/fhir/uv/crmi/ImplementationGuide/hl7.fhir.uv.crmi",
    "packageId" : "hl7.fhir.uv.crmi",
    "version" : "2.0.0"
  },
  {
    "id" : "hl7_terminology_r4",
    "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
    "packageId" : "hl7.terminology.r4",
    "version" : "7.3.0"
  }],
  "definition" : {
    "extension" : [{
      "extension" : [{
        "url" : "code",
        "valueString" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2024+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "ci-build"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "i18n-default-lang"
      },
      {
        "url" : "value",
        "valueString" : "en"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "i18n-lang"
      },
      {
        "url" : "value",
        "valueString" : "de"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "translation-sources"
      },
      {
        "url" : "value",
        "valueString" : "input/translations/de"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludexml"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludejson"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludettl"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludemap"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "init"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "progress"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "context"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "tx"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "pin-canonicals"
      },
      {
        "url" : "value",
        "valueString" : "pin-all"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-expansion-params"
      },
      {
        "url" : "value",
        "valueString" : "../../input/resources/Parameters-expansion-manifest.json"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "pin-manifest"
      },
      {
        "url" : "value",
        "valueString" : "mii-param-bildgebung-manifest"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "suppress-mappings"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/v3"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "suppress-mappings"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/v3/cda"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "wantGen-ttl"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "wantGen-ttl-html"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/expansion-parameters",
      "valueReference" : {
        "reference" : "Parameters/expansion-parameters"
      }
    },
    {
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
      "valueCode" : "hl7.fhir.uv.tools.r4#1.1.2"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2024+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "ci-build"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "i18n-default-lang"
      },
      {
        "url" : "value",
        "valueString" : "en"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "i18n-lang"
      },
      {
        "url" : "value",
        "valueString" : "de"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "translation-sources"
      },
      {
        "url" : "value",
        "valueString" : "input/translations/de"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludexml"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludejson"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludettl"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludemap"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "init"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "progress"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "context"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "tx"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "pin-canonicals"
      },
      {
        "url" : "value",
        "valueString" : "pin-all"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-expansion-params"
      },
      {
        "url" : "value",
        "valueString" : "../../input/resources/Parameters-expansion-manifest.json"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "pin-manifest"
      },
      {
        "url" : "value",
        "valueString" : "mii-param-bildgebung-manifest"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "suppress-mappings"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/v3"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "suppress-mappings"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/v3/cda"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "wantGen-ttl"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "wantGen-ttl-html"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    }],
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-PatExample.html"
      }],
      "reference" : {
        "reference" : "Patient/PatExample"
      },
      "name" : "Beispiel-Patient (synthetisch)",
      "description" : "Synthetischer Beispiel-Patient als Ziel der Patient/PatExample-Referenzen der Beispielinstanzen dieses Moduls. Kein Bestandteil der Spezifikation — dient ausschließlich der Auflösbarkeit der Beispiel-Referenzen im gerenderten Leitfaden.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CapabilityStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CapabilityStatement-mii-cps-bildgebung-capabilitystatement.html"
      }],
      "reference" : {
        "reference" : "CapabilityStatement/mii-cps-bildgebung-capabilitystatement"
      },
      "name" : "MII CPS Bildgebung CapabilityStatement",
      "description" : "Das vorliegende CapabilityStatement beschreibt alle verpflichtenden Interaktionen die ein konformes System unterstützen muss, um das Modul Bildgebung der Medizininformatik Initiative zu implementieren.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-bildgebung-instance-image-type.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-bildgebung-instance-image-type"
      },
      "name" : "MII CS Bildgebung Instance Image Type",
      "description" : "Image type für Radiologische Bilder",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-bildgebung-scanning-sequence.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-bildgebung-scanning-sequence"
      },
      "name" : "MII CS Bildgebung Scanning Sequence",
      "description" : "Scanning Sequence für MR Untersuchungen",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-bildgebung-scanning-sequence-variant.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-bildgebung-scanning-sequence-variant"
      },
      "name" : "MII CS Bildgebung Scanning Sequence Variant",
      "description" : "Scanning Sequence Varianten für MR Untersuchungen",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-bildgebung-series-type.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-bildgebung-series-type"
      },
      "name" : "MII CS Bildgebung Series Type",
      "description" : "Series Type für PET Untersuchungen",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-bildgebung-transducer-type.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-bildgebung-transducer-type"
      },
      "name" : "MII CS Bildgebung Transducer Type",
      "description" : "Schallkopftyp für US Untersuchungen",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-ex-bildgebung-bildgebungsgrund.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-ex-bildgebung-bildgebungsgrund"
      },
      "name" : "MII EX Bildgebung Bildgebungsgrund",
      "description" : "Die Extension ermöglicht es, den Bildgebungsgrund aus dem entsprechenden DICOM Tag [0040,1002] auf Studien-Ebene anzugeben.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-ex-bildgebung-serie-uid.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-ex-bildgebung-serie-uid"
      },
      "name" : "MII EX Bildgebung Bildnummer",
      "description" : "Die Extension ermöglicht es, den Bildnummer aus dem entsprechenden DICOM Tag auf Studien-Ebene anzugeben.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-ex-bildgebung-instanz-details.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-ex-bildgebung-instanz-details"
      },
      "name" : "MII EX Bildgebung Instanzdetails",
      "description" : "Die Extension ermöglicht es, Informationen zur ausgewählten Serie auf Instanz-Ebene anzugeben.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-ex-bildgebung-kontrastmittel.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-ex-bildgebung-kontrastmittel"
      },
      "name" : "MII EX Bildgebung Kontrastmittel",
      "description" : "Die Extension ermöglicht es, die Gabe von Kontrastmitteln auf Serien-Ebene anzugeben.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-ex-bildgebung-gewicht.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-ex-bildgebung-gewicht"
      },
      "name" : "MII EX Bildgebung Körpergewicht",
      "description" : "Die Extension ermöglicht es, das Körpergewicht aus dem entsprechenden DICOM Tag [0010,1030] auf Studien-Ebene anzugeben.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-ex-bildgebung-groesse.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-ex-bildgebung-groesse"
      },
      "name" : "MII EX Bildgebung Körpergröße",
      "description" : "Die Extension ermöglicht es, die Körpergröße aus dem entsprechenden DICOM Tag [0010,1020] auf Studien-Ebene anzugeben.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-ex-bildgebung-modalitaet-ct.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-ex-bildgebung-modalitaet-ct"
      },
      "name" : "MII EX Bildgebung Modalität CT",
      "description" : "Die Extension ermöglicht es die Ressourcen und Machbarkeitsanalysen auf CT Daten zu erweitern.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-ex-bildgebung-modalitaet-mg-cr-dx.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-ex-bildgebung-modalitaet-mg-cr-dx"
      },
      "name" : "MII EX Bildgebung Modalität MG/CR/DX",
      "description" : "Die Extension ermöglicht es die Ressourcen und Machbarkeitsanalysen auf MG, CR & DX Daten zu erweitern.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-ex-bildgebung-modalitaet-mr.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-ex-bildgebung-modalitaet-mr"
      },
      "name" : "MII EX Bildgebung Modalität MR",
      "description" : "Die Extension ermöglicht es die Ressourcen und Machbarkeitsanalysen auf MR Daten zu erweitern.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-ex-bildgebung-modalitaet-pt.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-ex-bildgebung-modalitaet-pt"
      },
      "name" : "MII EX Bildgebung Modalität PT",
      "description" : "Die Extension ermöglicht es die Ressourcen und Machbarkeitsanalysen auf PT Daten zu erweitern.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-ex-bildgebung-modalitaet-nm.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-ex-bildgebung-modalitaet-nm"
      },
      "name" : "MII EX Bildgebung Modalität PT/NM",
      "description" : "Die Extension ermöglicht es die Ressourcen und Machbarkeitsanalysen auf NM Daten zu erweitern.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-ex-bildgebung-modalitaet-us.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-ex-bildgebung-modalitaet-us"
      },
      "name" : "MII EX Bildgebung Modalität US",
      "description" : "Die Extension ermöglicht es die Ressourcen und Machbarkeitsanalysen auf US Daten zu erweitern.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-ex-bildgebung-serie-schichtdicke.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-ex-bildgebung-serie-schichtdicke"
      },
      "name" : "MII EX Bildgebung Schichtdicke",
      "description" : "Die Extension ermöglicht es, die Schichtdicke auf Serien-Ebene anzugeben, anstelle der individuellen Angabe auf Instanz-Ebene.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-ex-bildgebung-sop-instanz-uid.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-ex-bildgebung-sop-instanz-uid"
      },
      "name" : "MII EX Bildgebung SOPInstanz",
      "description" : "Die Extension ermöglicht es, den SOPInstanz aus dem entsprechenden DICOM Tag auf Studien-Ebene anzugeben.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "BodyStructure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "BodyStructure-mii-exa-bildgebung-koerperstruktur.html"
      }],
      "reference" : {
        "reference" : "BodyStructure/mii-exa-bildgebung-koerperstruktur"
      },
      "name" : "MII Example Bildgebung BodyStructure",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-koerperstruktur"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CarePlan"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CarePlan-mii-exa-bildgebung-behandlungsempfehlung.html"
      }],
      "reference" : {
        "reference" : "CarePlan/mii-exa-bildgebung-behandlungsempfehlung"
      },
      "name" : "MII Example Bildgebung Care Plan",
      "description" : "The patient must receive vacuum biopsy",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-behandlungsempfehlung"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Composition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Composition-mii-exa-bildgebung-semistrukt-befundbericht.html"
      }],
      "reference" : {
        "reference" : "Composition/mii-exa-bildgebung-semistrukt-befundbericht"
      },
      "name" : "MII Example Bildgebung Composition",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-semistrukt-befundbericht"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Device"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Device-mii-exa-bildgebung-geraet.html"
      }],
      "reference" : {
        "reference" : "Device/mii-exa-bildgebung-geraet"
      },
      "name" : "MII Example Bildgebung Device",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-geraet"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DiagnosticReport"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "DiagnosticReport-mii-exa-bildgebung-radiologischer-Befund.html"
      }],
      "reference" : {
        "reference" : "DiagnosticReport/mii-exa-bildgebung-radiologischer-Befund"
      },
      "name" : "MII Example Bildgebung Diagnostic Report",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-radiologischer-befund"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-mii-exa-bildgebung-bildgebungsprozedur.html"
      }],
      "reference" : {
        "reference" : "Procedure/mii-exa-bildgebung-bildgebungsprozedur"
      },
      "name" : "MII Example Bildgebung Imaging Procedure",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-bildgebungsprozedur"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ImagingStudy"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-cr.html"
      }],
      "reference" : {
        "reference" : "ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-cr"
      },
      "name" : "MII Example Bildgebung Imaging Study CR",
      "description" : "Thorax auf Station;",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-bildgebungsstudie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ImagingStudy"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-ct.html"
      }],
      "reference" : {
        "reference" : "ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-ct"
      },
      "name" : "MII Example Bildgebung Imaging Study CT",
      "description" : "whole body aquisition",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-bildgebungsstudie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ImagingStudy"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-mr.html"
      }],
      "reference" : {
        "reference" : "ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-mr"
      },
      "name" : "MII Example Bildgebung Imaging Study MR",
      "description" : "Knie DOT",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-bildgebungsstudie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ImagingStudy"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-mr-series.html"
      }],
      "reference" : {
        "reference" : "ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-mr-series"
      },
      "name" : "MII Example Bildgebung Imaging Study MR Serie",
      "description" : "Knie DOT",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-bildgebungsstudie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ImagingStudy"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-nm.html"
      }],
      "reference" : {
        "reference" : "ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-nm"
      },
      "name" : "MII Example Bildgebung Imaging Study NM",
      "description" : "whole body aquisition",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-bildgebungsstudie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ImagingStudy"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-pt.html"
      }],
      "reference" : {
        "reference" : "ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-pt"
      },
      "name" : "MII Example Bildgebung Imaging Study PT",
      "description" : "whole body aquisition",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-bildgebungsstudie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ImagingStudy"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-us.html"
      }],
      "reference" : {
        "reference" : "ImagingStudy/mii-exa-bildgebung-bildgebungsstudie-us"
      },
      "name" : "MII Example Bildgebung Imaging Study US",
      "description" : "Abdomen Ober- und Unterbauch",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-bildgebungsstudie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationAdministration"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationAdministration-mii-exa-bildgebung-kontrastmittelgabe.html"
      }],
      "reference" : {
        "reference" : "MedicationAdministration/mii-exa-bildgebung-kontrastmittelgabe"
      },
      "name" : "MII Example Bildgebung Kontrastmittelgabe",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-kontrastmittelgabe"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-bildgebung-radiologische-beobachtung.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-bildgebung-radiologische-beobachtung"
      },
      "name" : "MII Example Bildgebung Radiologische Beobachtung",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-radiologische-beobachtung"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-bildgebung-radiologische-messung.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-bildgebung-radiologische-messung"
      },
      "name" : "MII Example Bildgebung Radiologische Messung",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-radiologische-messung"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-mii-exa-bildgebung-radiologische-befundungsprozedur.html"
      }],
      "reference" : {
        "reference" : "Procedure/mii-exa-bildgebung-radiologische-befundungsprozedur"
      },
      "name" : "MII Example Bildgebung ReadProcedure",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-radiologische-befundungsprozedur"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-mii-exa-bildgebung-anforderung-bildgebung.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/mii-exa-bildgebung-anforderung-bildgebung"
      },
      "name" : "MII Example Bildgebung Service Request",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-anforderung-bildgebung"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-lm-bildgebung.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-lm-bildgebung"
      },
      "name" : "MII LM Bildgebung",
      "description" : "MII LogicalModel Modul Bildgebung",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-bildgebung-anforderung-bildgebung.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-bildgebung-anforderung-bildgebung"
      },
      "name" : "MII PR Bildgebung Anforderung Bildgebung",
      "description" : "Profil zur Anforderung einer Bildgebung.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-bildgebung-behandlungsempfehlung.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-bildgebung-behandlungsempfehlung"
      },
      "name" : "MII PR Bildgebung Behandlungsempfehlung",
      "description" : "Diese Profil beschreibt die ärztliche Behandlungsempfehlung einer Person. Sie unterstützt den radiologischen Befund mit Zusatzinformation",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-bildgebung-bildgebungsprozedur.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-bildgebung-bildgebungsprozedur"
      },
      "name" : "MII PR Bildgebung Bildgebungsprozedur",
      "description" : "Beschreibt die Tätigkeiten, wie eine Bildgebung ausgeführt wird.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-bildgebung-bildgebungsstudie.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-bildgebung-bildgebungsstudie"
      },
      "name" : "MII PR Bildgebung Bildgebungsstudie",
      "description" : "Dieses Profil beschreibt die Bildgebung anhand der DICOM-Metadaten auf Studien-, Serien- sowie Instanzen-Ebene der jeweiligen DICOM-Studie.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-bildgebung-geraet.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-bildgebung-geraet"
      },
      "name" : "MII PR Bildgebung Gerät",
      "description" : "Dieses Profil beschreibt das genutzte Gerät in der radiologischer Bildgebung. Es bietet die Möglichkeit, Informationen über das Gerät strukturiert abzubilden.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-bildgebung-kontrastmittelgabe.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-bildgebung-kontrastmittelgabe"
      },
      "name" : "MII PR Bildgebung Konstrastmittelgabe",
      "description" : "Dieses Profil bietet die Möglichkeit die Kontrastmittelgabe aus dem RIS zu erfassen und ist somit die Alternative zu der Erfassung der Kontrastmittelgabe aus den DICOM-Metadaten.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-bildgebung-koerperstruktur.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-bildgebung-koerperstruktur"
      },
      "name" : "MII PR Bildgebung Körperstruktur",
      "description" : "Dieses Profil beschreibt die dargestellte Körperstrukturen nach Morphologie und Lokalisation.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-bildgebung-radiologische-befundungsprozedur.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-bildgebung-radiologische-befundungsprozedur"
      },
      "name" : "MII PR Bildgebung Radiologische Befundungsprozedur",
      "description" : "Diese Profil beschreibt die radiologische Befundungsprozedur. Es legt fest, dass es sich hierbei um eine reine diagnostische Prozedur handelt",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-bildgebung-radiologische-beobachtung.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-bildgebung-radiologische-beobachtung"
      },
      "name" : "MII PR Bildgebung Radiologische Beobachtung",
      "description" : "Dieses Profil beschreibt den Befund/eine Beobachtung in der radiologischer Bildgebung. Es bietet die Möglichkeit strukturiert Beobachtungen abzubilden und den Befundbericht zu ergänzen.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-bildgebung-radiologische-messung.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-bildgebung-radiologische-messung"
      },
      "name" : "MII PR Bildgebung Radiologische Messung",
      "description" : "Dieses Profil beschreibt eine Messung in der radiologischer Bildgebung. Es bietet die Möglichkeit strukturiert Messungen abzubilden und den Befundbericht zu ergänzen.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-bildgebung-radiologischer-befund.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-bildgebung-radiologischer-befund"
      },
      "name" : "MII PR Bildgebung Radiologischer Befund",
      "description" : "Diese Ressource beschreibt einen radiologischen Befund",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-bildgebung-semistrukt-befundbericht.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-bildgebung-semistrukt-befundbericht"
      },
      "name" : "MII PR Bildgebung Semistrukturierter Befundbericht",
      "description" : "Dieses Profil bietet die Möglichkeit, den Befundbericht in einer semi-strukturierten Weise abzubilden. Es dient damit als Ergänzung zum eigentlichen Befundbericht",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-bildgebung-diagnostic-report-code-lnc.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-bildgebung-diagnostic-report-code-lnc"
      },
      "name" : "MII VS Bildgebung DiagnosticReport Code Loinc",
      "description" : "Import the ValueSet for Diagnostic Reports",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-bildgebung-diagnostic-report-code-sct.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-bildgebung-diagnostic-report-code-sct"
      },
      "name" : "MII VS Bildgebung DiagnosticReport Code SCT",
      "description" : "Import the ValueSet for Diagnostic Reports",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-bildgebung-findings-lnc.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-bildgebung-findings-lnc"
      },
      "name" : "MII VS Bildgebung Findings Loinc",
      "description" : "Import the ValueSet for LOINC Findings",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-bildgebung-findings-sct.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-bildgebung-findings-sct"
      },
      "name" : "MII VS Bildgebung Findings SCT",
      "description" : "Import the ValueSet for Diagnostic Reports and Service Request",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-bildgebung-mr-scanning-sequence.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-bildgebung-mr-scanning-sequence"
      },
      "name" : "MII VS Bildgebung Imaging Study MR Scanning Sequence",
      "description" : "Import the ValueSet for MR Scanning Sequence",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-bildgebung-mr-scanning-sequence-variant.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-bildgebung-mr-scanning-sequence-variant"
      },
      "name" : "MII VS Bildgebung Imaging Study MR Scanning Sequence Variant",
      "description" : "Import the ValueSet for MR Scanning Sequence Variant",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-bildgebung-pt-series-type-spacial.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-bildgebung-pt-series-type-spacial"
      },
      "name" : "MII VS Bildgebung Imaging Study PT Series Type Spacial",
      "description" : "Import the ValueSet for PT Series Type Spacial",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-bildgebung-pt-series-type-volumetric.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-bildgebung-pt-series-type-volumetric"
      },
      "name" : "MII VS Bildgebung Imaging Study PT Series Type Volumetric",
      "description" : "Import the ValueSet for PT Series Type Volumetric",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-bildgebung-us-transducer-type.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-bildgebung-us-transducer-type"
      },
      "name" : "MII VS Bildgebung Imaging Study US Transducer Type",
      "description" : "Import the ValueSet for US Transducer Type",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-bildgebung-imaging-procedure-code-sct.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-bildgebung-imaging-procedure-code-sct"
      },
      "name" : "MII VS Bildgebung ImagingProcedure Code SCT",
      "description" : "Import the ValueSet for Imaging Procedures",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-bildgebung-imagingStudy-series-view-position.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-bildgebung-imagingStudy-series-view-position"
      },
      "name" : "MII VS Bildgebung ImagingStudy-Series View Position",
      "description" : "Import the ValueSets for view position in MG and DX/CR series",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-bildgebung-instance-image-type-ct.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-bildgebung-instance-image-type-ct"
      },
      "name" : "MII VS Bildgebung Instance Image Type CT",
      "description" : "Import the ValueSet for Instance Image Type CT",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-bildgebung-instance-image-type-mr.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-bildgebung-instance-image-type-mr"
      },
      "name" : "MII VS Bildgebung Instance Image Type MR",
      "description" : "Import the ValueSet for Instance Image Type MR",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-bildgebung-instance-image-type-nm.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-bildgebung-instance-image-type-nm"
      },
      "name" : "MII VS Bildgebung Instance Image Type NM",
      "description" : "Import the ValueSet for Instance Image Type NM",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-bildgebung-instance-image-type-nm-implementation.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-bildgebung-instance-image-type-nm-implementation"
      },
      "name" : "MII VS Bildgebung Instance Image Type NM Implementation",
      "description" : "Import the ValueSet for Instance Image Type NM Implementation",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-bildgebung-instance-image-type-patient-examination.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-bildgebung-instance-image-type-patient-examination"
      },
      "name" : "MII VS Bildgebung Instance Image Type Patient Examination",
      "description" : "Import the ValueSet for Instance Image Type Examination",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-bildgebung-instance-image-type-pixel-data.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-bildgebung-instance-image-type-pixel-data"
      },
      "name" : "MII VS Bildgebung Instance Image Type Pixel Data",
      "description" : "Import the ValueSet for Instance Image Type Pixel Data",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-bildgebung-instance-image-type-us.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-bildgebung-instance-image-type-us"
      },
      "name" : "MII VS Bildgebung Instance Image Type US",
      "description" : "Import the ValueSet for Instance Image Type US",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-bildgebung-instance-image-type-us-implementation.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-bildgebung-instance-image-type-us-implementation"
      },
      "name" : "MII VS Bildgebung Instance Image Type US Implemantation",
      "description" : "Import the ValueSet for Instance Image Type US Implemantation",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-bildgebung-observation-body-site-sct.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-bildgebung-observation-body-site-sct"
      },
      "name" : "MII VS Bildgebung Observation Body Site SCT",
      "description" : "Import the ValueSet for Observation",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-bildgebung-service-request-code-sct.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-bildgebung-service-request-code-sct"
      },
      "name" : "MII VS Bildgebung ServiceRequest Code SCT",
      "description" : "Import the ValueSet for ServiceRequest",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Parameters"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Parameters-mii-param-bildgebung-manifest.html"
      }],
      "reference" : {
        "reference" : "Parameters/mii-param-bildgebung-manifest"
      },
      "name" : "mii-param-bildgebung-manifest",
      "exampleBoolean" : false
    }],
    "page" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
        "valueUrl" : "toc.html"
      }],
      "nameUrl" : "toc.html",
      "title" : "Table of Contents",
      "_title" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Inhaltsverzeichnis"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "generation" : "html",
      "page" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "index.html"
        }],
        "nameUrl" : "index.html",
        "title" : "Home",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Startseite"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "guidance.html"
        }],
        "nameUrl" : "guidance.html",
        "title" : "Guidance",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Anleitung"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown",
        "page" : [{
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "implementer-guidance.html"
          }],
          "nameUrl" : "implementer-guidance.html",
          "title" : "Guidance for Implementers",
          "_title" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "Anleitung für Implementierende"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "uml-diagrams.html"
          }],
          "nameUrl" : "uml-diagrams.html",
          "title" : "UML Diagrams",
          "_title" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "UML-Diagramme"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "generation" : "markdown"
        }]
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "security-and-privacy.html"
        }],
        "nameUrl" : "security-and-privacy.html",
        "title" : "Security and Privacy",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Sicherheit und Datenschutz"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "profiles.html"
        }],
        "nameUrl" : "profiles.html",
        "title" : "Profiles",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Profile"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "extensions.html"
        }],
        "nameUrl" : "extensions.html",
        "title" : "Extensions",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Extensions"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "capability-statements.html"
        }],
        "nameUrl" : "capability-statements.html",
        "title" : "Capability Statements",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "CapabilityStatements"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "logical-models.html"
        }],
        "nameUrl" : "logical-models.html",
        "title" : "Logical Models",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Logische Modelle"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "value-sets.html"
        }],
        "nameUrl" : "value-sets.html",
        "title" : "Value Sets",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "ValueSets"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "code-systems.html"
        }],
        "nameUrl" : "code-systems.html",
        "title" : "Code Systems",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "CodeSystems"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "examples.html"
        }],
        "nameUrl" : "examples.html",
        "title" : "Examples",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Beispiele"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "downloads.html"
        }],
        "nameUrl" : "downloads.html",
        "title" : "Downloads",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Downloads"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "changes.html"
        }],
        "nameUrl" : "changes.html",
        "title" : "Changelog",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Änderungshistorie"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "metadata.html"
        }],
        "nameUrl" : "metadata.html",
        "title" : "Metadata Overview",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Metadaten-Übersicht"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "version-history.html"
        }],
        "nameUrl" : "version-history.html",
        "title" : "Versioning",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Versionierung"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "ImplementationGuide-mii-ig-bildgebung.html"
        }],
        "nameUrl" : "ImplementationGuide-mii-ig-bildgebung.html",
        "title" : "MII ImplementationGuide Resource",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "MII ImplementationGuide Ressource"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "translationinfo.html"
        }],
        "nameUrl" : "translationinfo.html",
        "title" : "Translation Information",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Hinweise zur Übersetzung"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      }]
    },
    "parameter" : [{
      "code" : "path-resource",
      "value" : "input/predefined-resources"
    },
    {
      "code" : "path-pages",
      "value" : "input/intro-notes"
    },
    {
      "code" : "path-resource",
      "value" : "input/capabilities"
    },
    {
      "code" : "path-resource",
      "value" : "input/examples"
    },
    {
      "code" : "path-resource",
      "value" : "input/extensions"
    },
    {
      "code" : "path-resource",
      "value" : "input/models"
    },
    {
      "code" : "path-resource",
      "value" : "input/operations"
    },
    {
      "code" : "path-resource",
      "value" : "input/profiles"
    },
    {
      "code" : "path-resource",
      "value" : "input/resources"
    },
    {
      "code" : "path-resource",
      "value" : "input/vocabulary"
    },
    {
      "code" : "path-resource",
      "value" : "input/testing"
    },
    {
      "code" : "path-resource",
      "value" : "input/history"
    },
    {
      "code" : "path-resource",
      "value" : "fsh-generated/resources"
    },
    {
      "code" : "path-pages",
      "value" : "template/config"
    },
    {
      "code" : "path-pages",
      "value" : "input/images"
    },
    {
      "code" : "path-tx-cache",
      "value" : "input-cache/txcache"
    }]
  }
}

```

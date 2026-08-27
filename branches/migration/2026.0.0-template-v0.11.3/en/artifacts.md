# Artifacts Summary - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Behavior: Capability Statements 

The following artifacts define the specific capabilities that different types of systems are expected to have in order to comply with this implementation guide. Systems conforming to this implementation guide are expected to declare conformance to one or more of the following capability statements.

| | |
| :--- | :--- |
| [ MII CPS Bildgebung CapabilityStatement  ](CapabilityStatement-mii-cps-bildgebung-capabilitystatement.md) | Das vorliegende CapabilityStatement beschreibt alle verpflichtenden Interaktionen die ein konformes System unterstützen muss, um das Modul Bildgebung der Medizininformatik Initiative zu implementieren. |

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [ MII LM Bildgebung  ](StructureDefinition-mii-lm-bildgebung.md) | MII LogicalModel Modul Bildgebung |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ MII PR Bildgebung Anforderung Bildgebung  ](StructureDefinition-mii-pr-bildgebung-anforderung-bildgebung.md) | Profil zur Anforderung einer Bildgebung. |
| [ MII PR Bildgebung Behandlungsempfehlung  ](StructureDefinition-mii-pr-bildgebung-behandlungsempfehlung.md) | Diese Profil beschreibt die ärztliche Behandlungsempfehlung einer Person. Sie unterstützt den radiologischen Befund mit Zusatzinformation |
| [ MII PR Bildgebung Bildgebungsprozedur  ](StructureDefinition-mii-pr-bildgebung-bildgebungsprozedur.md) | Beschreibt die Tätigkeiten, wie eine Bildgebung ausgeführt wird. |
| [ MII PR Bildgebung Bildgebungsstudie  ](StructureDefinition-mii-pr-bildgebung-bildgebungsstudie.md) | Dieses Profil beschreibt die Bildgebung anhand der DICOM-Metadaten auf Studien-, Serien- sowie Instanzen-Ebene der jeweiligen DICOM-Studie. |
| [ MII PR Bildgebung Gerät  ](StructureDefinition-mii-pr-bildgebung-geraet.md) | Dieses Profil beschreibt das genutzte Gerät in der radiologischer Bildgebung. Es bietet die Möglichkeit, Informationen über das Gerät strukturiert abzubilden. |
| [ MII PR Bildgebung Konstrastmittelgabe  ](StructureDefinition-mii-pr-bildgebung-kontrastmittelgabe.md) | Dieses Profil bietet die Möglichkeit die Kontrastmittelgabe aus dem RIS zu erfassen und ist somit die Alternative zu der Erfassung der Kontrastmittelgabe aus den DICOM-Metadaten. |
| [ MII PR Bildgebung Körperstruktur  ](StructureDefinition-mii-pr-bildgebung-koerperstruktur.md) | Dieses Profil beschreibt die dargestellte Körperstrukturen nach Morphologie und Lokalisation. |
| [ MII PR Bildgebung Radiologische Befundungsprozedur  ](StructureDefinition-mii-pr-bildgebung-radiologische-befundungsprozedur.md) | Diese Profil beschreibt die radiologische Befundungsprozedur. Es legt fest, dass es sich hierbei um eine reine diagnostische Prozedur handelt |
| [ MII PR Bildgebung Radiologische Beobachtung  ](StructureDefinition-mii-pr-bildgebung-radiologische-beobachtung.md) | Dieses Profil beschreibt den Befund/eine Beobachtung in der radiologischer Bildgebung. Es bietet die Möglichkeit strukturiert Beobachtungen abzubilden und den Befundbericht zu ergänzen. |
| [ MII PR Bildgebung Radiologische Messung  ](StructureDefinition-mii-pr-bildgebung-radiologische-messung.md) | Dieses Profil beschreibt eine Messung in der radiologischer Bildgebung. Es bietet die Möglichkeit strukturiert Messungen abzubilden und den Befundbericht zu ergänzen. |
| [ MII PR Bildgebung Radiologischer Befund  ](StructureDefinition-mii-pr-bildgebung-radiologischer-befund.md) | Diese Ressource beschreibt einen radiologischen Befund |
| [ MII PR Bildgebung Semistrukturierter Befundbericht  ](StructureDefinition-mii-pr-bildgebung-semistrukt-befundbericht.md) | Dieses Profil bietet die Möglichkeit, den Befundbericht in einer semi-strukturierten Weise abzubilden. Es dient damit als Ergänzung zum eigentlichen Befundbericht |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ MII EX Bildgebung Bildgebungsgrund  ](StructureDefinition-mii-ex-bildgebung-bildgebungsgrund.md) | Die Extension ermöglicht es, den Bildgebungsgrund aus dem entsprechenden DICOM Tag [0040,1002] auf Studien-Ebene anzugeben. |
| [ MII EX Bildgebung Bildnummer  ](StructureDefinition-mii-ex-bildgebung-serie-uid.md) | Die Extension ermöglicht es, den Bildnummer aus dem entsprechenden DICOM Tag auf Studien-Ebene anzugeben. |
| [ MII EX Bildgebung Instanzdetails  ](StructureDefinition-mii-ex-bildgebung-instanz-details.md) | Die Extension ermöglicht es, Informationen zur ausgewählten Serie auf Instanz-Ebene anzugeben. |
| [ MII EX Bildgebung Kontrastmittel  ](StructureDefinition-mii-ex-bildgebung-kontrastmittel.md) | Die Extension ermöglicht es, die Gabe von Kontrastmitteln auf Serien-Ebene anzugeben. |
| [ MII EX Bildgebung Körpergewicht  ](StructureDefinition-mii-ex-bildgebung-gewicht.md) | Die Extension ermöglicht es, das Körpergewicht aus dem entsprechenden DICOM Tag [0010,1030] auf Studien-Ebene anzugeben. |
| [ MII EX Bildgebung Körpergröße  ](StructureDefinition-mii-ex-bildgebung-groesse.md) | Die Extension ermöglicht es, die Körpergröße aus dem entsprechenden DICOM Tag [0010,1020] auf Studien-Ebene anzugeben. |
| [ MII EX Bildgebung Modalität CT  ](StructureDefinition-mii-ex-bildgebung-modalitaet-ct.md) | Die Extension ermöglicht es die Ressourcen und Machbarkeitsanalysen auf CT Daten zu erweitern. |
| [ MII EX Bildgebung Modalität MG/CR/DX  ](StructureDefinition-mii-ex-bildgebung-modalitaet-mg-cr-dx.md) | Die Extension ermöglicht es die Ressourcen und Machbarkeitsanalysen auf MG, CR & DX Daten zu erweitern. |
| [ MII EX Bildgebung Modalität MR  ](StructureDefinition-mii-ex-bildgebung-modalitaet-mr.md) | Die Extension ermöglicht es die Ressourcen und Machbarkeitsanalysen auf MR Daten zu erweitern. |
| [ MII EX Bildgebung Modalität PT  ](StructureDefinition-mii-ex-bildgebung-modalitaet-pt.md) | Die Extension ermöglicht es die Ressourcen und Machbarkeitsanalysen auf PT Daten zu erweitern. |
| [ MII EX Bildgebung Modalität PT/NM  ](StructureDefinition-mii-ex-bildgebung-modalitaet-nm.md) | Die Extension ermöglicht es die Ressourcen und Machbarkeitsanalysen auf NM Daten zu erweitern. |
| [ MII EX Bildgebung Modalität US  ](StructureDefinition-mii-ex-bildgebung-modalitaet-us.md) | Die Extension ermöglicht es die Ressourcen und Machbarkeitsanalysen auf US Daten zu erweitern. |
| [ MII EX Bildgebung SOPInstanz  ](StructureDefinition-mii-ex-bildgebung-sop-instanz-uid.md) | Die Extension ermöglicht es, den SOPInstanz aus dem entsprechenden DICOM Tag auf Studien-Ebene anzugeben. |
| [ MII EX Bildgebung Schichtdicke  ](StructureDefinition-mii-ex-bildgebung-serie-schichtdicke.md) | Die Extension ermöglicht es, die Schichtdicke auf Serien-Ebene anzugeben, anstelle der individuellen Angabe auf Instanz-Ebene. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ MII VS Bildgebung DiagnosticReport Code Loinc  ](ValueSet-mii-vs-bildgebung-diagnostic-report-code-lnc.md) | Import the ValueSet for Diagnostic Reports |
| [ MII VS Bildgebung DiagnosticReport Code SCT  ](ValueSet-mii-vs-bildgebung-diagnostic-report-code-sct.md) | Import the ValueSet for Diagnostic Reports |
| [ MII VS Bildgebung Findings Loinc  ](ValueSet-mii-vs-bildgebung-findings-lnc.md) | Import the ValueSet for LOINC Findings |
| [ MII VS Bildgebung Findings SCT  ](ValueSet-mii-vs-bildgebung-findings-sct.md) | Import the ValueSet for Diagnostic Reports and Service Request |
| [ MII VS Bildgebung Imaging Study MR Scanning Sequence  ](ValueSet-mii-vs-bildgebung-mr-scanning-sequence.md) | Import the ValueSet for MR Scanning Sequence |
| [ MII VS Bildgebung Imaging Study MR Scanning Sequence Variant  ](ValueSet-mii-vs-bildgebung-mr-scanning-sequence-variant.md) | Import the ValueSet for MR Scanning Sequence Variant |
| [ MII VS Bildgebung Imaging Study PT Series Type Spacial  ](ValueSet-mii-vs-bildgebung-pt-series-type-spacial.md) | Import the ValueSet for PT Series Type Spacial |
| [ MII VS Bildgebung Imaging Study PT Series Type Volumetric  ](ValueSet-mii-vs-bildgebung-pt-series-type-volumetric.md) | Import the ValueSet for PT Series Type Volumetric |
| [ MII VS Bildgebung Imaging Study US Transducer Type  ](ValueSet-mii-vs-bildgebung-us-transducer-type.md) | Import the ValueSet for US Transducer Type |
| [ MII VS Bildgebung ImagingProcedure Code SCT  ](ValueSet-mii-vs-bildgebung-imaging-procedure-code-sct.md) | Import the ValueSet for Imaging Procedures |
| [ MII VS Bildgebung ImagingStudy-Series View Position  ](ValueSet-mii-vs-bildgebung-imagingStudy-series-view-position.md) | Import the ValueSets for view position in MG and DX/CR series |
| [ MII VS Bildgebung Instance Image Type CT  ](ValueSet-mii-vs-bildgebung-instance-image-type-ct.md) | Import the ValueSet for Instance Image Type CT |
| [ MII VS Bildgebung Instance Image Type MR  ](ValueSet-mii-vs-bildgebung-instance-image-type-mr.md) | Import the ValueSet for Instance Image Type MR |
| [ MII VS Bildgebung Instance Image Type NM  ](ValueSet-mii-vs-bildgebung-instance-image-type-nm.md) | Import the ValueSet for Instance Image Type NM |
| [ MII VS Bildgebung Instance Image Type NM Implementation  ](ValueSet-mii-vs-bildgebung-instance-image-type-nm-implementation.md) | Import the ValueSet for Instance Image Type NM Implementation |
| [ MII VS Bildgebung Instance Image Type Patient Examination  ](ValueSet-mii-vs-bildgebung-instance-image-type-patient-examination.md) | Import the ValueSet for Instance Image Type Examination |
| [ MII VS Bildgebung Instance Image Type Pixel Data  ](ValueSet-mii-vs-bildgebung-instance-image-type-pixel-data.md) | Import the ValueSet for Instance Image Type Pixel Data |
| [ MII VS Bildgebung Instance Image Type US  ](ValueSet-mii-vs-bildgebung-instance-image-type-us.md) | Import the ValueSet for Instance Image Type US |
| [ MII VS Bildgebung Instance Image Type US Implemantation  ](ValueSet-mii-vs-bildgebung-instance-image-type-us-implementation.md) | Import the ValueSet for Instance Image Type US Implemantation |
| [ MII VS Bildgebung Observation Body Site SCT  ](ValueSet-mii-vs-bildgebung-observation-body-site-sct.md) | Import the ValueSet for Observation |
| [ MII VS Bildgebung ServiceRequest Code SCT  ](ValueSet-mii-vs-bildgebung-service-request-code-sct.md) | Import the ValueSet for ServiceRequest |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ MII CS Bildgebung Instance Image Type  ](CodeSystem-mii-cs-bildgebung-instance-image-type.md) | Image type für Radiologische Bilder |
| [ MII CS Bildgebung Scanning Sequence  ](CodeSystem-mii-cs-bildgebung-scanning-sequence.md) | Scanning Sequence für MR Untersuchungen |
| [ MII CS Bildgebung Scanning Sequence Variant  ](CodeSystem-mii-cs-bildgebung-scanning-sequence-variant.md) | Scanning Sequence Varianten für MR Untersuchungen |
| [ MII CS Bildgebung Series Type  ](CodeSystem-mii-cs-bildgebung-series-type.md) | Series Type für PET Untersuchungen |
| [ MII CS Bildgebung Transducer Type  ](CodeSystem-mii-cs-bildgebung-transducer-type.md) | Schallkopftyp für US Untersuchungen |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [ Beispiel-Patient (synthetisch)  ](Patient-PatExample.md) | Synthetischer Beispiel-Patient als Ziel der Patient/PatExample-Referenzen der Beispielinstanzen dieses Moduls. Kein Bestandteil der Spezifikation — dient ausschließlich der Auflösbarkeit der Beispiel-Referenzen im gerenderten Leitfaden. |
| [ MII Example Bildgebung BodyStructure  ](BodyStructure-mii-exa-bildgebung-koerperstruktur.md) |  |
| [ MII Example Bildgebung Care Plan  ](CarePlan-mii-exa-bildgebung-behandlungsempfehlung.md) | The patient must receive vacuum biopsy |
| [ MII Example Bildgebung Composition  ](Composition-mii-exa-bildgebung-semistrukt-befundbericht.md) |  |
| [ MII Example Bildgebung Device  ](Device-mii-exa-bildgebung-geraet.md) |  |
| [ MII Example Bildgebung Diagnostic Report  ](DiagnosticReport-mii-exa-bildgebung-radiologischer-Befund.md) |  |
| [ MII Example Bildgebung Imaging Procedure  ](Procedure-mii-exa-bildgebung-bildgebungsprozedur.md) |  |
| [ MII Example Bildgebung Imaging Study CR  ](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-cr.md) | Thorax auf Station; |
| [ MII Example Bildgebung Imaging Study CT  ](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-ct.md) | whole body aquisition |
| [ MII Example Bildgebung Imaging Study MR  ](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-mr.md) | Knie DOT |
| [ MII Example Bildgebung Imaging Study MR Serie  ](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-mr-series.md) | Knie DOT |
| [ MII Example Bildgebung Imaging Study NM  ](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-nm.md) | whole body aquisition |
| [ MII Example Bildgebung Imaging Study PT  ](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-pt.md) | whole body aquisition |
| [ MII Example Bildgebung Imaging Study US  ](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-us.md) | Abdomen Ober- und Unterbauch |
| [ MII Example Bildgebung Kontrastmittelgabe  ](MedicationAdministration-mii-exa-bildgebung-kontrastmittelgabe.md) |  |
| [ MII Example Bildgebung Radiologische Beobachtung  ](Observation-mii-exa-bildgebung-radiologische-beobachtung.md) |  |
| [ MII Example Bildgebung Radiologische Messung  ](Observation-mii-exa-bildgebung-radiologische-messung.md) |  |
| [ MII Example Bildgebung ReadProcedure  ](Procedure-mii-exa-bildgebung-radiologische-befundungsprozedur.md) |  |
| [ MII Example Bildgebung Service Request  ](ServiceRequest-mii-exa-bildgebung-anforderung-bildgebung.md) |  |

### Other 

These are resources that are used within this implementation guide that do not fit into one of the other categories.

| |
| :--- |
| [ mii-param-bildgebung-manifest  ](Parameters-mii-param-bildgebung-manifest.md) |


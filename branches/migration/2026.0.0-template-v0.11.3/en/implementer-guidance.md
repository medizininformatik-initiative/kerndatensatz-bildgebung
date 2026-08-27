# Guidance for Implementers - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Guidance**](guidance.md)
* **Guidance for Implementers**

## Guidance for Implementers

Technical guidance for DIC implementers of the **Bildgebung** module: the context within the overall project, the relations to other KDS modules, and the underlying standards and references.

### Context in the overall project / relations to other modules

Imaging modalities are of essential importance for medical diagnostics and consequently serve as one of the foundations for therapy decisions and treatment planning as well as for research purposes. However, the degree of structuring and the way image data are described vary considerably between sites. A comprehensive overview of the availability of structured image data at the consortium sites is currently not available. This circumstance is accounted for by the proposed staged provision of data, which depends on the data available.

#### The module in the context of national and international developments

Within the MII, the KDS module Bildgebung was the first comprehensive FHIR-based information model for imaging data developed and published in the German context. Other national initiatives, such as MIO42, were involved in the development and have adopted structural modelling decisions. At the European level, the work within the European Health Data Space (EHDS) is particularly relevant; harmonization proposals for imaging data models are currently being discussed there. The MII KDS module Bildgebung will be reviewed for possible adaptation and compatibility needs in the next release (2027). The model of the Swiss Personalized Health Network (SPHN) also contains individual conceptual approaches that could become relevant for the future development of the module.

#### Relation to the module Person

Imaging studies are assigned to a patient via references from the **study** resource (ImagingStudy) to the module [PERSON](https://medizininformatik-initiative.github.io/kerndatensatz-basis/2026.0.0/en/). Likewise, the **diagnostic report** (DiagnosticReport) and the **request** (ServiceRequest) reference the module [PERSON](https://medizininformatik-initiative.github.io/kerndatensatz-basis/2026.0.0/en/).

#### Relation to the module Fall (encounter)

Imaging studies are assigned to an encounter via references from the **study** resource (ImagingStudy) or the **diagnostic report** (DiagnosticReport) to the module [FALL](https://medizininformatik-initiative.github.io/kerndatensatz-basis/2026.0.0/en/). A reference to the respective encounter should always be carried along to establish the relation of the imaging study to that encounter.

#### Relation to the module Prozedur (procedure)

In connection with imaging modalities there can be relations to performed procedures, for example an MRI examination before an operation. For information about the performed procedure, the module [PROZEDUR](https://medizininformatik-initiative.github.io/kerndatensatz-basis/2026.0.0/en/) is used in the resources **study** (ImagingStudy), **diagnostic report** (DiagnosticReport) and in the linked resource **generic observation** (Observation).

#### Relation to the module Diagnose (diagnosis)

The **previous finding** resource (Condition) contains links to the module [DIAGNOSE](https://medizininformatik-initiative.github.io/kerndatensatz-basis/2026.0.0/en/), which make it possible to record the imaging examination as a diagnostic tool supporting the diagnosis. These are represented via a reference in the **request** resource (ServiceRequest), which in turn is referenced in the **diagnostic report** (DiagnosticReport).

#### Relation to the module Medikation (medication)

To represent contrast administration, both the **imaging procedure** (Procedure) and the **study** (ImagingStudy) establish a relation to the module [MEDIKATION](https://www.medizininformatik-initiative.de/Kerndatensatz/KDS_Medikation_2026/MIIIGModulMedikation.html). In the **imaging procedure**, the contrast administration is represented via the **medication administration** (MedicationAdministration), and in the **study** (ImagingStudy) it is additionally complemented by the **medication statement** (MedicationStatement).

### References

The Core Dataset module **Bildgebung** follows the common technical standards of medical imaging. This primarily concerns the [DICOM standard](https://www.dicomstandard.org/) for FHIR profiling of relevant technical and medical concerns.

The code systems, terminologies and references used for procedures, diagnoses and related medical concerns are:

* [SNOMED CT](https://www.snomed.org/)
* [OPS - Operationen- und Prozedurenschlüssel](https://www.bfarm.de/DE/Kodiersysteme/Klassifikationen/OPS-ICHI/OPS/_node.html)
* [RadLex](https://www.rsna.org/practice-tools/data-tools-and-standards/radlex-radiology-lexicon)
* [LOINC - Logical Observation Identifiers Names and Codes](https://loinc.org/)
* [ICD - International Statistical Classification of Diseases and Related Health Problems](https://klassifikationen.bfarm.de/icd-10-gm/kode-suche/htmlgm2024/index.htm)
* [GOLD - German Oncological Data Standard](https://vision-zero-oncology.github.io/GOLD/profiles.html)
* [MIO](https://mio.kbv.de/site/mio#)

Reporting-specific extension modules and reporting profiles that reference this implementation should follow the common reporting guidelines and criteria, e.g.:

* Breast - [BI-RADS](https://www.acr.org/Clinical-Resources/Clinical-Tools-and-Reference/Reporting-and-Data-Systems/BI-RADS)
* Prostate - [PI-RADS](https://www.acr.org/Clinical-Resources/Clinical-Tools-and-Reference/Reporting-and-Data-Systems/PI-RADS)
* Liver - [LI-RADS](https://www.acr.org/Clinical-Resources/Clinical-Tools-and-Reference/Reporting-and-Data-Systems/LI-RADS)
* COVID-19 - [CO-RADS](https://radiologyassistant.nl/chest/covid-19/corads-classification)
* DRG reporting templates - [DRG-Templates GitHub](https://github.com/DRGagit/ak_befundung)

In addition, the [HL7 FHIR core specification](http://hl7.org/fhir/R4/license.html) was used — in particular the resources [ImagingStudy](https://hl7.org/fhir/R4/imagingstudy.html) and [DiagnosticReport](https://hl7.org/fhir/R4/diagnosticreport.html), and additionally the resources [Observation](https://hl7.org/fhir/R4/observation.html), [Composition](https://hl7.org/fhir/R4/composition.html), [BodyStructure](https://hl7.org/fhir/R4/bodystructure.html) and [ServiceRequest](https://hl7.org/fhir/R4/servicerequest.html).

This specification was designed on the basis of the description of the MII Core Dataset in the version of 10 March 2017 [(PDF)](https://www.medizininformatik-initiative.de/sites/default/files/inline-files/MII_04_Kerndatensatz_1-0.pdf) and the dataset description in [ART-DECOR](https://art-decor.org/ad/#/mide-/datasets/dataset/2.16.840.1.113883.3.1937.777.24.1.1/2018-06-05T12:44:12/concept/2.16.840.1.113883.3.1937.777.24.2.2795/2023-11-14T08:32:26).


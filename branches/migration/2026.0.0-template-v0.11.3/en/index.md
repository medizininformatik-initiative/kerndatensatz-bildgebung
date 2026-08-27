# Home - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* **Home**

## Home

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/ImplementationGuide/mii-ig-bildgebung | *Version*:2027.0.0-ballot |
| Active as of 2026-08-27 | *Computable Name*:MII_IG_Bildgebung |

### Introduction

This specification describes the FHIR representation of the Core Dataset (CDS) module **Bildgebung** (Imaging) of the Medical Informatics Initiative (MII). It covers the module's use cases and the associated FHIR profiles, extensions and terminology resources in their normative form. The MII Core Dataset enables the standardized secondary use of routine clinical data for medical research.

| | |
| :--- | :--- |
| Date | 2026-09-01 |
| Version | 2027.0.0-ballot (CalVer`YYYY.n.n`) |
| Status | active |
| Realm | DE |

### Module description

The Core Dataset module **Bildgebung** contains data elements for documenting radiological imaging and reporting across all common modalities. It is part of the Core Dataset (KDS) of the Medical Informatics Initiative (MII).

Medical imaging plays a central role in clinical practice for the diagnosis, therapy and documentation of a wide range of diseases, and is expected to become even more important. Hospitals hold a steadily growing volume of clinical image data. These data are crucial for patient-centered, individualized healthcare and drive the development of new analysis methods to optimize the standard of care. The secondary use of these data offers massive potential which this module of the KDS within the MII is designed to unlock.

#### Submodules

Broadly, the entire Core Dataset module **Bildgebung** can be divided into two submodules: the ImagingStudy with information from the DICOM header, and the representation of the radiological diagnostic report via the DiagnosticReport. Both submodules complement each other in the representation of their data elements and were aligned congruently. To obtain a complete picture of the available data, both submodules need to be used. In principle, however, the submodules can also be implemented independently of each other if only one data source (e.g. the RIS) has been connected at a given site so far.

##### Submodule "Metadata"

For modelling purposes, the ImagingStudy was structured into three levels:

1. study level
1. series level
1. instance level

The design follows the international FHIR resource [ImagingStudy](https://hl7.org/fhir/R4/imagingstudy.html), considering which elements are relevant for the Medical Informatics Initiative. It was also discussed which further DICOM metadata of interest should be represented in the profile.

Primarily, modality-specific attributes were added at series level. These are intended to provide deeper technical insight into the modality used:

* For the X-ray-based modalities (DX, CT, MG, CR), the X-ray tube voltage and tube current are captured, as well as exposure, exposure time and view position.
* The nuclear-medicine modalities (NM and PT) include the dose and further information on the administered radiopharmaceutical, radionuclide and tracer.
* For the MR modality, the scanning sequence and variant as well as the magnetic field strength and the time intervals TE, TR and TI are represented.
* For ultrasound (US), the transducer type, transducer frequency, pulse repetition frequency and ultrasound color are captured.

At present these eight modalities (MR, CT, DX, CR, MG, US, NM and PT) are covered by the submodule; they account for the majority of routine radiology. Further modalities are planned to be specified in the future.

The original element names from the FHIR profile were translated into German and, where necessary, adapted for readability. The instance level and the series level are entirely optional, so that only the study-level attributes may be filled. However, filling the two lower levels as well is recommended where possible, to obtain a comprehensive picture of the represented imaging studies.

##### Submodule "Diagnostic report"

The report submodule considers two perspectives whose common element is the diagnostic report:

1. Highly structured reports and their results can be represented by a generic observation.
1. Un- or semi-structured reports (e.g. historical free-text reports) can be represented via the entities semi-structured report and report section. Here it is also possible to represent individual structured observations as generic Observations.

This concept enables both the integration of existing historical reports (backward compatibility) and the use of new, highly structured reporting templates from industry (forward compatibility).

In the first version of the Core Dataset module there are no fixed rules yet for representing individual structured finding values. Instead, a generic observation is defined as a basis for developing profiles for structured finding values in future iterations, based on domain requirements (e.g. from use cases or DRG templates).

The central element of the submodule is the diagnostic report. It forms the frame for the information of the finding, which can be represented either as a semi-structured document (free text organized into sections), as structured observations, or as a combination of both. Modelling a body structure (e.g. an observed tumour) allows the direct observation of a course over time (e.g. growth of a tumour).

If the reading follows a predefined algorithm, this can be stated as a reading procedure. Every report contains a reference to the underlying images, which are represented as a study (cf. submodule "Metadata").

### Target audience

##### Implementers

Data Integration Centers (DIC), software developers and system architects building FHIR-based solutions.
 → see [Profiles](profiles.md) and [Logical Models](logical-models.md).

##### Researchers

Scientists using KDS data for medical research.
 → see [Guidance](guidance.md).

### Contents

* **[Guidance](guidance.md)** — getting started and domain notes.
* **Conformance** — the KDS-wide conformance rules (requirements language, Must Support, handling missing data) are maintained centrally by the [Meta module](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Conformance); the module-specific [Security and Privacy](security-and-privacy.md) considerations are part of this guide.
* **[Profiles](profiles.md)** and the further **[artifact pages](artifacts.md)** — the technical artifacts.
* **[Examples](examples.md)** — example instances.
* **[Dependencies](ImplementationGuide-mii-ig-bildgebung.md)** — the ImplementationGuide resource with the dependency table, cross-version analysis and copyright statements.

### Related guides

The MII Core Dataset consists of several modules; the [Meta module](https://www.medizininformatik-initiative.de/fhir/fdpg/ImplementationGuide/mii-ig-meta) holds the cross-module artifacts. The basic modules (Person, Fall, Diagnose, Prozedur, Laborbefund, Medikation, Consent) are referenced by this module — see the relations described under [Guidance for Implementers](implementer-guidance.md).

### Imprint

This guide was produced within the Medical Informatics Initiative and is, per its governance process, subject to the ballot procedure of the Interoperability Forum and the Technical Committees of HL7 Germany e. V.

### Contact

* Alexa Iancu, Universitätsklinikum Erlangen (UKER)
* Karoline Buckow, TMF – Technologie- und Methodenplattform für die vernetzte medizinische Forschung e.V.
* Franziska Klepka, TMF – Technologie- und Methodenplattform für die vernetzte medizinische Forschung e.V.

Questions about this publication can be asked at any time on [chat.fhir.org](https://chat.fhir.org/) in the stream 'german/mi-initiative'.

Comments and criticism are welcome as issues on [GitHub](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/issues).

### Authors (in alphabetical order)

* Sebastian Arndt (Universitätsklinikum Erlangen)
* Steven Böhner (Universitätsklinikum Regensburg)
* Viola Braunmüller (Universitätsklinikum Tübingen)
* Noemi Deppenwiese (Universitätsklinikum Erlangen)
* Teresa Graetz (Universitätsklinikum Erlangen)
* Alexa Iancu (Universitätsklinikum Erlangen)
* Johannes Kast (Mint Medical GmbH)
* David Männle (Universitätsmedizin Mannheim)
* Máté Maros (Universitätsmedizin Mannheim)
* Matthias May (Universitätsklinikum Erlangen)
* Daniel Pinto dos Santos (Universitätsklinikum Köln, Universitätsklinikum Frankfurt)
* Tobias Pogarell (Universitätsklinikum Erlangen)
* Lucas Mundo (Universitätsklinikum Erlangen)
* Fabian Schinzler (Universitätsklinikum Würzburg)
* Daniel Schmitz (Universitätsmedizin Mainz)
* Friederike Schneider (Mint Medical GmbH)
* Damian Wrobel (Mint Medical GmbH)

### Copyright and terms of use

© 2019+ TMF e. V., Charlottenstraße 42, 10117 Berlin. This work is licensed under the [Creative Commons Attribution 4.0 International License (CC-BY-4.0)](https://creativecommons.org/licenses/by/4.0/).

For the usage rights of the underlying FHIR technology, see the FHIR base specification.

Some code systems used are published and maintained by other organizations; the copyright of the respective publishers applies.

### Disclaimer

The content of this document is public. Note that parts of this document are based on FHIR version R4, for which the copyright of HL7 International applies.

Although this publication was prepared with the greatest care, the authors cannot accept any liability for direct or indirect damage that might arise from the content of this specification.


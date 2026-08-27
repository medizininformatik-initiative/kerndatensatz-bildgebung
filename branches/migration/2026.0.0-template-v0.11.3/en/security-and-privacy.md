# Security and Privacy - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* **Security and Privacy**

## Security and Privacy

This section addresses security and privacy experts. General requirements are in the FHIR core specification — [Security & Privacy Module](https://build.fhir.org/secpriv-module.html) and the [security checklist](https://build.fhir.org/security.html). This page does not repeat them; it links the overarching data protection framework and states what is **specific to this module**.

#### 1. The overarching data protection concept

The [overarching data protection concept of the Medical Informatics Initiative](https://www.medizininformatik-initiative.de/en/data-protection-concept) governs how patient data may be processed for research across the network of Data Integration Centers: it covers the legal basis (the MII Broad Consent), the roles of the Data Integration Centers and Use & Access Committees, and the cross-site application scenarios (feasibility queries, distributed analyses, data and biosample provision). Everything this module specifies operates inside that framework — this guide adds no processing purpose of its own.

#### 2. De-identification, minimisation and pseudonymisation (DIMP)

How data leaving a Data Integration Center is de-identified in practice is specified by [DIMP (De-Identification — Minimisation — Pseudonymisation)](https://medizininformatik-initiative.github.io/dataportal/data-node/DIMP.html) in the data portal documentation: direct identifiers are removed, data elements not needed by the approved project are dropped, and identifying values are replaced by project-specific pseudonyms (FHIR Pseudonymizer configuration). The profiles of this module describe data **before** DIMP is applied; which elements survive a concrete data release is decided per project by the DIMP configuration, not by this guide.

#### 3. Module-specific aspects

This is the module's own contribution: the security and privacy properties that follow from the **kind of data this module carries**. **Its content is optional** — not every module has aspects of its own. If yours does not, the whole section body becomes the following default text (delete the example and TODO boxes below and adopt it verbatim):

> Beyond the overarching framework above — the overarching data protection concept, the Broad Consent it rests on, and DIMP — this module carries no data category that raises security or privacy aspects of its own, and it places no module-specific security or privacy requirements on implementers.

> **Written during migration - review before release.** The following module-specific aspects were derived from the module's own artifacts (instance-details extension: `burnedInAnnotation`; DICOM metadata in ImagingStudy); they were not present as narrative in the source guide.

Beyond the overarching framework above, two properties of imaging data deserve attention when this module is implemented:

* **Identifying DICOM metadata.** The ImagingStudy profile and its extensions carry values taken directly from DICOM headers (UIDs, device data, acquisition parameters). DICOM headers in the source systems can contain directly identifying attributes; the DIMP configuration decides which elements survive a concrete data release.
* **Burned-in annotations.** Pixel data of some modalities (especially US and secondary captures) can contain patient information burned into the image itself. The instance-details extension represents the DICOM attribute **Burned In Annotation** precisely so that such instances can be recognized; systems providing image data for secondary use SHOULD evaluate this attribute in their de-identification pipelines.


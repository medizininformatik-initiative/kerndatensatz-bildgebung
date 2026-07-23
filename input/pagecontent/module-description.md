The **Imaging** core dataset module contains data elements for documenting radiological imaging and reporting across all common modalities. It is part of the Core Dataset (CDS) of the Medical Informatics Initiative (MII).

Medical imaging plays a central role in clinical practice for the diagnosis, therapy, and documentation of various diseases, and its importance is expected to grow further. A steadily increasing volume of clinical image data exists in hospitals. This data is decisive for patient-centred and individualised health care and drives the development of new analysis methods for optimising the standard of care. The secondary use of this data offers considerable potential, which can in the future be captured through this CDS module of the MII.

## Sub-Modules

Broadly, the entire **Imaging** core dataset module can be divided into two sub-modules: the ImagingStudy, containing information from the DICOM header, and the representation of the radiological report via the DiagnosticReport.
Both sub-modules complement each other in representing their data elements and were designed congruently. To obtain an overall picture of the available data, both sub-modules must be used. In theory, however, it is also possible to implement the sub-modules independently of each other, for example if only one data source (e.g. RIS) has been made available at a given site.

### Sub-Module "Metadata"

For modelling purposes, the ImagingStudy is analogously structured into three sub-modules:
1. Study level
2. Series level
3. Instance level

The international FHIR resource "ImagingStudy" (https://hl7.org/fhir/R4/imagingstudy.html) served as the basis, and it was considered which elements are relevant for the Medical Informatics Initiative. It was further discussed which additional DICOM metadata are of interest and should be represented in the profile.

Primarily, modality-specific attributes were added at the series level. These are intended to provide a deeper technical insight into the respective modality used.
* For the X-ray-based modalities (DX, CT, MG, CR), the values of the X-ray tube voltage and the X-ray tube current are considered, as well as the exposure and exposure time values and the view position.
* The nuclear medicine modalities (NM and PT) include dose and further information about the applied radiopharmaceutical, radionuclide and tracer.
* For the MR modality, the scanning sequence and variant are represented, as well as the magnetic field strength used and the time intervals TE, TR and TI.
* For ultrasound (US), the transducer type used, the transducer frequency, the pulse repetition frequency, and the ultrasound colour are considered.

Currently, these eight modalities (MR, CT, DX, CR, MG, US, NM and PT) are represented in the sub-module, covering the majority of everyday radiological clinical practice. In the future, further modalities are planned to be specified.

The original element names from the FHIR profile were translated into German and, where appropriate, adjusted for better readability. Both the instance level and the series level are entirely optional, so that only the attributes at the study level can be filled. However, it is recommended, where possible, to also fill the two lower levels in order to obtain a comprehensive picture of the imaging studies represented.

### Sub-Module "Report"

The report sub-module considers two perspectives, whose common element is the report:

1. Highly structured reports and their results can be represented by a generic observation.
2. Unstructured or semi-structured reports (e.g. historical free-text reports) can be represented via the entities semi-structured report and report section. Here it is also possible to represent individual structured observations as generic Observations.

This concept enables both the integration and consideration of existing historical reports (backward compatibility) and the use of new highly structured report templates from industry (forward compatibility).

In the first version of the core dataset module, there are no fixed requirements yet for representing individual structured report values. For this purpose, a generic observation is defined, which serves as a basis for developing profiles for structured report values in future iterations based on subject-matter requirements (e.g. from use cases, DRG templates).

The central element of the sub-module is the report. This forms the framework for the report information, which can be represented either as a semi-structured document (free text divided into sections), as a structured observation, or as a combination of both. Modelling a body structure (e.g. an observed tumour) allows the direct observation of a course (e.g. growth of a tumour).

If the reporting follows a predefined algorithm, this can be specified as a reporting procedure. Each report contains a reference to the underlying images, which are represented as a study (cf. sub-module "Metadata").

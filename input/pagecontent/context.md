Imaging modalities are of essential importance for medical diagnostics and thus serve as one of the foundations for deciding on therapies and treatment planning as well as for research purposes. The degree of structuring and the type of description of image data, however, varies considerably between sites. A comprehensive overview of the availability of structured image data at the consortium sites is currently not available. This circumstance is addressed by the proposed graded provision, which depends on the available data.

### The Module in the Context of National and International Developments

The CDS Imaging module was developed and published within the MII as the first comprehensive FHIR-based information model for imaging data in the German context. Other national initiatives, such as MIO42, were involved in the development and adopted structural modelling decisions.
At the European level, the work carried out within the framework of the European Health Data Space (EHDS) is particularly relevant, where harmonisation proposals for imaging data models are currently being discussed. The MII CDS Imaging module will be reviewed for possible adaptation and compatibility needs in the next release (2027).
The model from the Swiss Personalized Health Network (SPHN) also contains individual conceptual approaches that could be relevant for the further development of the module in the future.

### Relationship to the Person Module

Imaging studies are assigned to a patient via references from the **Study** (ImagingStudy) resource to the [PERSON](https://medizininformatik-initiative.github.io/kerndatensatz-basis/2026.0.0/) module. Likewise, the [PERSON](https://medizininformatik-initiative.github.io/kerndatensatz-basis/2026.0.0/) module is referenced in the **Report** (DiagnosticReport) and in the **Request** (ServiceRequest).

### Relationship to the Case Module

Imaging studies are assigned to a treatment case via references from the **Study** (ImagingStudy) or **Report** (DiagnosticReport) resource to the [CASE](https://medizininformatik-initiative.github.io/kerndatensatz-basis/2026.0.0/) module. A reference to the respective treatment case should always be carried along in order to establish the relation of the imaging study to that case.

### Relationship to the Procedure Module

In the context of imaging modalities, relationships to performed procedures may arise, for example an MRI examination before an operation. For information about the performed procedure, the [PROCEDURE](https://medizininformatik-initiative.github.io/kerndatensatz-basis/2026.0.0/) module is used in the **Study** (ImagingStudy), **Report** (DiagnosticReport) resources as well as in the linked **GenericObservation** (Observation) resource.

### Relationship to the Diagnosis Module

The **Prior Finding** (Condition) resource contains links to the [DIAGNOSIS](https://medizininformatik-initiative.github.io/kerndatensatz-basis/2026.0.0/) module, which make it possible to capture the imaging examination as a diagnostic tool to support the diagnosis. These are represented via a reference in the **Request** (ServiceRequest) resource, which in turn is referenced in the **Report** (DiagnosticReport).

### Relationship to the Medication Module

To represent the administration of contrast media, a reference to the [MEDICATION](https://www.medizininformatik-initiative.de/Kerndatensatz/KDS_Medikation_2026/MIIIGModulMedikation.html) module is established both in the **Imaging Procedure** (Procedure) and in the **Study** (ImagingStudy). In the **Imaging Procedure**, the contrast media administration is represented using **MedicationAdministration**, and in the **Study** (ImagingStudy) it is additionally complemented by **MedicationStatement**.

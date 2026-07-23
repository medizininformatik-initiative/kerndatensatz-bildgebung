Concrete examples:

**Recording and documentation of an imaging examination for diagnosis:**

Example: A female patient with suspected axial spondyloarthritis with ankylosing spondylitis (Morbus Bechterew) is admitted as an inpatient for diagnostic evaluation. A native MRI is performed for diagnosis.

MRI is suitable for early diagnosis, as inflammatory changes in the sacroiliac joints are already visible when conventional methods (X-ray) are still inconspicuous.

For this MRI acquisition, a series of the hip region is generated. The acquisition parameters, which are also stored in the DICOM header, are matched to the individual FHIR resources, thereby documenting the imaging (e.g. Study Instance UID, Series Instance UID, modality, etc.).

If, for example for research purposes, a query is made regarding how many native hip MRIs for the diagnosis of Morbus Bechterew were performed in this hospital, this can be answered without much effort thanks to the FHIR implementation.

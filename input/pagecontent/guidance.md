<!-- markdownlint-disable MD041 -->
<!-- TODO:REVIEW machine translation of source page guidance.md (de) -->

This page bundles the domain-oriented introduction to the **Bildgebung**
module: application scenarios, the [UML diagrams](uml-diagrams.html) of the
information model, and the [guidance for implementers](implementer-guidance.html).

### Scenarios for applying the module

Concrete examples:

**Recording and documenting an imaging procedure for making a diagnosis:**

Example: a patient with suspected axial spondyloarthritis (Bechterew's
disease) is admitted for diagnostic evaluation. A native MRI is performed to
establish the diagnosis.

MRI is suitable for early diagnosis, since inflammatory changes in the
sacroiliac joints are already visible while conventional procedures (X-ray)
are still unremarkable.

For this MRI acquisition, a series of the hip region is generated. The
acquisition parameters, which are also stored in the DICOM header, are matched
to the individual FHIR resources, and the imaging is thereby documented
(e.g. Study Instance UID, Series Instance UID, modality etc.).

If, for example, a research request asks how many native hip MRIs were
performed at this hospital to diagnose Bechterew's disease, this can be
answered with little effort thanks to the FHIR implementation.

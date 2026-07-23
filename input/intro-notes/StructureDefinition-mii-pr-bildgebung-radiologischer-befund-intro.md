The DiagnosticReport for imaging procedures is aimed at documenting radiological reporting results. Different systems (RIS reporting modules, AI integrations, dedicated systems for structured reporting) provide information at varying levels of detail. This profile addresses these different levels of detail and offers modular, mutually building stages. Each stage adds further concepts and thus enables new application possibilities, from routine use up to scientific analyses.

**Stage 1** - Free text in structured form \
At the most basic level, the DiagnosticReport resource enables the inclusion of radiological reports as free text in a structured form. This allows a simple yet effective representation of diagnostic information. The free-text description offers the possibility to transmit essential report information without complex data exchange.

**Stage 2** - Linking of Observation resources \
At the next stage, DiagnosticReport resources are linked with Observation resources. This allows a more detailed capture and representation of specific findings or measured values. Since these resources are machine-readable and also coded, it is possible to search for these contents, use them for analyses, or control workflows.

**Stage 3** - Reference to anatomical structures \
The linking with BodyStructure resources represents an extension that makes it possible to assign observations precisely to anatomical structures. This reference is particularly important for longitudinal patient care, as it enables the tracking of and reference to specific lesions or anomalies in follow-up examinations or in other clinical contexts, such as in pathology. It is important here that the BodyStructure resource is not part of the DiagnosticReport. Observations must therefore refer to this resource in a versioned manner.

**Stage 4** - Introduction of reporting procedures \
The integration of Procedure resources offers a further level of detail by describing the context / conditions under which the observations were collected. This allows a deeper insight into the circumstances of the reporting, by clearly defining according to which criteria and prerequisites specific information and measured values were captured. The linking with Procedure resources thus extends the diagnostic report with important contextual information that can be decisive for the interpretation of the findings.

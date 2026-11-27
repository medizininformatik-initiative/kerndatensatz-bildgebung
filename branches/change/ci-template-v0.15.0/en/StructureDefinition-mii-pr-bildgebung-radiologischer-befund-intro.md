<!-- TODO:REVIEW machine translation of source page StructureDefinition-mii-pr-bildgebung-radiologischer-befund-intro.md (de) -->
The DiagnosticReport for imaging procedures addresses the documentation of radiological reporting results. Different systems (RIS reporting modules, AI integrations, dedicated systems for structured reporting) deliver information at different levels of detail. This profile addresses these different levels of detail and offers modular stages that build on one another. Each stage adds further concepts and thus enables new fields of application, from routine care up to scientific analyses.

**Stage 1** - Free text in structured form \
At the most basic level, the DiagnosticReport resource enables the inclusion of radiological findings as free text in a structured form. This allows a simple yet effective representation of diagnostic information. The free-text description offers the possibility to transmit essential findings without complex data exchange.

**Stage 2** - Linking of Observation resources \
At the next stage, DiagnosticReport resources are linked with Observation resources. This allows a more detailed capture and representation of specific findings or measured values. Since these resources are machine-readable and coded, it is possible to search these contents, use them for analyses, or drive workflows.

**Stage 3** - Reference to anatomical structures \
Linking with BodyStructure resources is an enhancement that makes it possible to assign observations precisely to anatomical structures. This reference is particularly important for longitudinal patient care, as it enables tracking of and reference to specific lesions or anomalies in follow-up examinations or in other clinical contexts, such as pathology. Importantly, the BodyStructure resource is not part of the DiagnosticReport. Observations must therefore reference this resource in a versioned manner.

**Stage 4** - Introduction of reading procedures \
The integration of Procedure resources offers a further level of detail by describing the context / conditions under which the observations were made. This allows deeper insight into the circumstances of the reading by clearly defining according to which criteria and prerequisites specific information and measured values were captured. Linking with Procedure resources thus extends the diagnostic report with important contextual information that can be decisive for the interpretation of the findings.

---

The mapping of the dataset elements to this profile is documented in the [Logical Model Bildgebung](StructureDefinition-mii-lm-bildgebung.html).

---

**Examples**

Example of a DiagnosticReport resource:

[DiagnosticReport-mii-exa-bildgebung-radiologischer-Befund](DiagnosticReport-mii-exa-bildgebung-radiologischer-Befund.html)

<!-- TODO:REVIEW machine translation of source page StructureDefinition-mii-pr-bildgebung-radiologische-beobachtung-intro.md (de) -->
This Observation resource is used to record a radiological observation. The resource is designed largely generically so that a wide variety of coded findings can be represented — for example a finding according to TNM. In R4 there is not yet a way to reference the examined body structure through a BodyStructure, which is why this capability was imported from R5. Furthermore, the resource was extended with the series and instance information from the imaging study, so that it can refer directly to the respective image.

---

The mapping of the dataset elements to this profile is documented in the [Logical Model Bildgebung](StructureDefinition-mii-lm-bildgebung.html).

---

**Examples**

Example of an Observation resource for the structured representation of a radiological observation:

[Observation-mii-exa-bildgebung-radiologische-beobachtung](Observation-mii-exa-bildgebung-radiologische-beobachtung.html)

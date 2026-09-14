<!-- markdownlint-disable MD041 -->
<!-- TODO:REVIEW machine translation of source page logical-models.md (de) -->

### Datasets including descriptions

The Core Dataset module **Bildgebung** comprises both profiles for
representing a radiological report (indication, assessment, findings, image
quality etc.) and a profile for the metadata contained in the DICOM header
(technical parameters, study details, modalities, body regions and laterality
etc.). The structure of the report can be free text, structured, or
semi-structured.

Note that the logical model aims purely at representing the data elements and
their descriptions in a hierarchical structure. The data types and
cardinalities used are not to be regarded as mandatory — they are conclusively
defined by the FHIR profiles. For every element within the logical model there
is a 1:1 mapping to an element of a concrete FHIR resource.

Artifact page: [Logical Model Bildgebung](StructureDefinition-mii-lm-bildgebung.html)

{% include StructureDefinition-mii-lm-bildgebung-snapshot.xhtml %}

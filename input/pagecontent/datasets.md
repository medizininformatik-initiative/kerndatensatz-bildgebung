The **Imaging** core dataset module comprises both profiles for representing a radiological report (indication, assessment, abnormalities, acquisition quality, etc.) and a profile for the meta-information contained in the DICOM header (technical parameters, study details, modalities, body regions and sides, etc.). The structure of the report can be present either as free text or in structured as well as semi-structured form.

It should be noted that the Logical Model is purely aimed at representing the data elements and their descriptions in a hierarchical structure. The data types and cardinalities used are not to be regarded as binding. This is ultimately determined by the FHIR profiles. For each element within the Logical Model, there is a 1:1 mapping to an element of a concrete FHIR resource.

See the [Imaging Logical Model](StructureDefinition-mii-lm-bildgebung.html) for the full hierarchical representation of the data elements.

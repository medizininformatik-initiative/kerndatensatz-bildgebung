<!-- TODO:REVIEW machine translation of source page StructureDefinition-mii-ex-bildgebung-bildgebungsgrund-intro.md (de) -->
This extension records the reason for the imaging procedure. Although the reason is also represented via a reference in the ImagingStudy, this attribute is intended to carry the value from the corresponding DICOM tag (Reason for the Requested Procedure Attribute [0040,1002]).

---
**Examples**

<div class="ig-highlight" markdown="1">
**Note:** For clarity, this example does not include all of the associated series and instances. In a real implementation, all series and instances belonging to the study are of course expected to be present in the resulting FHIR resource — the "series" or "instance" sequence is simply repeated for every series or instance and filled with the corresponding values.
</div>

Examples of ImagingStudy resources with the extension for the imaging reason:

Example of a CT scan:
[ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-ct](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-ct.html)

Example of an MRI scan:
[ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-mr](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-mr.html)

Example of an X-ray image:
[ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-cr](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-cr.html)

Example of a PET scan:
[ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-pt](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-pt.html)

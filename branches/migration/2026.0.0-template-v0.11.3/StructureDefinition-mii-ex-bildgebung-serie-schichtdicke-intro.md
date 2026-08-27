<!-- TODO:REVIEW machine translation of source page StructureDefinition-mii-ex-bildgebung-serie-schichtdicke-intro.md (de) -->
This slice-thickness extension makes it possible to state the slice thickness of the individual instances of an image series at series level. It is primarily intended for cases where, for capacity reasons, the instance level of the ImagingStudy is not implemented. If the instance level is implemented, the slice thickness is to be filled at that level instead (see the instance-details extension).
Note: since sliceThickness is an instance-level element according to the DICOM standard, filling it at series level requires ensuring that the slice thickness is constant across all instances of the series in question!

Relevant DICOM tags:

- Slice thickness [(0018, 0050) SliceThickness] in [mm]

---
**Examples**

<div class="ig-highlight" markdown="1">
**Note:** For clarity, this example does not include all of the associated series and instances. In a real implementation, all series and instances belonging to the study are of course expected to be present in the resulting FHIR resource — the "series" or "instance" sequence is simply repeated for every series or instance and filled with the corresponding values.
</div>

Examples of ImagingStudy resources with the extension for the slice thickness of a series:

Example of an MRI scan:
[ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-mr-series](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-mr-series.html)

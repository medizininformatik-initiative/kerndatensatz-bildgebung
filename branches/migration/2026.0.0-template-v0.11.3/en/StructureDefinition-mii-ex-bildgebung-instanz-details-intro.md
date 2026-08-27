<!-- TODO:REVIEW machine translation of source page StructureDefinition-mii-ex-bildgebung-instanz-details-intro.md (de) -->
The extension for DICOM instances enables the capture of relevant DICOM tags in order to obtain detailed information about the image instances.
These instances carry essential parameters describing and classifying the image data and its properties.
This makes it possible to trace the properties of the individual slices and thus provides insight into the properties of the whole series.
For example, the homogeneity of pixel spacing or slice thickness can be examined across the whole series, which at the same time serves as an inclusion or exclusion criterion for studies.

Relevant DICOM tags:

* Slice thickness [(0018, 0050) SliceThickness] in [mm]
* Image type [(0008, 0008) ImageType]
* Pixel spacing (x) [(0028, 0030) PixelSpacing] in [mm]
* Pixel spacing (y) [(0028, 0030) PixelSpacing] in [mm]

The pixel spacings are split into X and Y and must be extracted from the underlying DICOM tag.
The DICOM tag PixelSpacing stores the X and Y spacing together as a string in the following format: e.g. [0.703125, 0.703125].

---
**Examples**

<div class="ig-highlight" markdown="1">
**Note:** For clarity, this example does not include all of the associated series and instances. In a real implementation, all series and instances belonging to the study are of course expected to be present in the resulting FHIR resource — the "series" or "instance" sequence is simply repeated for every series or instance and filled with the corresponding values.
</div>

Examples of ImagingStudy resources with the instance-details extension:

Example of a CT scan:
[ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-ct](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-ct.html)

Example of an MRI scan:
[ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-mr](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-mr.html)

Example of an X-ray image:
[ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-cr](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-cr.html)

Example of a PET scan:
[ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-pt](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-pt.html)

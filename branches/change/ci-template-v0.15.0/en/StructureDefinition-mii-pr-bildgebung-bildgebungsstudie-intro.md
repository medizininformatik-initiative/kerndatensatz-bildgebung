<!-- TODO:REVIEW machine translation of source page StructureDefinition-mii-pr-bildgebung-bildgebungsstudie-intro.md (de) -->
The ImagingStudy profile is used to record imaging studies in a structured way and to represent the associated DICOM header data.
This profile enables the creation of a study consisting of several DICOM series, which in turn consist of several instances (image slices).
When a series is created, extensions can be selected that describe the underlying modality of the series in more detail.

---

### Recommended mapping of the DICOM tags

The following DICOM tags are intended for the corresponding data elements of the profile.
The data elements of the individual extensions can be found on the corresponding subpages.

| **Data element in the information model** | **DICOM tag** |
|---------------------------------------|-------------------------------|
| Identifier | (0008,0050) / (0020,000D) |
| Study description | (0008,1030) |
| Number of contained SOP instances | (0020,1208) |
| Number of contained series | (0020,1206) |
| Start | (0008,0020) + (0008,0030) |
| Person identification | (0010,0020) |
| Modalities | (0008,0061) |
| Procedure | (0008,1032) |
| Imaging reason | (0040,1002) |
| Body height | (0010,1020) |
| Body weight | (0010,1030) |
| Requesting action | (0032,1064) |
| Series --> modality | (0008,0060) |
| Series --> body region | (0018,0015) |
| Series --> start | (0008,0021) + (0008,0031) |
| Series --> laterality | (0020,0060) |
| Series --> series number | (0020,0011) |
| Series --> number of instances contained in the series | (0020,1209) |
| Series --> series description | (0008,103E) |
| Series --> series UID | (0020,000E) |
| Instance --> SOP instance | (0008,0018) |
| Instance --> SOP class | (0008,0016) |
| Instance --> instance number | (0020,0013) |

---

The mapping of the dataset elements to this profile is documented in the [Logical Model Bildgebung](StructureDefinition-mii-lm-bildgebung.html).

---

**Examples**

<div class="ig-highlight" markdown="1">
**Note:** For clarity, this example does not include all of the associated series and instances. In a real implementation, all series and instances belonging to the study are of course expected to be present in the resulting FHIR resource — the "series" or "instance" sequence is simply repeated for every series or instance and filled with the corresponding values.
</div>

Examples of ImagingStudy resources of different modalities:

Example of a CT scan:
[ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-ct](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-ct.html)

Example of an MRI scan:
[ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-mr](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-mr.html)

Example of an X-ray image:
[ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-cr](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-cr.html)

Example of a PET scan:
[ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-pt](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-pt.html)

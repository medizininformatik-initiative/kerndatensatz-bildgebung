The ImagingStudy profile is used to capture imaging studies in a structured way and to represent the associated DICOM header data.
This profile enables the creation of a study consisting of several DICOM series, which in turn consist of several instances (image slices).
When creating a series, extensions can be selected that describe the underlying modality of the series in more detail.

### Recommended mapping of the DICOM tags

The following DICOM tags are intended for the corresponding data elements of the profile.
The data elements of the respective extensions can be found on the corresponding sub-pages.

| **Data element in the information model** | **DICOM Tag**                 |
|-------------------------------------------|-------------------------------|
| Identifier                                | (0008,0050) / (0020,000D)     |
| Study description                         | (0008,1030)                   |
| Number of contained SOP instances         | (0020,1208)                   |
| Number of contained series                | (0020,1206)                   |
| Start                                     | (0008,0020) + (0008,0030)     |
| Person identification                     | (0010,0020)                   |
| Modalities                                | (0008,0061)                   |
| Procedure                                 | (0008,1032)                   |
| Reason for imaging                        | (0040,1002)                   |
| Body height                               | (0010,1020)                   |
| Body weight                               | (0010,1030)                   |
| Requesting measure                        | (0032,1064)                   |
| Series --> modality                       | (0008,0060)                   |
| Series --> body region                    | (0018,0015)                   |
| Series --> start                          | (0008,0021) + (0008,0031)     |
| Series --> body side                      | (0020,0060)                   |
| Series --> series number                  | (0020,0011)                   |
| Series --> number of instances in series  | (0020,1209)                   |
| Series --> series description             | (0008,103E)                   |
| Series --> series UID                     | (0020,000E)                   |
| Instance --> SOP instance                 | (0008,0018)                   |
| Instance --> SOP class                    | (0008,0016)                   |
| Instance --> instance number              | (0020,0013)                   |

### Search parameters

The composite search parameter can be used in different variants of search queries:
- Variant 1 (with code system): ImagingStudy?study-modality-body-site=[modality-system]|[modality-value],[bodysite-system]|[bodysite-value]
- Variant 2 (without code system): ImagingStudy?study-modality-body-site=[modality-value],[bodysite-value]

Variant 1 is more performant in some FHIR servers, since the code system used can be searched directly and the matching code system does not first have to be additionally determined.

### Note on examples

For the sake of clarity, the examples do not include all associated series or instances. Of course, during implementation it is intended that all series and instances belonging to the respective study are also contained in the resulting FHIR resource - for this, the "series" or "instance" sequence is simply repeated for each series or instance and filled with the corresponding values.

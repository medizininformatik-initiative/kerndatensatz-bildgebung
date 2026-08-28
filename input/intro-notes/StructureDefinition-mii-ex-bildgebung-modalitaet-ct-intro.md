<!-- TODO:REVIEW machine translation of source page StructureDefinition-mii-ex-bildgebung-modalitaet-ct-intro.md (de) -->
The CT (computed tomography) extension enables the capture of relevant DICOM tags in order to draw conclusions about how the images were acquired.
A characteristic of computed tomography is the use of X-rays to produce detailed cross-sectional images of the body.
This information about radiation generation, radiation exposure and the technical parameters of the acquisition is available in the corresponding DICOM tags.

Relevant DICOM tags:

- CTDIvol [(0018, 9345) CTDIVolume] in milligray [mGy]
- X-ray tube voltage [(0018, 0060) KVP] in kilovolt [kV]
- Exposure time [(0018, 1150) exposureTime] in milliseconds [ms]
- Exposure [(0018, 1152) exposure] in milliampere-seconds [mAs]
- X-ray tube current [(0018, 1151) xRayTubeCurrent] in milliampere [mA]
- Convolution kernel [(0018,1210) convolutionalKernel]

---
**Examples**

<div class="ig-highlight" markdown="1">
**Note:** For clarity, this example does not include all of the associated series and instances. In a real implementation, all series and instances belonging to the study are of course expected to be present in the resulting FHIR resource — the "series" or "instance" sequence is simply repeated for every series or instance and filled with the corresponding values.
</div>

Example of an ImagingStudy resource with the extension for CT metadata, including the modality-independent extensions for contrast media, instance details and device manufacturer:

[ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-ct](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-ct.html)

<!-- TODO:REVIEW machine translation of source page StructureDefinition-mii-ex-bildgebung-modalitaet-mg-cr-dx-intro.md (de) -->
The extension for the modalities MG (mammography), CR (computed radiography) and DX (digital radiography) enables the capture of relevant DICOM tags in order to draw conclusions about how the images were acquired. These modalities use X-rays to produce images of the body; radiation generation, radiation exposure and specific technical parameters of the acquisition are recorded in the corresponding DICOM tags.

Relevant DICOM tags:

* X-ray tube voltage [(0018, 0060) KVP] in kilovolt [kV]
* Exposure time [(0018, 1150) exposureTime] in milliseconds [ms]
* Exposure [(0018, 1152) exposure] in milliampere-seconds [mAs]
* X-ray tube current [(0018, 1151) xRayTubeCurrent] in milliampere [mA]
* View position [(0018,5101)] can be translated to SNOMED CT for [MG](http://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_4014.html) and [X-ray](https://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_4010.html) acquisitions using the mappings provided by DICOM.

---
**Examples**

<div class="ig-highlight" markdown="1">
**Note:** For clarity, this example does not include all of the associated series and instances. In a real implementation, all series and instances belonging to the study are of course expected to be present in the resulting FHIR resource — the "series" or "instance" sequence is simply repeated for every series or instance and filled with the corresponding values.
</div>

Example of an ImagingStudy resource with the extension for X-ray metadata, including the modality-independent extensions for contrast media, instance details and device manufacturer:

[ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-cr](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-cr.html)

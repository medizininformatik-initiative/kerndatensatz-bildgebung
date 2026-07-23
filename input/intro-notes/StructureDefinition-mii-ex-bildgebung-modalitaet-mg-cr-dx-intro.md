The extension for the modalities MG (mammography), CR (Computed Radiography), and DX (Digital Radiography) enables the capture of relevant DICOM tags in order to draw conclusions about the image acquisition. These modalities use X-rays to create images of the body, whereby the radiation generation, radiation exposure, and specific technical parameters of the imaging are recorded in the corresponding DICOM tags.

Relevant DICOM tags:

* X-ray tube voltage [(0018, 0060) KVP] in kilovolts [kV]
* Exposure time [(0018, 1150) exposureTime] in milliseconds [ms]
* Exposure [(0018, 1152) exposure] in milliampere-seconds [mAs]
* X-ray tube current [(0018, 1151) xRayTubeCurrent] in milliamperes [mA]
* View position [(0018,5101)] can be mapped to SNOMED CT for [MG](http://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_4014.html) and [X-ray](https://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_4010.html) acquisitions via the mappings provided by DICOM.

> For the sake of clarity, the examples do not include all of the associated series and instances. Of course, in an implementation it is intended that all series and instances belonging to the respective study are also contained in the resulting FHIR resource - to do this, the "series" and "instance" sequences are simply repeated for each series or instance and filled with the corresponding values.

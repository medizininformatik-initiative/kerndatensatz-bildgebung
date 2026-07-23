The CT (computed tomography) extension enables the capture of relevant DICOM tags in order to draw conclusions about the image acquisition.
A particular feature of computed tomography is the use of X-rays to generate detailed cross-sectional images of the body.
This information about the radiation generation, radiation exposure, and the technical parameters of the imaging is available in the corresponding DICOM tags.

Relevant DICOM tags:

- CTDIvol [(0018, 9345) CTDIVolume] in milligray [mGy]
- X-ray tube voltage [(0018, 0060) KVP] in kilovolts [kV]
- Exposure time [(0018, 1150) exposureTime] in milliseconds [ms]
- Exposure [(0018, 1152) exposure] in milliampere-seconds [mAs]
- X-ray tube current [(0018, 1151) xRayTubeCurrent] in milliamperes [mA]
- Convolution kernel [(0018,1210) convolutionalKernel]

> For the sake of clarity, the examples do not include all of the associated series and instances. Of course, in an implementation it is intended that all series and instances belonging to the respective study are also contained in the resulting FHIR resource - to do this, the "series" and "instance" sequences are simply repeated for each series or instance and filled with the corresponding values.

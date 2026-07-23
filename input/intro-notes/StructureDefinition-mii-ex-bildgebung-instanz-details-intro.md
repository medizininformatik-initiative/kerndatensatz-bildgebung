The extension for DICOM instances enables the capture of relevant DICOM tags in order to obtain detailed information about the image instances.
These instances contain essential parameters for describing and classifying the image data and their properties.
This makes it possible to trace the properties of the individual slices and thus provides indications of the properties of the entire series.
For example, the homogeneity of the pixel spacing or slice thickness across the entire series can be examined, which at the same time serves as an inclusion or exclusion criterion for studies.

Relevant DICOM tags:

* Slice thickness [(0018, 0050) SliceThickness] in [mm]
* Image type [(0008, 0008) ImageType]
* Pixel spacing (x) [(0028, 0030) PixelSpacing] in [mm]
* Pixel spacing (y) [(0028, 0030) PixelSpacing] in [mm]

The pixel spacings are divided into X and Y and must be extracted from the underlying DICOM tag.
The DICOM tag PixelSpacing stores the X and Y spacings simultaneously as a string in the following format: e.g. [0.703125, 0.703125].

> For the sake of clarity, the examples do not include all of the associated series and instances. Of course, in an implementation it is intended that all series and instances belonging to the respective study are also contained in the resulting FHIR resource - to do this, the "series" and "instance" sequences are simply repeated for each series or instance and filled with the corresponding values.

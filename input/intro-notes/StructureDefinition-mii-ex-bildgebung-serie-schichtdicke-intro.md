This slice thickness extension makes it possible to specify the slice thickness of the individual instances in the image series. This is primarily intended to be used when, for capacity reasons, the instance level of the ImagingStudy is not implemented. If the instance level is implemented, the slice thickness should be filled at that level (see Extension Instance Details).
Note: Since sliceThickness is, according to the DICOM standard, an instance-level element, when filling it at the series level it must be ensured that the slice thickness is constant across all instances of the series under consideration!

Relevant DICOM tags are:

- Slice thickness [(0018, 0050) SliceThickness] in [mm]

> For the sake of clarity, the examples do not include all of the associated series and instances. Of course, in an implementation it is intended that all series and instances belonging to the respective study are also contained in the resulting FHIR resource - to do this, the "series" and "instance" sequences are simply repeated for each series or instance and filled with the corresponding values.

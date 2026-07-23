This contrast agent administration extension makes it possible to indicate the use of contrast agents in the image series and, at the same time, to record details with a reference to the KDS module Medication (MedicationStatement). The DICOM tag used here represents a boolean value.

Relevant DICOM tags are:

* Contrast/Bolus Agent [(0018,0010) contrastBolus]

> For the sake of clarity, the examples do not include all of the associated series and instances. Of course, in an implementation it is intended that all series and instances belonging to the respective study are also contained in the resulting FHIR resource - to do this, the "series" and "instance" sequences are simply repeated for each series or instance and filled with the corresponding values.

The MR (magnetic resonance imaging) extension enables the capture of relevant DICOM tags in order to draw conclusions about the image acquisition.
A particular feature of magnetic resonance imaging is the use of a strong magnetic field for imaging, which allows detailed images of tissue structures to be generated.
This information about the magnetic field strength, the various time intervals, and the scan sequences is available in the corresponding DICOM tags.

Relevant DICOM tags:

* Magnetic field strength [(0018, 0087) magneticFieldStrength] in tesla [T]
* Scanning sequence [(0018, 0020) scanningSequence]
* Scanning sequence variant [(0018, 0021) scanningSequenceVariant]
* Echo time (TE) [(0018,0081) Echo Time] in milliseconds [ms]
* Repetition time (TR) [(0018,0080) Repetition Time] in milliseconds [ms]
* Inversion time (TI) [(0018,0082) Inversion Time] in milliseconds [ms]
* Flip angle [(0018,1314) Flip Angle] in degrees (°) [deg]

> For the sake of clarity, the examples do not include all of the associated series and instances. Of course, in an implementation it is intended that all series and instances belonging to the respective study are also contained in the resulting FHIR resource - to do this, the "series" and "instance" sequences are simply repeated for each series or instance and filled with the corresponding values.

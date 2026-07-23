The US (ultrasound) extension enables the capture of relevant DICOM tags in order to draw conclusions about the image acquisition.
The information about the properties of the transducer as well as the ultrasound color is available in the corresponding DICOM tags.
Note: The codes for the transducer type must mandatorily be denoted with an underscore between the words, even if they are not necessarily present in this form in the header!

Relevant DICOM tags:

* Transducer type (Transducer Type, [0018,6031])
* Transducer frequency (Transducer Frequency, [0018,6011] --> [0018,6030]) in kHz
* Pulse repetition frequency (Pulse Repetition Frequency, [0018,6011] --> [0018,6032]) in Hz
* Ultrasound color (Ultrasound Color Data Present, [0028,0014])

> For the sake of clarity, the examples do not include all of the associated series and instances. Of course, in an implementation it is intended that all series and instances belonging to the respective study are also contained in the resulting FHIR resource - to do this, the "series" and "instance" sequences are simply repeated for each series or instance and filled with the corresponding values.

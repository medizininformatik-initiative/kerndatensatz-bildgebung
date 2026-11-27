<!-- TODO:REVIEW machine translation of source page StructureDefinition-mii-ex-bildgebung-modalitaet-us-intro.md (de) -->
The US (ultrasound) extension enables the capture of relevant DICOM tags in order to draw conclusions about how the images were acquired.
The information about the properties of the transducer and the ultrasound color is available in the corresponding DICOM tags.
Note: the codes for the transducer type MUST be written with an underscore between the words, even if they do not necessarily appear that way in the header!

Relevant DICOM tags:

* Transducer type (Transducer Type, [0018,6031])
* Transducer frequency (Transducer Frequency, [0018,6011] --> [0018,6030]) in kHz
* Pulse repetition frequency (Pulse Repetition Frequency, [0018,6011] --> [0018,6032]) in Hz
* Ultrasound color (Ultrasound Color Data Present, [0028,0014])

---
**Examples**

<div class="ig-highlight" markdown="1">
**Note:** For clarity, this example does not include all of the associated series and instances. In a real implementation, all series and instances belonging to the study are of course expected to be present in the resulting FHIR resource — the "series" or "instance" sequence is simply repeated for every series or instance and filled with the corresponding values.
</div>

Example of an ImagingStudy resource with the extension for US metadata, including the modality-independent extension for instance details:

[ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-us](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-us.html)

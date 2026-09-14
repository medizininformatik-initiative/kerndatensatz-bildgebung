<!-- TODO:REVIEW machine translation of source page StructureDefinition-mii-ex-bildgebung-modalitaet-mr-intro.md (de) -->
The MR (magnetic resonance imaging) extension enables the capture of relevant DICOM tags in order to draw conclusions about how the images were acquired.
A characteristic of magnetic resonance imaging is the use of a strong magnetic field, which makes it possible to produce detailed images of tissue structures.
This information about the magnetic field strength, the various time intervals and the scanning sequences is available in the corresponding DICOM tags.

Relevant DICOM tags:

* Magnetic field strength [(0018, 0087) magneticFieldStrength] in tesla [T]
* Scanning sequence [(0018, 0020) scanningSequence]
* Scanning sequence variant [(0018, 0021) scanningSequenceVariant]
* Echo time (TE) [(0018,0081) Echo Time] in milliseconds [ms]
* Repetition time (TR) [(0018,0080) Repetition Time] in milliseconds [ms]
* Inversion time (TI) [(0018,0082) Inversion Time] in milliseconds [ms]
* Flip angle [(0018,1314) Flip Angle] in degrees (°) [deg]

---
**Examples**

<div class="ig-highlight" markdown="1">
**Note:** For clarity, this example does not include all of the associated series and instances. In a real implementation, all series and instances belonging to the study are of course expected to be present in the resulting FHIR resource — the "series" or "instance" sequence is simply repeated for every series or instance and filled with the corresponding values.
</div>

Example of an ImagingStudy resource with the extension for MR metadata, including the modality-independent extensions for contrast media, instance details and device manufacturer:

[ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-mr](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-mr.html)

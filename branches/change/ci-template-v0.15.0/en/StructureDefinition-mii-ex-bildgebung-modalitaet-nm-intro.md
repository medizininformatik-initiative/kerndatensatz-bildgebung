<!-- TODO:REVIEW machine translation of source page StructureDefinition-mii-ex-bildgebung-modalitaet-nm-intro.md (de) -->
The NM (nuclear medicine imaging) extension enables the capture of relevant DICOM tags in order to draw conclusions about how the images were acquired.
A characteristic of nuclear medicine is the use of a radiopharmaceutical consisting of a tracer and a radioisotope, which enables metabolic imaging.
This information about the radiopharmaceutical is nested inside the DICOM tag RadiopharmaceuticalInformationSequence (0054,0016) — so-called nested DICOM tags.

Example of accessing a nested DICOM tag with Python from a DICOM slice (instance):

    RadiopharmaceuticalStartTime = layer['RadiopharmaceuticalInformationSequence'][0]['RadiopharmaceuticalStartTime'].value

Implementation:

- Radiopharmaceutical (ValueSet with codes: https://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_25.html):
  The radiopharmaceutical can be converted from its code to the display name by resolving the code at "0054,0016" (Radiopharmaceutical Information Sequence) → "0054,0304" (Radiopharmaceutical Code Sequence) → "0008,0100" (Code Value).
  If this is not present, the value can be extracted directly from the tag "0054,0016" (Radiopharmaceutical Information Sequence) → "0054,0304" (Radiopharmaceutical Code Sequence) → "0008,0104" (Code Meaning). If the display name differs from the ValueSet, a local mapping can be established at the site. If it is still missing, the tag "0054,0016" (Radiopharmaceutical Information Sequence) → "0018,0031" (Radiopharmaceutical) can additionally be consulted — please use it only if the string consistently contains BOTH the tracer AND the radionuclide (see the ValueSet link).

- Radionuclide (ValueSet with codes: https://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_18.html)
  The radionuclide can be converted from its code to the display name by resolving the code at "0054,0016" (Radiopharmaceutical Information Sequence) → "0054,0300" (Radiopharmaceutical Code Sequence) → "0008,0100" (Code Value).
- Tracer exposure time:
  This is a custom tag and is calculated as the difference in seconds between the Acquisition Time "0008,0032" (or similar) and "0054,0016" (Radiopharmaceutical Information Sequence) → "0018, 1072" RadiopharmaceuticalStartTime.

- Half-life ["0018, 1075" RadionuclideHalfLife] in seconds [s]

- Total radionuclide dose ["0018, 1074" RadionuclideTotalDose] in _megabecquerel [MBq]_ (note: for PT, the unit Bq is normally used instead!)

- Scaling units ["0054,1001" Units]
  If Units is absent or empty, the tag "0028,1054" (RescaleType) can be used.

---
**Examples**

<div class="ig-highlight" markdown="1">
**Note:** For clarity, this example does not include all of the associated series and instances. In a real implementation, all series and instances belonging to the study are of course expected to be present in the resulting FHIR resource — the "series" or "instance" sequence is simply repeated for every series or instance and filled with the corresponding values.
</div>

Example of an ImagingStudy resource with the extension for NM metadata, including the modality-independent extensions for contrast media, instance details and device manufacturer:

[ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-nm](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-nm.html)

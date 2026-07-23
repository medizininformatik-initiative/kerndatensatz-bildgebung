The PT (positron emission tomography) extension enables the capture of relevant DICOM tags in order to draw conclusions about the image acquisition.
A particular feature of nuclear medicine is the use of a radiopharmaceutical consisting of a tracer and a radioisotope, thus enabling metabolic imaging.
This information about the radiopharmaceutical is present in a nested form in the DICOM tag RadiopharmaceuticalInformationSequence (0054,0016), so-called nested DICOM tags.

Example of accessing a nested DICOM tag with Python from a DICOM slice (instance):

```
RadiopharmaceuticalStartTime = layer['RadiopharmaceuticalInformationSequence'][0]['RadiopharmaceuticalStartTime'].value
```

Implementation:

- Radiopharmaceutical (ValueSet with codes: https://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_4021.html):
  The radiopharmaceutical can be converted from a code into its clear name by determining the code "0054,0016" (Radiopharmaceutical Information Sequence) → "0054,0304" (Radiopharmaceutical Code Sequence) → "0008,0100" (Code Value).
  If this is not available, the value can be extracted directly from the tag "0054,0016" (Radiopharmaceutical Information Sequence) → "0054,0304" (Radiopharmaceutical Code Sequence) → "0008,0104" (Code Meaning). If the clear name should differ from the ValueSet, a local mapping can be performed at the site. Alternatively, if it is still missing, the tag "0054,0016" (Radiopharmaceutical Information Sequence) → "0018,0031" (Radiopharmaceutical) can also be consulted; please only use it if the string consistently contains both the tracer AND the radionuclide (see the link of the ValueSet).

- Radionuclide (ValueSet with codes: https://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_4020.html)
  The radionuclide can be converted from a code into its clear name by determining the code "0054,0016" (Radiopharmaceutical Information Sequence) → "0054,0300" (Radiopharmaceutical Code Sequence) → "0008,0100" (Code Value).
- Tracer uptake time:
  This is a custom tag and is formed from the difference between the time values in seconds of the Acquisition Time "0008,0032" (or similar) and the "0054,0016" (Radiopharmaceutical Information Sequence) → "0018, 1072" RadiopharmaceuticalStartTime.

- Half-life ["0018, 1075" RadionuclideHalfLife] in seconds [s]

- Total radionuclide dose ["0018, 1074" RadionuclideTotalDose] in _becquerel [Bq]_ (Note: For NM, on the other hand, the unit MBq is normally used!)

- Scaling unit ["0054,1001" Units]
  If Units is not available or empty, the tag "0028,1054" (RescaleType) can be used.

- Series type ["0054,1000" Series Type]

> For the sake of clarity, the examples do not include all of the associated series and instances. Of course, in an implementation it is intended that all series and instances belonging to the respective study are also contained in the resulting FHIR resource - to do this, the "series" and "instance" sequences are simply repeated for each series or instance and filled with the corresponding values.

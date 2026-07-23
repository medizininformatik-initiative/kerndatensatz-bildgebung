**DICOM**

| Note |  |
|---------|---------------------|
| ![Warning](warning.jpg) | The DICOM FHIR package defines a CodeSystem and ValueSets according to the prescribed contents of certain tags. However, the strings of the enumerated values are not listed as codes and can therefore not be represented as a CodeableConcept. Currently, these fields are therefore implemented as strings. An acceptable and practicable solution is still being sought here. |

DICOM is the leading standard protocol for the management and transmission of medical image data. It is used to identify and transmit image studies and forms the basis for the data referenced in **ImagingStudy** profiles.
The DICOM standard defines, in part, its own value sets for certain tags, which are also intended to be used in these profiles. These are:

* Modality: https://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_29.html
* Body side: https://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_244.html
* SOP class: https://dicom.nema.org/medical/dicom/current/output/chtml/part04/sect_B.5.html
* Radiopharmaceutical PT: https://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_4021.html
* Radionuclide PT: https://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_4020.html
* Radiopharmaceutical NM: https://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_25.html
* Radionuclide NM: https://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_18.html
* Scaling unit: http://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_84.html

For the following tags, dedicated code systems were created to make tags with "enumerated values" representable in a queryable manner:

```
(0018,0020) Scanning Sequence -> ImagingStudy Extension MR scanningSequence
(0018,0021) Sequence Variant -> ImagingStudy Extension MR scanningSequenceVariant
(0008,0008) Image Type -> ImagingStudy Extension Instance Details imageType
(0054,1000) Series Type -> ImagingStudy Extension PT seriesType
```

For the transducer type in the US modality, a dedicated code system was likewise created in order to list the codes semantically correctly according to the FHIR standard:

```
(0018,6031) Transducer Type -> ImagingStudy Extension US transducerType
```

**SNOMED CT**

SNOMED CT is used to code clinical terms related to imaging procedures, including the indications for an examination, the type of procedure performed, and the findings identified.
For mapping the body region represented in DICOM to the SNOMED standard, a table exists: https://dicom.nema.org/medical/dicom/current/output/chtml/part16/chapter_L.html

**LOINC & RadLex**

LOINC is used to code observations and results of imaging procedures, particularly in connection with the **DiagnosticReport** profile. RadLex is a comprehensive lexicon specific to radiology, containing terms for imaging procedures, anatomical structures, findings, and imaging techniques. There is an existing mapping of RadLex codes to the more widely used LOINC standard: https://playbook.radlex.org/playbook/SearchRadlexAction

**Further code systems used**

* identifierType: https://terminology.hl7.org/6.0.2/CodeSystem-v2-0203.html
* diagnosticServiceSectionId: https://terminology.hl7.org/6.0.2/CodeSystem-v2-0074.html
* observationType: https://terminology.hl7.org/6.0.2/CodeSystem-v2-0936.html
* Observation Category Codes: https://terminology.hl7.org/6.0.2/CodeSystem-observation-category.html

The units of measure for measured values must be given in [UCUM](https://unitsofmeasure.org/ucum) units, so that the results can be converted into each other. By means of [validators](https://ucum.nlm.nih.gov/ucum-lhc/demo.html), it can be ensured that the units used are permissible.

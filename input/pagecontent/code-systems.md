<!-- markdownlint-disable MD041 -->
<!-- TODO:REVIEW machine translation of source page code-systems.md (de) -->

This page describes the terminologies used by the **Bildgebung** module and
the code systems the module defines. The complete, automatically generated
list of all code systems can be found in the
[artifact overview](artifacts.html).

### DICOM

<div class="ig-highlight" markdown="1">
**Note:** The DICOM FHIR package defines a CodeSystem and ValueSets according
to the prescribed contents of certain tags. However, the strings of the
enumerated values are not listed as codes and can therefore not be represented
as CodeableConcept. These fields are currently implemented as strings; an
acceptable, practicable solution is still being sought.
</div>

DICOM is the leading standard protocol for managing and transmitting medical
image data. It is used to identify and transfer imaging studies and forms the
basis for the data referenced in **ImagingStudy** profiles.

For the following tags, dedicated code systems were created so that tags with
enumerated values can be represented in a queryable way:

    (0018,0020) Scanning Sequence -> ImagingStudy extension MR scanningSequence
    (0018,0021) Sequence Variant -> ImagingStudy extension MR scanningSequenceVariant
    (0008,0008) Image Type -> ImagingStudy extension instance details imageType
    (0054,1000) Series Type -> ImagingStudy extension PT seriesType

For the transducer type of the US modality, a dedicated code system was also
created to list the codes semantically correctly according to the FHIR
standard:

    (0018,6031) Transducer Type -> ImagingStudy extension US transducerType

### SNOMED CT

SNOMED CT is used to code clinical concepts related to imaging procedures,
including the indications for an examination, the type of procedure performed
and the findings observed. For mapping the body region represented in DICOM to
the SNOMED standard, a table exists:
<https://dicom.nema.org/medical/dicom/current/output/chtml/part16/chapter_L.html>

### LOINC & RadLex

LOINC is used to code observations and results of imaging procedures,
particularly in connection with the **DiagnosticReport** profile. RadLex is a
comprehensive lexicon specific to radiology containing terms for imaging
procedures, anatomical structures, findings and imaging techniques. An
existing mapping of RadLex codes to the more widely used LOINC standard is
available at:
<https://playbook.radlex.org/playbook/SearchRadlexAction>

### Further code systems used

* identifierType: <https://terminology.hl7.org/6.0.2/CodeSystem-v2-0203.html>
* diagnosticServiceSectionId: <https://terminology.hl7.org/6.0.2/CodeSystem-v2-0074.html>
* observationType: <https://terminology.hl7.org/6.0.2/CodeSystem-v2-0936.html>
* Observation Category Codes: <https://terminology.hl7.org/6.0.2/CodeSystem-observation-category.html>

Units of measurement for measured values MUST be given in
[UCUM](https://unitsofmeasure.org/ucum) units so that results can be converted
into one another. [Validators](https://ucum.nlm.nih.gov/ucum-lhc/demo.html)
can be used to ensure that the units used are valid.

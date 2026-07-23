The **Imaging** core dataset module is oriented towards the common technical standards of medical imaging.
This primarily concerns the [DICOM standard](https://www.dicomstandard.org/) for the purpose of FHIR profiling of relevant technical and medical questions.

The code systems, terminologies, and references used for procedures, diagnoses, and related medical questions are:
* [SNOMED CT](https://www.snomed.org/)
* [OPS - Operations and Procedures Classification](https://www.bfarm.de/DE/Kodiersysteme/Klassifikationen/OPS-ICHI/OPS/_node.html)
* [RadLex](https://www.rsna.org/practice-tools/data-tools-and-standards/radlex-radiology-lexicon)
* [LOINC - Logical Observation Identifiers Names and Codes](https://loinc.org/)
* [ICD - International Statistical Classification of Diseases and Related Health Problems](https://klassifikationen.bfarm.de/icd-10-gm/kode-suche/htmlgm2024/index.htm)
* [GOLD - German Oncological Data Standard](https://vision-zero-oncology.github.io/GOLD/profiles.html)
* [MIO](https://mio.kbv.de/site/mio#)

Reporting-specific extension modules and profiles for reporting that reference this implementation should be oriented in content towards the common reporting guidelines and criteria. For example:
* Breast - [BI-RADS](https://www.acr.org/Clinical-Resources/Clinical-Tools-and-Reference/Reporting-and-Data-Systems/BI-RADS)
* Prostate - [PI-RADS](https://www.acr.org/Clinical-Resources/Clinical-Tools-and-Reference/Reporting-and-Data-Systems/PI-RADS)
* Liver - [LI-RADS](https://www.acr.org/Clinical-Resources/Clinical-Tools-and-Reference/Reporting-and-Data-Systems/LI-RADS)
* COVID-19 - [CO-RADS](https://radiologyassistant.nl/chest/covid-19/corads-classification)
* DRG report templates - [DRG templates on GitHub](https://github.com/DRGagit/ak_befundung)

The [core specification of HL7 FHIR](http://hl7.org/fhir/R4/license.html) was also used - in particular the corresponding resources [ImagingStudy](https://hl7.org/fhir/R4/imagingstudy.html) and [DiagnosticReport](https://hl7.org/fhir/R4/diagnosticreport.html), and additionally the resources [Observation](https://hl7.org/fhir/R4/observation.html), [Composition](https://hl7.org/fhir/R4/composition.html), [BodyStructure](https://hl7.org/fhir/R4/bodystructure.html) and [ServiceRequest](https://hl7.org/fhir/R4/servicerequest.html).

This specification was designed on the basis of the description of the MII core dataset in the version of 10 March 2017 [(PDF)](https://www.medizininformatik-initiative.de/sites/default/files/inline-files/MII_04_Kerndatensatz_1-0.pdf), as well as the dataset description in [ART-DECOR](https://art-decor.org/ad/#/mide-/datasets/dataset/2.16.840.1.113883.3.1937.777.24.1.1/2018-06-05T12:44:12/concept/2.16.840.1.113883.3.1937.777.24.2.2795/2023-11-14T08:32:26).

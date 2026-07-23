As a more abstract version of an information model, and to better illustrate the relationships of the technical concepts among each other, a UML class diagram was created based on the specifications in ART-DECOR. Concepts represented as groups in ART-DECOR are modelled as separate classes that have association relationships to each other here. This logical model serves only to represent the data elements and their descriptions. The data types and cardinalities used are not to be regarded as binding. This is ultimately determined by the FHIR profiles. The mapping of the FHIR elements to the ART-DECOR specification is described in the comment field in ART-DECOR. A deliberately generic representation of radiological reporting was chosen in order to be able to represent a broad spectrum of reporting guidelines and templates. So that the structure can be understood more easily, in addition to the complete UML there are two further pages that consider the Metadata and Report parts separately.

For better readability of the complete UML, it can also be found [here](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/blob/main/implementation-guides/ImplementationGuide-Common/images/UML_Modul_Bildgebung.svg). For the sake of clarity, references to the "Patient" resource were only modelled from the central profiles. Information about further references to it is provided by the texts within the profiles as well as the associated FHIR profiles.

![UML Imaging Module](uml-modul-bildgebung.png)

The abstract representation of the UML shows the UML purely at class level with a focus on the association relationships in the module:

![UML Imaging Module (simplified)](uml-modul-bildgebung-simple.png)

## UML Metadata

To keep the module with its two sections clearer and more comprehensible, the complete UML is subdivided here into the sections Metadata and Report. This section addresses the topic of Metadata.

The main focus here is the capture of the DICOM metadata, which are represented in a FHIR ImagingStudy. It is complemented by modality-specific extensions that capture additional relevant data.

![UML Metadata](uml-metadaten.png)

## UML Report

To keep the module with its two sections clearer and more comprehensible, the complete UML is subdivided here into the sections Metadata and Report. This section addresses the topic of Report.

The Report section can, depending on the data situation, be implemented in three different variants.

### Variant 1: fully structured reports

This variant can be chosen if there are fully structured reports in the available data. An example would be the DRG templates.

![UML structured report](uml-befund-strukturiert.png)

### Variant 2: semi-structured reports

This variant can be chosen if there are reports in the data that have, for example, already been structured into chapters.

![UML semi-structured report](uml-befund-semistrukturiert.png)

### Variant 3: free-text reports

This variant can be chosen if the data is available purely as unstructured free text.

![UML free-text report](uml-befund-freitext.png)

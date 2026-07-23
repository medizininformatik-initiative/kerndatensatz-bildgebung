This specification describes the FHIR representation of the **Imaging** core dataset module of the Medical Informatics Initiative (MII).
The following sections describe the use cases of the module as well as the associated FHIR profiles and terminology resources in their binding form.

| Publication |                |
| ----------- | -------------- |
| Date        | 2026-07-17 |
| Version     | 2026.2.0   |
| Status      | Active     |
| Realm       | DE         |

### About this Module

The **Imaging** core dataset module contains data elements for documenting radiological imaging and reporting across all common modalities. It is part of the MII Core Dataset (CDS).

Medical imaging plays a central role in clinical practice for the diagnosis, therapy, and documentation of various diseases, and its importance is expected to grow further. Hospitals hold a steadily increasing volume of clinical image data. This data is decisive for patient-centred, individualised health care and drives the development of new analysis methods for optimising the standard of care. The secondary use of this data offers considerable potential, which can be captured in the future through this CDS module of the MII.

### Imprint

This implementation guide was created within the scope of the Medical Informatics Initiative and, per the governance process, is subject to the coordination procedure of the Interoperability Forum and the technical committees of HL7 Deutschland e. V.

### Contact

- Alexa Iancu, University Hospital Erlangen (UKER)
- Karoline Buckow, TMF – Technology and Method Platform for Networked Medical Research e.V.
- Franziska Klepka, TMF – Technology and Method Platform for Networked Medical Research e.V.

Questions regarding this publication can be raised at any time on [chat.fhir.org](https://chat.fhir.org/) in the stream 'german/mi-initiative'.

Comments and criticism are welcome as 'Issues' on [GitHub](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/issues).

### Authors (in alphabetical order)

- Sebastian Arndt (University Hospital Erlangen)
- Steven Böhner (University Hospital Regensburg)
- Viola Braunmüller (University Hospital Tübingen)
- Noemi Deppenwiese (University Hospital Erlangen)
- Teresa Graetz (University Hospital Erlangen)
- Alexa Iancu (University Hospital Erlangen)
- Johannes Kast (Mint Medical GmbH)
- David Männle (University Medical Centre Mannheim)
- Máté Maros (University Medical Centre Mannheim)
- Matthias May (University Hospital Erlangen)
- Daniel Pinto dos Santos (University Hospital Cologne, University Hospital Frankfurt)
- Tobias Pogarell (University Hospital Erlangen)
- Lucas Mundo (University Hospital Erlangen)
- Daniel Schmitz (University Medicine Mainz)
- Friederike Schneider (Mint Medical GmbH)
- Damian Wrobel (Mint Medical GmbH)

### Copyright Notice, Terms of Use

© 2019+ TMF e. V., Charlottenstraße 42, 10117 Berlin.

This work is licensed under the [Creative Commons Attribution 4.0 International License](https://creativecommons.org/licenses/by/4.0/).

[![CC BY 4.0 Logo](https://licensebuttons.net/l/by/4.0/88x31.png)](https://creativecommons.org/licenses/by/4.0/)

For the terms of use of the underlying FHIR technology, see the FHIR base specification.

Some of the code systems used are published and maintained by other organisations. The copyright of the respective publishers listed there applies.

### Disclaimer

- The content of this document is public. Please note that parts of this document are based on FHIR version R4, for which the copyright of HL7 International applies.

- Although this publication was created with the greatest care, the authors cannot accept any liability for direct or indirect damage that could arise from the content of this specification.

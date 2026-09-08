<!-- markdownlint-disable MD041 -->

### Extensions

This page lists the FHIR extensions defined by the **Bildgebung** module
(naming convention `MII_EX_<Module>_<Name>`). Extensions carry information the
base resources and profiles cannot express; the profiles that use them are on
the [Profiles](profiles.html) page, and the complete generated list is in the
[artifact overview](artifacts.html).

The module defines four groups of extensions:

- **Cross-modality ImagingStudy extensions at study level:**
  [imaging reason](StructureDefinition-mii-ex-bildgebung-bildgebungsgrund.html),
  [patient height](StructureDefinition-mii-ex-bildgebung-groesse.html) und
  [patient weight](StructureDefinition-mii-ex-bildgebung-gewicht.html)

- **ImagingStudy extensions at series level:**
  - Modality-specific:
    [CT](StructureDefinition-mii-ex-bildgebung-modalitaet-ct.html),
    [MR](StructureDefinition-mii-ex-bildgebung-modalitaet-mr.html),
    [MG/CR/DX](StructureDefinition-mii-ex-bildgebung-modalitaet-mg-cr-dx.html),
    [NM](StructureDefinition-mii-ex-bildgebung-modalitaet-nm.html),
    [PT](StructureDefinition-mii-ex-bildgebung-modalitaet-pt.html) und
    [US](StructureDefinition-mii-ex-bildgebung-modalitaet-us.html)

  - Cross-modality:
    [contrast agent at series level](StructureDefinition-mii-ex-bildgebung-kontrastmittel.html) und
    [slice thickness auf Serien-Ebene](StructureDefinition-mii-ex-bildgebung-serie-schichtdicke.html)

- **Cross-modality ImagingStudy extensions at instance level:**
  [instance details](StructureDefinition-mii-ex-bildgebung-instanz-details.html)

- **Observation-Extensions**, linking a finding to the series/image the finding is based on:
  [Series UID](StructureDefinition-mii-ex-bildgebung-serie-uid.html) und
  [SOP Instance UID](StructureDefinition-mii-ex-bildgebung-sop-instanz-uid.html)

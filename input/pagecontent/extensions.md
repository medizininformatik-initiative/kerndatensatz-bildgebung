<!-- markdownlint-disable MD041 -->
<!-- TODO:REVIEW machine translation of source page extensions.md (de) -->

### Extensions

This page lists the FHIR extensions defined by the **Bildgebung** module
(naming convention `MII_EX_<Module>_<Name>`). Extensions carry information the
base resources and profiles cannot express; the profiles that use them are on
the [Profiles](profiles.html) page, and the complete generated list is in the
[artifact overview](artifacts.html).

The module defines three groups of extensions:

* **Modality-specific ImagingStudy extensions** at series level —
  [CT](StructureDefinition-mii-ex-bildgebung-modalitaet-ct.html),
  [MR](StructureDefinition-mii-ex-bildgebung-modalitaet-mr.html),
  [MG/CR/DX](StructureDefinition-mii-ex-bildgebung-modalitaet-mg-cr-dx.html),
  [NM](StructureDefinition-mii-ex-bildgebung-modalitaet-nm.html),
  [PT](StructureDefinition-mii-ex-bildgebung-modalitaet-pt.html) and
  [US](StructureDefinition-mii-ex-bildgebung-modalitaet-us.html) — capturing
  the technical acquisition parameters of the respective modality.
* **Cross-modality ImagingStudy extensions** —
  [imaging reason](StructureDefinition-mii-ex-bildgebung-bildgebungsgrund.html),
  [patient height](StructureDefinition-mii-ex-bildgebung-groesse.html),
  [patient weight](StructureDefinition-mii-ex-bildgebung-gewicht.html),
  [contrast media at series level](StructureDefinition-mii-ex-bildgebung-kontrastmittel.html),
  [slice thickness at series level](StructureDefinition-mii-ex-bildgebung-serie-schichtdicke.html) and
  [instance details](StructureDefinition-mii-ex-bildgebung-instanz-details.html).
* **Observation extensions** linking a finding to the image it was made on —
  [series UID](StructureDefinition-mii-ex-bildgebung-serie-uid.html) and
  [SOP instance UID](StructureDefinition-mii-ex-bildgebung-sop-instanz-uid.html).

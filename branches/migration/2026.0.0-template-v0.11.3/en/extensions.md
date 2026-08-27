# Extensions - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* **Extensions**

## Extensions

### Extensions

This page lists the FHIR extensions defined by the **Bildgebung** module (naming convention `MII_EX_<Module>_<Name>`). Extensions carry information the base resources and profiles cannot express; the profiles that use them are on the [Profiles](profiles.md) page, and the complete generated list is in the [artifact overview](artifacts.md).

The module defines three groups of extensions:

* **Modality-specific ImagingStudy extensions** at series level — [CT](StructureDefinition-mii-ex-bildgebung-modalitaet-ct.md), [MR](StructureDefinition-mii-ex-bildgebung-modalitaet-mr.md), [MG/CR/DX](StructureDefinition-mii-ex-bildgebung-modalitaet-mg-cr-dx.md), [NM](StructureDefinition-mii-ex-bildgebung-modalitaet-nm.md), [PT](StructureDefinition-mii-ex-bildgebung-modalitaet-pt.md) and [US](StructureDefinition-mii-ex-bildgebung-modalitaet-us.md) — capturing the technical acquisition parameters of the respective modality.
* **Cross-modality ImagingStudy extensions** — [imaging reason](StructureDefinition-mii-ex-bildgebung-bildgebungsgrund.md), [patient height](StructureDefinition-mii-ex-bildgebung-groesse.md), [patient weight](StructureDefinition-mii-ex-bildgebung-gewicht.md), [contrast media at series level](StructureDefinition-mii-ex-bildgebung-kontrastmittel.md), [slice thickness at series level](StructureDefinition-mii-ex-bildgebung-serie-schichtdicke.md) and [instance details](StructureDefinition-mii-ex-bildgebung-instanz-details.md).
* **Observation extensions** linking a finding to the image it was made on — [series UID](StructureDefinition-mii-ex-bildgebung-serie-uid.md) and [SOP instance UID](StructureDefinition-mii-ex-bildgebung-sop-instanz-uid.md).


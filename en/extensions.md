# Extensions - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* **Extensions**

## Extensions

### Extensions

This page lists the FHIR extensions defined by the **Bildgebung** module (naming convention `MII_EX_<Module>_<Name>`). Extensions carry information the base resources and profiles cannot express; the profiles that use them are on the [Profiles](profiles.md) page, and the complete generated list is in the [artifact overview](artifacts.md).

The module defines four groups of extensions:

* **Cross-modality ImagingStudy extensions at study level:** [imaging reason](StructureDefinition-mii-ex-bildgebung-bildgebungsgrund.md), [patient height](StructureDefinition-mii-ex-bildgebung-groesse.md) und [patient weight](StructureDefinition-mii-ex-bildgebung-gewicht.md)
* **ImagingStudy extensions at series level:** 
* Modality-specific: [CT](StructureDefinition-mii-ex-bildgebung-modalitaet-ct.md), [MR](StructureDefinition-mii-ex-bildgebung-modalitaet-mr.md), [MG/CR/DX](StructureDefinition-mii-ex-bildgebung-modalitaet-mg-cr-dx.md), [NM](StructureDefinition-mii-ex-bildgebung-modalitaet-nm.md), [PT](StructureDefinition-mii-ex-bildgebung-modalitaet-pt.md) und [US](StructureDefinition-mii-ex-bildgebung-modalitaet-us.md)
* Cross-modality: [contrast agent at series level](StructureDefinition-mii-ex-bildgebung-kontrastmittel.md) und [slice thickness auf Serien-Ebene](StructureDefinition-mii-ex-bildgebung-serie-schichtdicke.md)
 
* **Cross-modality ImagingStudy extensions at instance level:** [instance details](StructureDefinition-mii-ex-bildgebung-instanz-details.md)
* **Observation-Extensions**, linking a finding to the series/image the finding is based on: [Series UID](StructureDefinition-mii-ex-bildgebung-serie-uid.md) und [SOP Instance UID](StructureDefinition-mii-ex-bildgebung-sop-instanz-uid.md)


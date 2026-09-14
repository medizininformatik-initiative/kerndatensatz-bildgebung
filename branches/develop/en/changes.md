# Changelog - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* **Changelog**

## Changelog

This page records the changes between the released versions of the **Bildgebung (Imaging)** module, newest version first. It follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/) and the KDS calendar versioning scheme described on the [Versioning](version-history.md) page.

Each version gets its own section with the release date and the changes grouped by category:

* **Added** — new profiles, extensions, value sets, search parameters, pages.
* **Changed** — modified constraints, bindings, guidance or documentation.
* **Deprecated** — artifacts that still exist but should no longer be used.
* **Removed** — artifacts that were withdrawn.
* **Fixed** — corrections of defects.
* **Security** — changes with a security or data-protection impact.

Leave out the categories with nothing to report. Where a change is driven by an issue or a pull request, link it.

##### Breaking changes MUST be reported and explained

A version section that contains a breaking change is not complete until it answers, explicitly and in this changelog:

* **What exactly changed** between the two versions — the artifact, the element, the old and the new constraint (not just "profile X was revised").
* **What it means for existing data:** does data that conformed to the previous version still validate against the new one? If not, which resources and elements are affected, and how does the failure show up?
* **What implementers should do:** the authors' recommendation for migrating existing data to the new version — transformation steps, default values, re-coding guidance — or an explicit statement that no migration path is provided and why.

**What counts as breaking** — treat a change as breaking if it does any of the following, even when it looks small: tightens a cardinality (`0..*` → `1..1`), raises a binding strength (example → required), removes codes from a required value set, removes or renames an element or a slice, narrows a type, adds an invariant or a must-support obligation, or changes a canonical URL. When in doubt, report it as breaking.

**Breaking for whom:** state both perspectives — *stored data* (instances valid against the old version) and *implementations* (clients and servers built against it; a removed search parameter breaks implementations while every stored instance stays valid).

**The version number will not warn anyone.** The KDS calendar versioning scheme (`YYYY.n.n`) carries no major-version signal the way SemVer does — this changelog section is the *only* warning a reader gets.

**Link the technical delta.** From the second formal publication on, enable the IG Publisher's version comparison (`version-comparison` in `sushi-config.yaml` — see the [ Versioning](version-history.md) page for the setup and its prerequisites); it publishes a machine-generated comparison at `comparison-v<previous>/index.html`. Link it from the version section, so the prose explanation and the technical diff sit side by side.

Mark such entries clearly (for example, prefix them with **BREAKING:**) so a reader scanning the section cannot miss them.

-------

### Version 2027.0.0-ballot

* **Added**: body weight and height can be represented at study level via extensions based on the German base profiles
* **Changed**: SOP class binding simplified to extensible
* **Added**: specification of Observation.valueQuantity and Observation.valueCodeableConcept
* **Added**: dedicated Observation for radiological measurements
* **Added**: exampleressource for Patient, Condition and Encounter

### Version 2026.0.0

* Changed: renamed to module Bildgebung
* Changed: SliceThickness usable at series and instance level
* Changed: repaired slice rules in the Composition and in the PT extension
* Changed: new ValueSet for LocationQualifier
* Fixed: restored page content of the NM extension
* Added: ConvolutionalKernel added to the CT extension
* Changed: revised module description
* Added: Conformance page added
* Changed: search parameters integrated into the Core Dataset module Meta from v2026 on
* Changed: extension SupportingInfo in DiagnosticReport now taken from the HL7 package
* Changed: extension BodyStructure in Observation now taken from the HL7 package
* Fixed: corrected invalid codes
* Fixed: moved the BodyStructure extension of Observation to Observation.bodySite

### Version 2026.0.0-ballot

* Newly added: 
* new modality extension for ultrasound
* new series-level extension to represent the slice thickness analogously to the instance-details extension when the instance level is not implemented
* added ConvolutionalKernel to the CT modality extension
* added burnedInAnnotation to the instance-details extension
 
* Adjustments for a better representation in the FDPG: 
* cardinality of codes in DiagnosticReport.conclusionCode.coding restricted to "0..1"
* cardinality of DiagnosticReport.code.coding for LOINC and Diagnostic Service Section restricted to "0..1"
* cardinality of ContrastBolus in the ContrastAdministration extension restricted to "1..1"
* fixed codes for categories, codes and bodySite in the profiles
* cardinality of value in Observation restricted to "1..1"
* translations of terminologies for the FDPG display
* new ValueSets for ServiceRequest, DiagnosticReport, Observation
* ValueSet binding set to "required" for all ValueSets
 
* Bug fixes: 
* fixed the slicing discriminator in the instance-details extension
* corrected spelling errors and broken IG links
 
* LogicalModel, UML diagrams and search parameters aligned with the current profiles
* R5 backport extensions in DiagnosticReport and Observation modelled independently as a workaround until an HL7 solution is available
* In this release, resources use SNOMED CT version http://snomed.info/sct/900000000000207008/version/20250701 across all modules to ensure stable ValueSet expansion.

### Version 2025.0.2

* Fixed the availability of the R5 extension package

### Version 2025.0.1

* Reworked translations for better display and readability in the FDPG
* Fixed typos in SNOMED CT ValueSets
* Improved the cardinality of the reference from the Observation profile to the BodyStructure profile

### Version 2025.0.0

* Additional separate UML diagrams for report and metadata for better understanding
* Additional abstract UML diagram for the module
* Device profile to identify the device, instead of an extension in the ImagingStudy
* Additional attributes for the MR extension (echoTime, repetitionTime, inversionTime, flipAngle)
* Additional attributes for the MG_CR_DX extension (viewPosition)
* Separate extensions for PT and NM
* Changed and additional attributes for the PT extension (radiopharmaceutical, radionuclide, tracerExposureTime, units, seriesType)
* Changed data type of ScanningSequence, -Variant and ImageType from string to CodeableConcept
* Code systems for MR ScanningSequence, MR ScanningSequenceVariant, PT SeriesType, instance ImageType
* ValueSets for the newly created own code systems
* Composite search parameters for ImagingStudy-modality and ImagingStudy-bodysite
* Contrast-media reference in the ImagingStudy extended to MedicationAdministration
* In this release, resources use SNOMED CT version http://snomed.info/sct/900000000000207008/version/20240701 across all modules to ensure stable ValueSet expansion.


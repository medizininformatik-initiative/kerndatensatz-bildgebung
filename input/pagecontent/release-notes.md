**Version: 2026.0.0**

- Changed: Renamed to Imaging module
- Changed: SliceThickness usable at series and instance level
- Changed: Fixed rules for slices in the Composition and Extension PT
- Changed: New ValueSet for LocationQualifier
- Fixed: Restored page content of Extension NM
- Added: ConvolutionKernel added to Extension CT
- Changed: Adjustment of the module description
- Added: Conformance page added
- Changed: Search parameters integrated into the core dataset module Meta from v2026 onwards
- Changed: Extension SupportingInfo in DiagnosticReport now from the HL7 package
- Changed: Extension BodyStructure in Observation now from the HL7 package
- Fixed: Corrected invalid codes
- Fixed: Re-attached Extension BodyStructure from Observation to Observation.bodySite

**Version: 2026.0.0-ballot**

- Newly added:
  - New modality extension for ultrasound
  - New extension at the series level to represent slice thickness analogously to the instance-details extension, in case the instance level is not implemented
  - Addition of ConvolutionKernel in the modality extension for CT
  - Addition of burnedInAnnotation in the instance-details extension
- Adjustments for a better representation in the FDPG:
  - Cardinality for codes in DiagnosticReport.conclusionCode.coding restricted to "0..1"
  - Cardinality for DiagnosticReport.code.coding for LOINC and Diagnostic-Service-Section restricted to "0..1"
  - Cardinality for ContrastBolus in the ContrastAdministration extension restricted to "1..1"
  - Definition of codes for categories, codes, and BodySite in the profiles
  - Cardinality for Value in Observation restricted to "1..1"
  - Translations for terminologies for FDPG representation
  - New ValueSets for ServiceRequest, DiagnosticReport, Observation
  - ValueSet binding for all ValueSets set to "required"
- Bug fixes:
  - Bug fix in the slicing discriminator in the instance-details extension
  - Correction of spelling errors and faulty IG links
- Adjustment of the LogicalModel, the UML diagrams, and the search parameters to the current profiles
- R5 backport extensions in DiagnosticReport and Observation independently modelled as a workaround, until an HL7 solution is available
- Resources in this release use SNOMED CT across modules in version http://snomed.info/sct/900000000000207008/version/20250701 in order to ensure a stable ValueSet expansion.

**Version: 2025.0.2**

- Problem resolution regarding the availability of the R5 extension package

**Version: 2025.0.1**

- Revision of translations for better representation and readability in the FDPG
- Improvement of typos in SNOMED CT ValueSets
- Improvement of the cardinality of the reference from the Observation profile to the BodyStructure profile

**Version: 2025.0.0**

- Additional UMLs separately for report and metadata for better understanding
- Additional abstract UML for the module
- Device profile for identifying the device, instead of an extension in the ImagingStudy
- Additional attributes for the MR extension (echoTime, repetitionTime, inversionTime, flipAngle)
- Additional attributes for the MG_CR_DX extension (viewPosition)
- Separate extensions for PT and NM
- Changed and additional attributes for the PT extension (radiopharmaceutical, radionuclide, tracerExposureTime, units, seriesType)
- Changed and additional attributes for the NM extension (radiopharmaceutical, radionuclide, tracerExposureTime, units)
- Changed data type for ScanningSequence, -Variant and ImageType from string to CodeableConcept
- Code systems for MR ScanningSequence, MR ScanningSequenceVariant, PT SeriesType, Instance ImageType
- ValueSets for the newly created own code systems
- Composite search parameters for ImagingStudy-modality and ImagingStudy-bodysite
- Contrast media reference in the ImagingStudy added for MedicationAdministration
- Resources in this release use SNOMED CT across modules in version http://snomed.info/sct/900000000000207008/version/20240701 in order to ensure a stable ValueSet expansion.

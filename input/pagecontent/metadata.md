<!-- markdownlint-disable MD041 -->
<!-- Default-language (English) page. Ported from kerndatensatz-basis
     input/pagecontent/metadata.md (branch main) and reduced to what THIS
     scaffold actually declares in sushi-config.yaml.
     German mirror: input/translations/de/pagecontent/metadata.md — both files
     must say the same thing.

     This page is HAND-MAINTAINED. Nothing here is generated: the IG Publisher
     renders the artifact pages, but it does not write this narrative. Whenever
     sushi-config.yaml gains or loses a CRMI profile, an artifact-* extension or
     a manifest parameter, update the tables below in BOTH languages. -->
<!-- OPTIONAL-PAGE (0..1) — remove this marker when you KEEP the page; remove
     the page per docs/optional-pages.md when you don't. The convention check
     (M9) fails a release while this marker is present. -->

> **Optional page (0..1).** The KDS module menu lists this page as *optional* —
> keep it only when your module's profiles carry the metadata characteristics
> it documents (as, for example, the Base module does). Decide for your module:
> **keep** it — fill it in and delete this banner and the `OPTIONAL-PAGE`
> marker comment (in this file AND the German mirror) — or **remove** it,
> following the per-entry procedure in [`docs/optional-pages.md`](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/blob/main/docs/optional-pages.md) of this
> repository. A release must not ship with this banner (convention check M9).
{: .ig-highlight .ig-highlight-grey}

### Metadata Overview

This page documents the computable metadata of the **Bildgebung** module.
The metadata exists so that the artifacts of this guide can be discovered,
evaluated, validated, cited, governed and reused — by people and by software
alike.

The metadata model follows the
[Canonical Resource Management Infrastructure Implementation Guide](https://hl7.org/fhir/uv/crmi/STU2/en/index.html)
(CRMI). CRMI describes how knowledge artifacts are exchanged consistently across
their whole management lifecycle, from authoring through publication and
distribution to implementation. This guide applies the CRMI profiles,
extensions and manifest mechanisms that are useful for publishing an MII core
dataset module as a versioned FHIR implementation guide.

The approach is preliminary: it records the CRMI-based metadata currently used
and may be refined as CRMI matures, as the KDS publication process evolves, and
as FAIR assessment of FHIR implementation guides becomes more concrete.

#### Scope

CRMI metadata describes the FHIR specification artifacts themselves. Most of it
is descriptive and does **not** change the clinical or technical conformance
requirements defined by the profiles, value sets, code systems, logical models,
capability statements or examples. The manifest parameters are the exception:
they document and support the publication and validation context — terminology
expansion and canonical version pinning — and can therefore influence generated
output and validation results.

The metadata can be inspected in the generated FHIR resources, in particular in
the JSON and XML representations linked from each artifact page and in the
[downloadable package](downloads.html).

#### CRMI artifact-management coverage

CRMI organises artifact management into lifecycle phases and supporting
concerns. This guide does not implement every CRMI capability; it applies the
parts that are directly useful for publishing a KDS module.

| CRMI area | Used in this guide | Purpose |
| --- | --- | --- |
| [Artifact lifecycle](https://hl7.org/fhir/uv/crmi/STU2/en/artifact-lifecycle.html) | Shareable and publishable ImplementationGuide profiles; `status`; `version`; `resource-approvalDate`; `resource-effectivePeriod`; contributor extensions | Positions the artifacts in authoring, release, publication and maintenance workflows. |
| [Version manifest](https://hl7.org/fhir/uv/crmi/STU2/en/version-manifest.html) | `package-source`; canonical version pinning (`pin-canonicals: pin-all`); *optionally* `CRMIManifestParameters` + `cqf-expansionParameters` | Supports reproducible terminology expansion and stable canonical version resolution. |
| [Artifact conventions](https://hl7.org/fhir/uv/crmi/STU2/en/artifact-conventions.html) | Canonical URLs; alignment of package and resource version; `artifact-versionAlgorithm`; `artifact-versionPolicy` | Aligns the guide with the canonical-resource authoring and versioning conventions. |
| [Packaging](https://hl7.org/fhir/uv/crmi/STU2/en/packaging.html) | FHIR package; `ImplementationGuide.packageId`; package version; `package-source` | Connects the artifacts to the package in which they are authored, tested, released and distributed. |
| [Publishing](https://hl7.org/fhir/uv/crmi/STU2/en/publishing.html) | Publishable profile; contributor extensions; `resource-approvalDate`; `resource-effectivePeriod`; `artifact-purpose`; `artifact-usage`; *optionally* `artifact-relatedArtifact` | Adds trust, governance, publication context and human-readable intent. |
| [Distribution](https://hl7.org/fhir/uv/crmi/STU2/en/distribution.html) | Published guide pages; JSON/XML resources; package download | Supports downstream retrieval and tooling through the FHIR publishing ecosystem. CRMI repository operations are not implemented. |
| [Signing](https://hl7.org/fhir/uv/crmi/STU2/en/artifact-signing.html) | Not implemented | Candidate future enhancement for integrity, authenticity and non-repudiation of released artifacts. |

This guide defines no `CRMIManifestLibrary`, no CRMI artifact-repository
operations such as `$package` or `$data-requirements`, no publication through a
Knowledge Artifact Repository, no syndication feeds and no artifact signing.
These may be considered in future release-workflow work.

#### CRMI metadata declared by this guide

The following CRMI-related metadata is set in
[`sushi-config.yaml`](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/blob/main/sushi-config.yaml)
and ends up in the generated `ImplementationGuide` resource.

| Metadata artifact | CRMI area | Location in this guide | Role in artifact management |
| --- | --- | --- | --- |
| [CRMI Shareable ImplementationGuide](https://hl7.org/fhir/uv/crmi/STU2/en/StructureDefinition-crmi-shareableimplementationguide.html)<br/>[CRMI Publishable ImplementationGuide](https://hl7.org/fhir/uv/crmi/STU2/en/StructureDefinition-crmi-publishableimplementationguide.html)<br/>[CRMI ImplementationGuide](https://hl7.org/fhir/uv/crmi/STU2/en/StructureDefinition-crmi-implementationguide.html) | Artifact lifecycle; publishing; packaging | `ImplementationGuide.meta.profile` | Enforces the minimum ImplementationGuide metadata set and adds the post-publication metadata needed for distribution, repository inclusion, consumption and implementation. |
| [CQF Knowledge Capability](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-cqf-knowledgeCapability.html) | Artifact lifecycle; artifact conventions | `ImplementationGuide.extension` (`shareable`, `publishable`) | Declares the knowledge capability of the artifact on resources that have no native `knowledgeCapability` element. |
| [Artifact Purpose](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-artifact-purpose.html) | Publishing; distribution | `ImplementationGuide.extension` | States why the artifact is needed and why it was designed as it is. |
| [Artifact Usage](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-artifact-usage.html) | Publishing; implementation | `ImplementationGuide.extension` | States how the artifact is to be used within the MII core dataset specification. |
| [Artifact Topic](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-artifact-topic.html) | Publishing; distribution | `ImplementationGuide.extension`, coded with the NCI Thesaurus | Adds high-level content topics for filtering, searching and grouping. |
| [Artifact Version Algorithm](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-artifact-versionAlgorithm.html) | Artifact conventions; versioning | `ImplementationGuide.extension` (`semver`) | Declares how versions are compared to determine which is more current. |
| [Artifact Version Policy](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-artifact-versionPolicy.html) | Artifact lifecycle; versioning | `ImplementationGuide.extension` (`package`) | Declares that artifact versions are managed with the package version — a release can bump an artifact's version even when its content did not change. |
| [Package Source](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-package-source.html) | Version manifest; packaging; distribution | `ImplementationGuide.extension` (packageId, version, uri) | Declares the package in which an artifact is defined, so evaluation environments resolve namespaces and dependencies in the intended scope. |
| [Resource Approval Date](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-resource-approvalDate.html) | Artifact lifecycle; publishing; governance | `ImplementationGuide.extension` (`2026-08-27`) | Records the date on which the publisher officially approved the content for use. |
| [Resource Effective Period](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-resource-effectivePeriod.html) | Artifact lifecycle; publishing; implementation | `ImplementationGuide.extension` (start `2027`) | Records the period during which the content is planned to be, or has been, effective. |
| [Artifact Author](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-artifact-author.html)<br/>[Artifact Editor](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-artifact-editor.html)<br/>[Artifact Reviewer](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-artifact-reviewer.html)<br/>[Artifact Endorser](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-artifact-endorser.html) | Publishing; governance; provenance | `ImplementationGuide.extension` | Records the author, the editor responsible for internal coherence, the reviewers, and the bodies that officially endorse the release. For a KDS module the editor, reviewers and endorsers are the governance bodies of the core-dataset process. |

Not enabled in this scaffold, but prepared as commented blocks in
`sushi-config.yaml`:

* [Artifact Related Artifact](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-artifact-relatedArtifact.html)
  — a literature citation for the module.
* [CQF Expansion Parameters](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-cqf-expansionParameters.html)
  together with a
  [CRMI Manifest Parameters](https://hl7.org/fhir/uv/crmi/STU2/en/StructureDefinition-crmi-manifestparameters.html)
  resource and the `path-expansion-params` / `pin-manifest` parameters.

> [TODO: Enable the blocks your module needs and then update the tables above.
> If your module also applies the CRMI shareable/publishable profiles to its own
> StructureDefinitions, CapabilityStatements, CodeSystems and ValueSets — the
> `kerndatensatz-basis` idiom is a shared `RuleSet` in
> [`input/fsh/rulesets/crmi.fsh`](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/blob/main/input/fsh/rulesets/crmi.fsh) — add the corresponding rows here.]
{: .ig-highlight .ig-highlight-grey}

##### CodeSystem supplements

Where a module publishes CodeSystem supplements, note that the CRMI
*ShareableCodeSystem* profile requires `CodeSystem.caseSensitive`, while FHIR
validation warns that a supplement should not restate `caseSensitive` because
that could contradict the supplemented code system.
[kerndatensatz-basis](https://github.com/medizininformatik-initiative/kerndatensatz-basis)
therefore claims only the *publishable* CRMI profile on supplements and omits
the shareable one.

#### Versioning and package provenance

The human-readable version scheme is described on the
[Versioning](version-history.html) page. This section describes how that policy
is expressed as CRMI metadata.

The module uses calendar versioning in the SemVer-compatible numeric form
`YYYY.MINOR.PATCH[-label]`, currently `2027.0.0-ballot`. The calendar year
serves as the CRMI `<major>` component; `MINOR` and `PATCH` keep their usual
additive and corrective semantics. Stable versions can therefore be compared
using the declared `semver` version algorithm. Labels carry pre-release or build
information; following CRMI/FHIR convention, no ordering is inferred among
labels.

| CRMI conformance requirement | How this guide conforms |
| --- | --- |
| [Requirement 3.3: Artifact versioning](https://hl7.org/fhir/uv/crmi/STU2/en/artifact-lifecycle.html#conformance-requirement-3-3) | Artifacts carry a `version` following `<major>.<minor>.<patch>[-<label>]`, with the year as the major component. `artifact-versionAlgorithm` declares `semver` comparison. |
| [Requirement 3.4: Artifact versioning policy](https://hl7.org/fhir/uv/crmi/STU2/en/artifact-lifecycle.html#conformance-requirement-3-4) | `artifact-versionPolicy` is `package`: artifact versions are managed as the version of the package they appear in, so a release may bump an artifact that did not itself change. |
| [Requirement 3.5: Artifact collection versioning](https://hl7.org/fhir/uv/crmi/STU2/en/artifact-lifecycle.html#conformance-requirement-3-5) | Artifacts are authored as part of the guide/package collection and share the package version. |
| [Requirement 3.6: Artifact package source](https://hl7.org/fhir/uv/crmi/STU2/en/artifact-lifecycle.html#conformance-requirement-3-6) | `package-source` records the package id, the package version and the package source URI. |

`resource-effectivePeriod` complements this by recording the intended period of
applicability. Together, version, version algorithm, version policy, package
source and effective period let readers and tooling decide whether an artifact
belongs to the expected release and whether its metadata is consistent with the
version being implemented.

#### Manifest and reproducibility

Canonical references are pinned in the built package (`pin-canonicals: pin-all`
in `sushi-config.yaml`), which is a CRMI expectation and makes the output
stable.

A module that additionally wants reproducible terminology expansion adds a
CRMI Manifest Parameters resource — the `kerndatensatz-basis` idiom is
`Parameters/mii-param-<slug>-manifest` — links it from the
`ImplementationGuide` via `cqf-expansionParameters`, and points the publisher at
it with `path-expansion-params` and `pin-manifest`. Both readers and tooling
then have one stable place to inspect the parameters used for expansion and
package pinning.

> [TODO: Add the manifest for your module (see the commented blocks in
> `sushi-config.yaml`) and link the generated `Parameters` resource page here,
> or state explicitly that this module does not pin expansion parameters.]
{: .ig-highlight .ig-highlight-grey}

#### Relationship to FAIR

The [FAIR principles](https://www.go-fair.org/fair-principles/) describe goals
for making digital objects Findable, Accessible, Interoperable and Reusable.
This section is an informative self-assessment of how the CRMI-based metadata of
this guide supports FAIR-aligned publication of FHIR specification artifacts.

The table reuses the indicator structure of the HL7 FHIR-for-FAIR page
[FAIR data maturity indicators and priority](https://hl7.org/fhir/uv/fhir-for-fair/RDAMetrics.html),
which is based on the RDA FAIR Data Maturity Model, and lists the indicators of
priority **Essential**.
[FHIR-for-FAIR metadata and data](https://hl7.org/fhir/uv/fhir-for-fair/metadata.html)
stresses that a FAIR digital object exists at different levels of granularity
and that the boundary between metadata and data is contextual. The table
therefore distinguishes the metadata of this guide and its conformance artifacts
from the example data shipped with it and from the production clinical data
exchanged by implementations. The guide can address the indicators for its own
artifacts and examples; indicators for production data are *supported* by the
guide but must be fulfilled by the implementing systems, repositories and
governance processes.

The example instances shipped with this guide demonstrate FAIR-relevant FHIR
structures for test data. They are not production clinical data and are not
asserted to be a persistently identified FAIR dataset.

| Principle | Indicator | FAIR data maturity indicator | Addressed by |
| --- | --- | --- | --- |
| F1 | RDA-F1-01M | Metadata is identified by a persistent identifier | Canonical `url` values, the package id `de.medizininformatikinitiative.kerndatensatz.bildgebung`, the package version and `package-source`. Persistence depends on publication governance. |
| F1 | RDA-F1-01D | Data is identified by a persistent identifier | For the examples: `Resource.id`, `Bundle.identifier`, resource `identifier` elements and `Bundle.entry.fullUrl` demonstrate the pattern; they are not asserted as persistent data PIDs. Production data must be given persistent business identifiers by the implementing systems. |
| F1 | RDA-F1-02M | Metadata is identified by a globally unique identifier | Globally scoped canonical `url` values and the package id, within the controlled KDS namespaces. |
| F1 | RDA-F1-02D | Data is identified by a globally unique identifier | For the examples: `identifier.system` + `identifier.value` demonstrate globally scoped identification. In production this depends on controlled identifier namespaces and local governance. |
| F2 | RDA-F2-01M | Rich metadata is provided to allow discovery | CRMI shareable/publishable profiles, `purpose`, `artifact-usage`, `artifact-topic`, `resource-approvalDate`, `resource-effectivePeriod`, contributors and `package-source`. |
| F3 | RDA-F3-01M | Metadata includes the identifier for the data | Artifact metadata and artifact identifiers travel together in the same FHIR resources and in the package. |
| F4 | RDA-F4-01M | Metadata can be harvested and indexed | Published artifact pages, canonical `url` values, JSON/XML representations, the downloadable FHIR package and `artifact-topic`. Harvesting depends on the publication site and package registry. |
| A1 | RDA-A1-02M | Metadata can be accessed manually | Human-readable guide pages and artifact pages. |
| A1 | RDA-A1-02D | Data can be accessed manually | Example resource pages and generated JSON/XML. In production this depends on the implementing systems and local access policy. |
| A1 | RDA-A1-03M | The metadata identifier resolves to a metadata record | Canonical artifact `url` values resolve to published artifact pages linking the computable JSON and XML, subject to publication governance. |
| A1 | RDA-A1-03D | The data identifier resolves to a digital object | Example pages and downloadable JSON/XML. Example identifiers are not asserted as persistently resolving data PIDs. |
| A1 | RDA-A1-04M | Metadata is accessed through a standardised protocol | Guide and artifact pages over HTTPS; generated resources as FHIR JSON/XML; distribution as a FHIR (NPM-format) package. |
| A1 | RDA-A1-04D | Data is accessible through a standardised protocol | Examples downloadable as FHIR JSON/XML over HTTPS and through the package. In production, access is through conformant FHIR REST servers under local policy. |
| A1.1 | RDA-A1.1-01M | Metadata is accessible through a free access protocol | Public HTTPS access to the pages, the generated artifacts and the package. |
| A2 | RDA-A2-01M | Metadata remains available after the data is gone | Versioned publication, downloadable package, version history and canonical artifacts. Long-term guarantees depend on publication governance. |
| R1 | RDA-R1-01M | A plurality of accurate, relevant attributes is provided | CRMI profiles, `purpose`, `artifact-usage`, `artifact-topic`, `resource-approvalDate`, `resource-effectivePeriod`, `artifact-versionPolicy`, `package-source` and contributors. |
| R1.1 | RDA-R1.1-01M | Metadata includes licence information | The guide-level `license: CC-BY-4.0`, the copyright notice and the package metadata. Reuse conditions for production clinical data must come from the data providers. |
| R1.3 | RDA-R1.3-01M | Metadata complies with a community standard | FHIR R4, the CRMI profiles, the KDS publication conventions and canonical resource metadata. |
| R1.3 | RDA-R1.3-01D | Data complies with a community standard | The examples declare this module's profiles. In production, conformance must be validated against the profiles, bindings and CapabilityStatement expectations. |
| R1.3 | RDA-R1.3-02M | Metadata is machine-understandable per a community standard | CRMI-conformant FHIR metadata as JSON/XML and as a FHIR package in the NPM package format used by the IG Publisher ecosystem. |

> [TODO: The table lists the indicators of priority *Essential*. If your module
> wants the complete self-assessment, extend it with the *Important* and
> *Useful* indicators — `kerndatensatz-basis` carries the full table.]
{: .ig-highlight .ig-highlight-grey}

#### Practical use

Implementers can use this metadata to:

* verify that an artifact belongs to the expected package and version,
* recognise an artifact's governance state from approval date, contributors,
  reviewers and endorsers,
* understand the intended use through `purpose` and `artifact-usage`,
* discover artifacts by topic and resource category,
* reproduce terminology expansion and canonical pinning decisions,
* integrate the package into tooling that consumes FHIR canonical resources.

For most readers the human-readable artifact pages are the easiest entry point.
For automated processing, the [downloadable package](downloads.html) and the
JSON representations of the generated resources carry the complete computable
metadata.

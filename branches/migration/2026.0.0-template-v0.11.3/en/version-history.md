# Versioning - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* **Versioning**

## Versioning

#### Version scheme

The **Bildgebung** module follows the KDS calendar-versioning (CalVer) scheme in a SemVer-compatible numeric form:

* format **`YYYY.MINOR.PATCH[-label]`** — the current version is `2027.0.0-ballot`;
* **`YYYY`** — the year in which the guide applies and is intended to be used; it takes the place of the major version;
* **`MINOR`** — incremented for non-breaking additions and refinements;
* **`PATCH`** — incremented for corrections and bug fixes;
* **`label`** — optional pre-release or build label, e.g. `draft`, `ballot` or `cibuild`.

#### Comparing versions

Stable releases can be compared by reading the numeric components as SemVer-style `<major>.<minor>.<patch>`, with the calendar year as the major component: `2026.1.0` is newer than `2026.0.3`. Labels denote pre-release or build status; no ordering is inferred among labels.

#### Artifact versions

All released FHIR artifacts in the package carry the same version as the guide and its package. An artifact may therefore receive a new version on release even when the artifact itself did not change. The computable metadata that declares the version algorithm, the versioning policy, the package source and the manifest parameters is described on the [Metadata Overview](metadata.md) page.

#### Release process

Releases follow the [Module Release Workflow](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Module-Release-Workflow): the version is raised in the release branch, the changelog entry is written, the validation workflows run on the release pull request, and the release is tagged after the merge.

#### Version history and changes

* **[Changelog](changes.md)** — the changes of each released version.

#### Version comparison

From the second **formal publication** on, this guide also publishes a **machine-generated version comparison**. It complements the changelog: the changelog explains **why** and **what to do**, the comparison shows **exactly what changed**.

**Where it lives.** The report is part of the published site itself: `comparison-v<previous>/index.html` next to the guide's pages, linked from the QA report. The index lists the compared artifact pairs; each pair links a detail page with three views — the **difference** analysis (what changed element by element), the **union** (everything either version allows) and the **intersection** (only what both versions allow).

**How it is performed.** The IG Publisher's previous-version comparator loads the previous release's package, pairs every profile, value set and code system with its counterpart by canonical URL, compares the pairs, and renders the report into the build output — so it publishes with the site, with no extra deployment step. It is enabled by the `version-comparison` parameter — an official IG Publisher parameter from the [ig-parameters registry](https://build.fhir.org/ig/FHIR/fhir-tools-ig/CodeSystem-ig-parameters.html), passed through `sushi-config.yaml` (the commented block there explains the setup and its two prerequisites: a publication history at the canonical, and a loadable previous package). Absent, it defaults to `{last}`; the value `n/a` is the documented way to switch the comparison off.

**The demonstration below** (this template repository's preview only) shows the same kind of report before any formal publication exists: the build compares itself against the previous `dev` preview using the FHIR validator's `-compare` command and publishes the result at `comparison-demo/index.html`. The repository variable `ENABLE_VERSION_COMPARISON=false` switches the whole feature off — the publisher's comparison in every build workflow and this demonstration alike; a created module never renders the demonstration.

> [TODO: If your module has a versioning policy of its own beyond the KDS scheme — for example a support window for older versions, or a deprecation policy for profiles — describe it here. Delete this prompt afterwards.]


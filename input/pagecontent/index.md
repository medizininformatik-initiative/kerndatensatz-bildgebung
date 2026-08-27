<!-- markdownlint-disable MD041 -->
<!--
  HOME PAGE — English is the IG's DEFAULT language, so this file is the source.
  Structure follows the standard MII module IG page set (kerndatensatz-basis
  input/pagecontent/index.md). Replace the {{...}} placeholders and the bracketed
  [TODO ...] prompts with your module's real content, then delete these HTML
  comments. Keep the section headings — a reviewer expects them. The German
  translation of this page lives at input/translations/de/pagecontent/index.md
  (see docs/recipes/add-translation.md) — keep both in step.
-->

### Introduction

This specification describes the FHIR representation of the Core Dataset (CDS)
module **Bildgebung** of the Medical Informatics Initiative (MII). It
covers the module's use cases and the associated FHIR profiles, extensions and
terminology resources in their normative form. The MII Core Dataset enables the
standardized secondary use of routine clinical data for medical research.

> [TODO: In one or two sentences, describe what your module covers and what the
> data is used for.]
{: .ig-highlight .ig-highlight-grey}

| Publication |               |
|-------------|---------------|
| Date        | 2026-08-27 |
| Version     | 2027.0.0-ballot (CalVer `YYYY.n.n`) |
| Status      | active        |
| Realm       | DE            |

### Target audience

<div class="ig-highlight ig-highlight-blue">
<h5>Implementers</h5>
<p>Data Integration Centers (DIC), software developers and system architects building FHIR-based solutions.<br/>
→ see <a href="profiles.html">Profiles</a> and <a href="logical-models.html">Logical Models</a>.</p>
</div>

<div class="ig-highlight ig-highlight-green">
<h5>Researchers</h5>
<p>Scientists using KDS data for medical research.<br/>
→ see <a href="researcher-guidance.html">Guidance for Researchers</a>.</p>
</div>

### Contents

- **[Guidance](guidance.html)** — getting started and domain notes.
- **Conformance** — the KDS-wide conformance rules (requirements language,
  Must Support, handling missing data) are maintained centrally by the
  [Meta module](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Conformance);
  the module-specific [Security and Privacy](security-and-privacy.html)
  considerations are part of this guide.
- **[Profiles](profiles.html)** and the further
  **[artifact pages](artifacts.html)** — the technical artifacts.
- **[Examples](examples.html)** — example instances.
- **[Dependencies](ImplementationGuide-mii-ig-bildgebung.html)** — the
  ImplementationGuide resource with the dependency table, cross-version
  analysis and copyright statements.

### Related guides

This module is part of the MII Core Dataset; the other KDS modules and their
dependencies are described at
[medizininformatik-initiative.de](https://www.medizininformatik-initiative.de/).

> [TODO: Name your module's formal dependencies (see `dependencies` in
> `sushi-config.yaml`) and any related guides.]
{: .ig-highlight .ig-highlight-grey}

More FHIR implementation guides can be found in the official
**[FHIR IG Registry](https://fhir.org/guides/registry/)** (source:
[`FHIR/ig-registry`](https://github.com/FHIR/ig-registry)).

### Imprint

This guide was created within the Medical Informatics Initiative and is subject,
by its governance process, to the coordination procedure of the Interoperability
Forum and the technical committees of HL7 Germany.

### Contact

Questions about this publication can be asked on the HL7 FHIR Zulip
[chat.fhir.org](https://chat.fhir.org) in the `german/mi-initiative` stream, or
on the MII Zulip [mii.zulipchat.com](https://mii.zulipchat.com/) in the
`MII-Kerndatensatz` stream.
Comments and issues are welcome as *Issues* on
[GitHub](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/issues).

> [TODO: Name your module's domain contacts.]
{: .ig-highlight .ig-highlight-grey}

### Authors (in alphabetical order)

> [TODO: List the module's authors with their institution.]
{: .ig-highlight .ig-highlight-grey}

### Copyright and License

© 2024+ TMF e. V., Charlottenstraße 42, 10117 Berlin

This work is licensed under the
[Creative Commons Attribution 4.0 International License (CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/).

For the usage rights of the underlying FHIR technology, see the FHIR base
specification.

Some of the code systems used are published and maintained by other
organizations; the copyright of the respective publishers applies.

### Disclaimer

The content of this document is public. Please note that parts of this
document are based on FHIR version R4, which is copyrighted by
HL7 International.

Although this publication was prepared with the greatest care, the authors
cannot accept any liability for direct or indirect damage that may arise from
the content of this specification.

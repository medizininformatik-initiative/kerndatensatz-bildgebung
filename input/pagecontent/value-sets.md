<!-- markdownlint-disable MD041 -->
<!-- Split from the former terminology.md per the TF-KDS-agreed menu structure (one
     page per artifact type); SNOMED CT version policy from the meta wiki page
     "Terminology Version Policy". The IG Publisher lists the ValueSets on the
     artifact pages automatically; this page carries the MII notes on them.
     German mirror: input/translations/de/pagecontent/value-sets.md. -->
<!-- OPTIONAL-PAGE (0..1) — remove this marker when you KEEP the page; remove
     the page per docs/optional-pages.md when you don't. The convention check
     (M9) fails a release while this marker is present. -->

> **Optional page (0..1).** The KDS module menu lists this page as *optional*.
> Decide for your module: **keep** it — fill it in and delete this banner and
> the `OPTIONAL-PAGE` marker comment (in this file AND the German mirror) — or
> **remove** it, following the per-entry procedure in [`docs/optional-pages.md`](https://github.com/medizininformatik-initiative/kerndatensatz-bildgebung/blob/main/docs/optional-pages.md)
> of this repository. A release must not ship with this banner (convention
> check M9).
{: .ig-highlight .ig-highlight-grey}

### Value Sets

This page describes the ValueSets of the **Bildgebung** module (naming
convention `MII_VS_<Module>_<Name>`). For general guidance on using codes, see
[FHIR Terminology](http://hl7.org/fhir/R4/terminologies.html); the code systems
the sets draw from are described on the [Code Systems](code-systems.html) page.

{:.bg-info}
**Expansions:** ValueSet expansions in this guide are produced by a FHIR
terminology server — SU-TermServ if the client certificate is configured,
otherwise the public HL7 server `tx.fhir.org` (in which case some KDS-specific
ValueSets may not expand completely).

> [TODO: If your module uses SNOMED CT, state the edition/version used. List
> the module's own ValueSets, or refer to the automatically generated artifact
> list — or remove this page if your module defines none.]
{: .ig-highlight .ig-highlight-grey}

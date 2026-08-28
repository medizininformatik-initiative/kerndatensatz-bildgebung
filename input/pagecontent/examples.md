<!-- markdownlint-disable MD041 -->
<!-- TODO:REVIEW machine translation of source page examples.md (de) -->

This page lists the example instances of the **Bildgebung** module. The
complete, automatically generated list of all examples can be found in the
[artifact overview](artifacts.html) (section *Example Instances*).

{:.bg-warning}
**Synthetic data only** — never use real or realistic-looking patient data in
examples.

Highlights:

- **ImagingStudy examples for all specified modalities** —
  [CT](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-ct.html),
  [MR](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-mr.html)
  (plus a [series-level variant](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-mr-series.html)),
  [CR/X-ray](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-cr.html),
  [NM](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-nm.html),
  [PT](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-pt.html) and
  [US](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-us.html) — each with
  the matching modality extension.
- **The report chain** — from the
  [request](ServiceRequest-mii-exa-bildgebung-anforderung-bildgebung.html) via
  the [imaging procedure](Procedure-mii-exa-bildgebung-bildgebungsprozedur.html)
  with [contrast administration](MedicationAdministration-mii-exa-bildgebung-kontrastmittelgabe.html)
  to the [diagnostic report](DiagnosticReport-mii-exa-bildgebung-radiologischer-Befund.html),
  the [radiological observation](Observation-mii-exa-bildgebung-radiologische-beobachtung.html),
  the [radiological measurement](Observation-mii-exa-bildgebung-radiologische-messung.html),
  the [body structure](BodyStructure-mii-exa-bildgebung-koerperstruktur.html) and the
  [reading procedure](Procedure-mii-exa-bildgebung-radiologische-befundungsprozedur.html).
- **Semi-structured reporting** — the
  [semi-structured report](Composition-mii-exa-bildgebung-semistrukt-befundbericht.html)
  organizes free text into sections; the
  [treatment recommendation](CarePlan-mii-exa-bildgebung-behandlungsempfehlung.html)
  and the [device](Device-mii-exa-bildgebung-geraet.html) complete the picture.

# Examples - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* **Examples**

## Examples

This page lists the example instances of the **Bildgebung** module. The complete, automatically generated list of all examples can be found in the [artifact overview](artifacts.md) (section **Example Instances**).

**Synthetic data only** — never use real or realistic-looking patient data in examples.

Highlights:

* **ImagingStudy examples for all specified modalities** — [CT](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-ct.md), [MR](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-mr.md) (plus a [series-level variant](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-mr-series.md)), [CR/X-ray](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-cr.md), [NM](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-nm.md), [PT](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-pt.md) and [US](ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-us.md) — each with the matching modality extension.
* **The report chain** — from the [request](ServiceRequest-mii-exa-bildgebung-anforderung-bildgebung.md) via the [imaging procedure](Procedure-mii-exa-bildgebung-bildgebungsprozedur.md) with [contrast administration](MedicationAdministration-mii-exa-bildgebung-kontrastmittelgabe.md) to the [diagnostic report](DiagnosticReport-mii-exa-bildgebung-radiologischer-Befund.md), the [radiological observation](Observation-mii-exa-bildgebung-radiologische-beobachtung.md), the [radiological measurement](Observation-mii-exa-bildgebung-radiologische-messung.md), the [body structure](BodyStructure-mii-exa-bildgebung-koerperstruktur.md) and the [reading procedure](Procedure-mii-exa-bildgebung-radiologische-befundungsprozedur.md).
* **Semi-structured reporting** — the [semi-structured report](Composition-mii-exa-bildgebung-semistrukt-befundbericht.md) organizes free text into sections; the [treatment recommendation](CarePlan-mii-exa-bildgebung-behandlungsempfehlung.md) and the [device](Device-mii-exa-bildgebung-geraet.md) complete the picture.


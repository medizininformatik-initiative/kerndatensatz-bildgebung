This page describes how conformance requirements are documented. A potentially more up-to-date version is documented in the [Core Dataset Wiki](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Conformance).

---

## Requirement Documentation

Requirements in this specification are marked by the following capitalised keywords (conformance verbs) based on [RFC-2119](https://datatracker.ietf.org/doc/html/rfc2119):

| German                       | English              |
|------------------------------|----------------------|
| MUSS / MÜSSEN                | MUST / SHALL         |
| DARF NICHT / DÜRFEN NICHT    | MUST NOT / SHALL NOT |
| VERPFLICHTEND                | REQUIRED             |
| SOLLTE / SOLLTEN             | SHOULD               |
| SOLLTE NICHT / SOLLTEN NICHT | SHOULD NOT           |
| EMPFOHLEN                     | RECOMMENDED          |
| KANN / OPTIONAL               | MAY                  |

---

## Must Support (MS)

### Definition

Elements of a FHIR resource can be marked as mandatory or [Must Support](http://hl7.org/fhir/R4/profiling.html#mustsupport) in a profile.

- **Mandatory elements** are elements with a minimum cardinality of `1` (e.g. `1..1`, `1..*`). These MUST generally be present. In exceptional cases the values may be missing -> in this case the absence MUST be documented through mechanisms such as the `Data-Absent-Reason Extension` (see [section *Missing Data*](#missing-data)).

- **Must Support (MS)** on an element means that systems MUST support this element, even if the cardinality is `0..*`. **Support** means: systems MUST be able to populate, store, display and correctly process the element.

### Requirements

#### Data-producing systems (e.g. FHIR API of a Data Integration Centre)

A conformant data-producing system MUST:
- populate an MS element with data, provided that these are available locally (e.g. via ETL from the primary system),
- be able to store the MS element in the resource,
- provide the MS element on request (e.g. in a feasibility query).

#### Data-consuming systems (e.g. requesting applications)

A conformant data-consuming system MUST:
- display MS elements to the user correctly,
- be able to take the values into account for calculations or further processing,
- process resource instances with MS elements without errors, i.e. without errors or aborts occurring.

---

## Missing Data

There are situations in which information on a particular data element is missing and the source system does not know the reason for the absence.

- If the source system has no data instance for an element with a minimum cardinality of `0` (including elements marked as *Must Support*), the data element MUST be **omitted** in the resource.
- If the data element is a **mandatory element** (i.e. minimum cardinality `1..`), it MUST be **present**, even if the source system has no data.

This is summarised in the following:

### Non-coded data elements
- The [`Data-Absent-Reason`](http://hl7.org/fhir/R4/extension-data-absent-reason.html) extension on the data type and the code `unknown` MUST be used.

### Coded data elements with a ValueSet binding of "example", "preferred" or "extensible"
- If the source system contains **only free text**, exclusively the text element (`CodeableConcept.text`) SHOULD be used.
- If neither text nor coded data are available:
  - if the ValueSet contains an "unknown" code, this SHALL be used.
  - if there is no "unknown" code in the ValueSet, the code `unknown` from the CodeSystem [DataAbsentReason](http://hl7.org/fhir/R4/codesystem-data-absent-reason.html) SHALL be used.

### Coded data elements with a ValueSet binding of "required"
- if the ValueSet contains an "unknown" code, it MUST be used.
- if there is no "unknown" code in the ValueSet, a concept from the ValueSet MUST be used, as the instance would otherwise be **non-conformant**.

---

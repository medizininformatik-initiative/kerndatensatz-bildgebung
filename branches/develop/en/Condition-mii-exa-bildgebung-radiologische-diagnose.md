# MII Example Bildgebung Condition - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII Example Bildgebung Condition**

## Example Condition: MII Example Bildgebung Condition

-------

**English**

-------

**clinicalStatus**: Active

**code**: Liver lesion

**subject**: [Erika Beispielpatientin Female, DoB: 1970-01-01](Patient-mii-exa-bildgebung-radiologischer-patient.md)

**encounter**: [Encounter: status = finished; class = AMB (AMB)](Encounter-mii-exa-bildgebung-radiologischer-fall.md)



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "mii-exa-bildgebung-radiologische-diagnose",
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "code" : "active"
    }]
  },
  "code" : {
    "text" : "Liver lesion"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-bildgebung-radiologischer-patient"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-bildgebung-radiologischer-fall"
  }
}

```

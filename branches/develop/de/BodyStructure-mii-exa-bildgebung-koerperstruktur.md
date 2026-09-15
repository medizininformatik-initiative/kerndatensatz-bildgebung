# MII Example Bildgebung BodyStructure - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII Example Bildgebung BodyStructure**

## Beispiel BodyStructure: MII Example Bildgebung BodyStructure

-------

**German**

-------

Profile: [MII PR Bildgebung Körperstruktur](StructureDefinition-mii-pr-bildgebung-koerperstruktur.md)

**morphology**: Microcalcification, calcified structure (morphologic abnormality)

**location**: Breast structure (body structure)

**locationQualifier**: Left (qualifier value)

**patient**: [Erika Beispielpatientin Female, DoB: 1970-01-01](Patient-mii-exa-bildgebung-radiologischer-patient.md)



## Resource Content

```json
{
  "resourceType" : "BodyStructure",
  "id" : "mii-exa-bildgebung-koerperstruktur",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-koerperstruktur"]
  },
  "morphology" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "code" : "12747003",
      "display" : "Microcalcification, calcified structure (morphologic abnormality)"
    }]
  },
  "location" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "code" : "76752008",
      "display" : "Breast structure (body structure)"
    }]
  },
  "locationQualifier" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "code" : "7771000",
      "display" : "Left (qualifier value)"
    }]
  }],
  "patient" : {
    "reference" : "Patient/mii-exa-bildgebung-radiologischer-patient"
  }
}

```

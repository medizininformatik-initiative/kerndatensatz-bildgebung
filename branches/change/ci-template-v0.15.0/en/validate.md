#  - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot.1

## Validate an instance

This page replaces the ad-hoc validation that Simplifier offered: paste or upload your **own** FHIR instance and check it against the profiles of **this** guide. The values below are filled in from this build - nothing to look up:

* Package: Canonical
  * `de.medizininformatikinitiative.kerndatensatz.bildgebung#2027.0.0-ballot.1`: `https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung`
* Package: FHIR version
  * `de.medizininformatikinitiative.kerndatensatz.bildgebung#2027.0.0-ballot.1`: `4.0.1`
* Package: Terminology server
  * `de.medizininformatikinitiative.kerndatensatz.bildgebung#2027.0.0-ballot.1`: `https://tx.fhir.org`

### Data protection - read before pasting anything

The public validator at `validator.fhir.org` is a **best-effort service hosted by HL7 International outside the EU**. Send it **synthetic instances only**. Real or realistic patient data - including pseudonymised records and test data derived from real cases - may **only** be validated against a **self-hosted** validator inside your own institution (route D or E below). Routes A, B (with a public terminology server) and C, and the live box on this page when it points at the public service, all transmit the instance to that external service.

### A. Online - validator.fhir.org

1. Open[https://validator.fhir.org/](https://validator.fhir.org/).
1. Under**FHIR Version**keep`4.0.1`.
1. Under**Implementation Guides**type`de.medizininformatikinitiative.kerndatensatz.bildgebung`and pick version`2027.0.0-ballot.1`- i.e. the entry`de.medizininformatikinitiative.kerndatensatz.bildgebung#2027.0.0-ballot.1`. If the version is not listed, the package is not on the registry the validator reads (a CI build, for example): use route B with the package file instead.
1. Under**Profiles**paste the canonical URL of the profile to check against (from the profile's page in this guide, the**Defining URL**). Without one, the validator uses the profiles the instance declares in`meta.profile`.
1. Paste or upload the instance and press**Validate**.

### B. Command line - validator_cli.jar

Download `validator_cli.jar` from the [HL7 FHIR core releases](https://github.com/hapifhir/org.hl7.fhir.core/releases/latest) (Java 11 or newer), then:

```
java -jar validator_cli.jar -version 4.0.1 -ig de.medizininformatikinitiative.kerndatensatz.bildgebung#2027.0.0-ballot.1 -tx https://tx.fhir.org instance.json
```

Add `-profile <canonical>` to force a profile, or `-ig path/to/package.tgz` when the version is not on the registry. `-tx n/a` switches terminology checks off entirely.

### C. API - the validator's REST interface

The same service takes a JSON request (`POST /validate`) - useful for CI pipelines and test suites. The interface is documented at [https://validator.fhir.org/swagger-ui/index.html](https://validator.fhir.org/swagger-ui/index.html); the live box below uses exactly that call, with this guide's package preset.

### D. Self-hosted - for a data integration centre (DIZ)

The public service runs as a container image you can host yourself, which is the **only** acceptable target for real or realistic data:

```
docker run -d --name fhir-validator -p 3500:3500 markiantorno/validator-wrapper
```

Then use `http://<host>:3500` as the base URL (route C; a module can point this page's live box at it via `input/data/features.json`). Route B stays fully offline with `-ig path/to/package.tgz` and a local terminology server. In both cases point `-tx` (or `txServer` in the API request) at a terminology server that carries the German value sets - see the note below.

### E. MII FHIR Validator - the MII-curated container

The MII publishes its own validator container for a data integration centre: it wraps the same HL7 validator, but ships with the KDS packages in its cache, so it validates **offline** once its terminology server is in place. It is part of the FDPG data-node stack:

```
docker run -d -p 8080:8080 ghcr.io/medizininformatik-initiative/mii-fhir-validator
```

Documentation: [the validator's own guide](https://medizininformatik-initiative.github.io/mii-fhir-validator/) and its [page in the data-node documentation](https://medizininformatik-initiative.github.io/dataportal/data-node/mii-fhir-validator.html). Which guides it loads is fixed when the container starts, through `IG_PARAMS` - add `-ig de.medizininformatikinitiative.kerndatensatz.bildgebung#2027.0.0-ballot.1`, or point it at a package file for a version that is not on the registry.

**Its interface is not the one route C describes.** It answers `POST /validateResource` with the bare resource as the body, the options as query parameters, and an `OperationOutcome` as the result. So it fits a pipeline or a script, and it cannot serve the live box below - a browser page needs the wrapper's `POST /validate`. Note also that it is published as a pre-release [(`0.0.1-alpha` at the time of writing)](https://github.com/medizininformatik-initiative/mii-fhir-validator/releases).

### Terminology - the public server may not know German codes

The public `tx.fhir.org` does not carry the complete German SNOMED CT extension and other German code systems, so codes bound in this guide's value sets can be reported as unknown even when they are correct. For the value sets of this guide point `-tx` at the SU-TermServ Ontoserver (`https://ontoserver.mii-termserv.de/fhir`, client certificate required) or at your own Ontoserver; otherwise read terminology messages with that limitation in mind.

### F. Live box - validate right here

**This box sends the pasted text to `https://validator.fhir.org`** (the default is the public HL7 validator - see the data-protection note above). Nothing is stored on this site. The first run loads the package on the validator and can take a minute; later runs reuse that session.

FHIR instance (JSON or XML)

Profile of this guide (optional)

- none: the validator uses the instance's meta.profile -
radiological service request (ServiceRequest)
care plan (CarePlan)
imaging procedure (Procedure)
imaging study (ImagingStudy)
imaging device (Device)
contrast medication administration (MedicationAdministration)
body structure (BodyStructure)
radiological read-procedure (Procedure)
radiological observation (Observation)
radiological observation (Observation)
diagnostic report (DiagnosticReport)
composition (Composition)

Profile canonical (optional - filled in by the picker; paste any other canonical, for example one from a dependency package, to override it)

Validate
This live box needs JavaScript; without it use routes A to E above.


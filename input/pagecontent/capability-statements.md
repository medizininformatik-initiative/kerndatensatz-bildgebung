To enable decentralised data analysis via the German Research Data Portal for Health of the Medical Informatics Initiative, the [capabilities interaction](https://www.hl7.org/fhir/R4/http.html#capabilities) MUST be supported, so that the FHIR server exposes a CapabilityStatement at ```[BASE-URL]/metadata```. Within this CapabilityStatement it MUST be indicated which profiles, including their version, as well as which search parameters are supported.

The following lists which contents MUST be specified as mandatory in the CapabilityStatement. In addition, conformance with the following CapabilityStatement MUST be declared in the respective CapabilityStatement instance under [```CapabilityStatement.instantiates```](https://www.hl7.org/fhir/capabilitystatement-definitions.html#CapabilityStatement.instantiates).

Canonical: ```https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/CapabilityStatement/metadata```

See the [CapabilityStatement](CapabilityStatement-mii-cps-bildgebung-capabilitystatement.html) for the full definition of the required interactions, profiles, and search parameters.

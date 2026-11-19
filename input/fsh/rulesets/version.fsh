Alias: $artifact-versionAlgorithm = http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm
Alias: $version-algorithm = http://hl7.org/fhir/version-algorithm

// switch version of all conformance resources here
RuleSet: Version
* version = "2027.0.0-ballot"
//* extension[+].url = $artifact-versionAlgorithm
//* extension[=].valueCoding = $version-algorithm#semver "SemVer"
* extension[http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm].valueCoding = $version-algorithm#semver "SemVer"

RuleSet: PR_CS_VS_Version
* ^version = "2027.0.0-ballot"
//* ^extension[+].url = $artifact-versionAlgorithm
//* ^extension[=].valueCoding = $version-algorithm#semver "SemVer"
* ^extension[http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm].valueCoding = $version-algorithm#semver "SemVer"

// switch version inside Package Source Extension for all resources in this IG
RuleSet: CRMIPackageSource
//* meta.extension[+].url = "http://hl7.org/fhir/StructureDefinition/package-source"
//* meta.extension[http://hl7.org/fhir/StructureDefinition/package-source].extension[+].url = "packageId"
* meta.extension[http://hl7.org/fhir/StructureDefinition/package-source].extension[packageId].valueId = "de.medizininformatikinitiative.kerndatensatz.bildgebung"
//* meta.extension[http://hl7.org/fhir/StructureDefinition/package-source].extension[+].url = "version"
* meta.extension[http://hl7.org/fhir/StructureDefinition/package-source].extension[version].valueString = "2027.0.0-ballot.1"
//* meta.extension[http://hl7.org/fhir/StructureDefinition/package-source].extension[+].url = "uri"
* meta.extension[http://hl7.org/fhir/StructureDefinition/package-source].extension[uri].valueUri = "https://www.medizininformatik-initiative.de/fhir/modul-bildgebung"

RuleSet: CRMIPackageSourceDefinitionalResource
//* ^meta.extension[+].url = "http://hl7.org/fhir/StructureDefinition/package-source"
//* ^meta.extension[http://hl7.org/fhir/StructureDefinition/package-source].extension[+].url = "packageId"
* ^meta.extension[http://hl7.org/fhir/StructureDefinition/package-source].extension[packageId].valueId = "de.medizininformatikinitiative.kerndatensatz.bildgebung"
//* ^meta.extension[http://hl7.org/fhir/StructureDefinition/package-source].extension[+].url = "version"
* ^meta.extension[http://hl7.org/fhir/StructureDefinition/package-source].extension[version].valueString = "2027.0.0-ballot.1"
//* ^meta.extension[http://hl7.org/fhir/StructureDefinition/package-source].extension[+].url = "uri"
* ^meta.extension[http://hl7.org/fhir/StructureDefinition/package-source].extension[uri].valueUri = "https://www.medizininformatik-initiative.de/fhir/modul-bildgebung"

// Resource-independent Effective Period (StructureDefinition, CapabilityStatement, ImplementationGuide)
// A release may remain the valid implemented version until a later release replaces it, so only express applicability start for now
RuleSet: CRMIResourceEffectivePeriod
//* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/resource-effectivePeriod"
* ^extension[http://hl7.org/fhir/StructureDefinition/resource-effectivePeriod].valuePeriod.start = "2027"

RuleSet: CRMIResourceEffectivePeriodInstance
//* extension[+].url = "http://hl7.org/fhir/StructureDefinition/resource-effectivePeriod"
* extension[http://hl7.org/fhir/StructureDefinition/resource-effectivePeriod].valuePeriod.start = "2027"
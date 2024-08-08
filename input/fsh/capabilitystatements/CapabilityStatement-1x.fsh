RuleSet: SupportResource (resource, expectation)
* rest.resource[+].type = #{resource}
* rest.resource[=].extension[0].url = $exp
* rest.resource[=].extension[0].valueCode = {expectation}

RuleSet: Profile (profile, expectation)
* rest.resource[=].profile[+] = "{profile}"
* rest.resource[=].profile[=].extension[0].url = $exp
* rest.resource[=].profile[=].extension[0].valueCode = {expectation}

RuleSet: SupportProfile (profile, expectation)
// This rule set must follow a SupportResource rule set, and applies to that resource.
* rest.resource[=].supportedProfile[+] = "{profile}"
* rest.resource[=].supportedProfile[=].extension[0].url = $exp
* rest.resource[=].supportedProfile[=].extension[0].valueCode = {expectation}

RuleSet: SupportInteraction (interaction, expectation)
// This rule set must follow a SupportResource rule set, and applies to that resource.
* rest.resource[=].interaction[+].code = {interaction}
* rest.resource[=].interaction[=].extension[0].url = $exp
* rest.resource[=].interaction[=].extension[0].valueCode = {expectation}

RuleSet: SupportSearchParam (name, canonical, type, expectation)
// This rule set must follow a SupportResource rule set, and applies to that resource.
* rest.resource[=].searchParam[+].name = "{name}"
* rest.resource[=].searchParam[=].definition = "{canonical}"
* rest.resource[=].searchParam[=].type = {type}
* rest.resource[=].searchParam[=].extension[0].url = $exp
* rest.resource[=].searchParam[=].extension[0].valueCode = {expectation}

Instance: mii-cps-bildgebung-capabilitystatement-1x
InstanceOf: CapabilityStatement
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/CapabilityStatement/metadata"
* insert Version
* name = "MII_CPS_Bildgebung_CapabilityStatement_1x"
* title = "MII CPS Bildgebung CapabilityStatement"
* status = #active
* experimental = false
* date = "2024-07-30"
* insert SP_Publisher
* description = "Das vorliegende CapabilityStatement beschreibt alle verpflichtenden Interaktionen die ein konformes System unterstützen muss, um das Modul Bildgebung der Medizininformatik Initiative zu implementieren."
* jurisdiction = urn:iso:std:iso:3166#DE "Germany"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #xml
* format[+] = #json
* rest.mode = #server

//BodyStrucuture
* insert SupportResource(BodyStructure, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/BodyStructure, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-koerperstruktur|1.0.0, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(_source, http://hl7.org/fhir/SearchParameter/Resource-source, #uri, #SHALL)
* insert SupportSearchParam(morphology, http://hl7.org/fhir/SearchParameter/BodyStructure-morphology, #token, #SHALL)
* insert SupportSearchParam(location, http://hl7.org/fhir/SearchParameter/BodyStructure-location, #token, #SHALL)
* insert SupportSearchParam(location-qualifier, https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-body-structure-location-qualfier, #token, #SHALL)
* insert SupportSearchParam(patient, http://hl7.org/fhir/SearchParameter/BodyStructure-patient, #reference, #SHALL)

//CarePlan
* insert SupportResource(CarePlan, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/CarePlan, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-behandlungsempfehlung|1.0.0, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(_source, http://hl7.org/fhir/SearchParameter/Resource-source, #uri, #SHALL)
* insert SupportSearchParam(status, http://hl7.org/fhir/SearchParameter/CarePlan-status, #token, #SHALL)
* insert SupportSearchParam(intent, http://hl7.org/fhir/SearchParameter/CarePlan-intent, #token, #SHALL)
* insert SupportSearchParam(description, https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-description, #string, #SHALL)
* insert SupportSearchParam(patient, http://hl7.org/fhir/SearchParameter/clinical-patient, #reference, #SHALL)
* insert SupportSearchParam(supporting-info, https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-supporting-info, #reference, #SHALL)
/*
//Composition
* insert SupportResource(Composition, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/Composition, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-semistrukt-befundbericht|1.0.0, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(_source, http://hl7.org/fhir/SearchParameter/Resource-source, #uri, #SHALL)
* insert SupportSearchParam(status, http://hl7.org/fhir/SearchParameter/Composition-status, #token, #SHALL)
* insert SupportSearchParam(type, http://hl7.org/fhir/SearchParameter/clinical-type, #token, #SHALL)
* insert SupportSearchParam(description, https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-description, #token, #SHALL)
* insert SupportSearchParam(patient, http://hl7.org/fhir/SearchParameter/clinical-patient, #reference, #SHALL)
* insert SupportSearchParam(date, http://hl7.org/fhir/SearchParameter/clinical-date, #date, #SHALL)
* insert SupportSearchParam(author, http://hl7.org/fhir/SearchParameter/Composition-author, #reference, #SHALL)
* insert SupportSearchParam(title, http://hl7.org/fhir/SearchParameter/Composition-title, #string, #SHALL)
* insert SupportSearchParam(section-title, https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-composition-section-title, #string, #SHALL)
* insert SupportSearchParam(section, http://hl7.org/fhir/SearchParameter/Composition-section, #token, #SHALL)
* insert SupportSearchParam(section-author, https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-composition-section-author, #reference, #SHALL)
* insert SupportSearchParam(section-text, https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-composition-section-text, #text, #SHALL)
* insert SupportSearchParam(entry, http://hl7.org/fhir/SearchParameter/Composition-entry, #reference, #SHALL)
*/
//DiagnosticReport
* insert SupportResource(DiagnosticReport, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/DiagnosticReport, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-radiologischer-befund|1.0.0, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(_source, http://hl7.org/fhir/SearchParameter/Resource-source, #uri, #SHALL)
* insert SupportSearchParam(supporting-info, https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-diagnostic-report-supporting-info, #reference, #SHALL)
* insert SupportSearchParam(based-on, http://hl7.org/fhir/SearchParameter/DiagnosticReport-based-on, #reference, #SHALL)
* insert SupportSearchParam(status, http://hl7.org/fhir/SearchParameter/DiagnosticReport-status, #token, #SHALL)
* insert SupportSearchParam(category, http://hl7.org/fhir/SearchParameter/DiagnosticReport-category, #token, #SHALL)
* insert SupportSearchParam(code, http://hl7.org/fhir/SearchParameter/clinical-code, #token, #SHALL)
* insert SupportSearchParam(patient, http://hl7.org/fhir/SearchParameter/clinical-patient, #reference, #SHALL)
* insert SupportSearchParam(date, http://hl7.org/fhir/SearchParameter/clinical-date, #date, #SHALL)
* insert SupportSearchParam(issued, http://hl7.org/fhir/SearchParameter/DiagnosticReport-issued, #date, #SHALL)
* insert SupportSearchParam(result, http://hl7.org/fhir/SearchParameter/DiagnosticReport-result, #reference, #SHALL)
* insert SupportSearchParam(imaging-study, https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-diagnostic-report-imaging-study, #reference, #SHALL)
* insert SupportSearchParam(conclusion-text, https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-diagnostic-report-conclusion, #string, #SHALL)
* insert SupportSearchParam(conclusion, http://hl7.org/fhir/SearchParameter/DiagnosticReport-conclusion, #token, #SHALL)

//ImagingProcedure
* insert SupportResource(ImagingProcedure, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/Procedure, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-bildgebungsprozedur|1.0.0, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(_source, http://hl7.org/fhir/SearchParameter/Resource-source, #uri, #SHALL)
* insert SupportSearchParam(based-on, http://hl7.org/fhir/SearchParameter/Procedure-based-on, #reference, #SHALL)
* insert SupportSearchParam(status, http://hl7.org/fhir/SearchParameter/Procedure-status, #token, #SHALL)
* insert SupportSearchParam(category, http://hl7.org/fhir/SearchParameter/Procedure-category, #token, #SHALL)
* insert SupportSearchParam(code, http://hl7.org/fhir/SearchParameter/clinical-code, #token, #SHALL)
* insert SupportSearchParam(patient, http://hl7.org/fhir/SearchParameter/clinical-patient, #reference, #SHALL)

//ReadProcedure
* insert SupportResource(ReadProcedure, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/Procedure, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-radiologische-befundungsprozedur|1.0.0, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(_source, http://hl7.org/fhir/SearchParameter/Resource-source, #uri, #SHALL)
* insert SupportSearchParam(status, http://hl7.org/fhir/SearchParameter/Procedure-status, #token, #SHALL)
* insert SupportSearchParam(category, http://hl7.org/fhir/SearchParameter/Procedure-category, #token, #SHALL)
* insert SupportSearchParam(patient, http://hl7.org/fhir/SearchParameter/clinical-patient, #reference, #SHALL)
* insert SupportSearchParam(date, http://hl7.org/fhir/SearchParameter/clinical-date, #date, #SHALL)
* insert SupportSearchParam(report, https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-read-proc-report, #reference, #SHALL)

//ImagingStudy
* insert SupportResource(ImagingStudy, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/ImagingStudy, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-bildgebungsstudie|1.0.0, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(_source, http://hl7.org/fhir/SearchParameter/Resource-source, #uri, #SHALL)
* insert SupportSearchParam(bildgebungsgrund, https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-bildgebungsgrund, #string, #SHALL)
* insert SupportSearchParam(study-modality, https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-modality, #token, #SHALL)
* insert SupportSearchParam(patient, http://hl7.org/fhir/SearchParameter/clinical-patient, #reference, #SHALL)
* insert SupportSearchParam(encounter, http://hl7.org/fhir/SearchParameter/ImagingStudy-encounter, #reference, #SHALL)
* insert SupportSearchParam(started, http://hl7.org/fhir/SearchParameter/ImagingStudy-started, #date, #SHALL)
* insert SupportSearchParam(basedon, http://hl7.org/fhir/SearchParameter/ImagingStudy-basedon, #reference, #SHALL)
* insert SupportSearchParam(endpoint, http://hl7.org/fhir/SearchParameter/ImagingStudy-endpoint, #reference, #SHALL)
* insert SupportSearchParam(number-series, https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-number-series, #number, #SHALL)
* insert SupportSearchParam(number-instances, https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-number-instances, #number, #SHALL)
* insert SupportSearchParam(procedure-reference, https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-procedure-reference, #reference, #SHALL)
* insert SupportSearchParam(reason-reference, https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-reason-reference, #reference, #SHALL)
* insert SupportSearchParam(description, https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-description, #string, #SHALL)
* insert SupportSearchParam(CTDI-volume, https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-series-CTDI-volume, #quantity, #SHALL)
* insert SupportSearchParam(tube-voltage, https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-series-tube-voltage, #quantity, #SHALL)
* insert SupportSearchParam(exposure-time, https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-series-exposure-time, #quantity, #SHALL)
* insert SupportSearchParam(exposure, https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-series-exposure, #quantity, #SHALL)
* insert SupportSearchParam(x-ray-tube-current, https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-series-xray-tube-current, #quantity, #SHALL)
* insert SupportSearchParam(kvp, https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-series-kvp, #quantity, #SHALL)
* insert SupportSearchParam(mag-field-strength, https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-series-magnetic-field-strength, #quantity, #SHALL)
* insert SupportSearchParam(scanning-seq, https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-series-scanning-sequence, #token, #SHALL)
* insert SupportSearchParam(scanning-seq-variant, https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-series-scanning-sequence-variant, #token, #SHALL)
* insert SupportSearchParam(radiopharmaceutical, https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-series-radiopharmaceutical, #token, #SHALL)
* insert SupportSearchParam(radiopharmaceutical-start-time, https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-series-radiopharmaceutical-start-time, #date, #SHALL)
* insert SupportSearchParam(rescale-type, https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-series-rescale-type, #token, #SHALL)
* insert SupportSearchParam(radionuclide-total-dose, https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-series-radionuclide-total-dose, #quantity, #SHALL)
* insert SupportSearchParam(radionuclide-half-life, https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-series-radionuclide-half-life, #quantity, #SHALL)
* insert SupportSearchParam(contrast-bolus, https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-series-contrast-bolus, #token, #SHALL)
* insert SupportSearchParam(contrast-bolus-details, https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-series-contrast-bolus-details, #reference, #SHALL)
* insert SupportSearchParam(manufacturer, https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-manufacturer, #string, #SHALL)
* insert SupportSearchParam(modelname, https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-manufacturer-model-name, #string, #SHALL)
* insert SupportSearchParam(series, http://hl7.org/fhir/SearchParameter/ImagingStudy-series, #token, #SHALL)
* insert SupportSearchParam(series-number, https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-series-number, #number, #SHALL)
* insert SupportSearchParam(modality, http://hl7.org/fhir/SearchParameter/ImagingStudy-modality, #quantity, #SHALL)
* insert SupportSearchParam(series-description, https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-description, #string, #SHALL)
* insert SupportSearchParam(number-instances, https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-number-instances, #number, #SHALL)
* insert SupportSearchParam(series-bodysite, http://hl7.org/fhir/SearchParameter/ImagingStudy-bodysite, #quantity, #SHALL)
* insert SupportSearchParam(series-laterality, https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-series-laterality, #token, #SHALL)
* insert SupportSearchParam(series-started, https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-series-started, #date, #SHALL)
* insert SupportSearchParam(instance-pixel-spacing-x, https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-instance-pixel-spacing-x, #quantity, #SHALL)
* insert SupportSearchParam(instance-pixel-spacing-y, https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-instance-pixel-spacing-y, #quantity, #SHALL)
* insert SupportSearchParam(instance-slice-thickness, https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-slice-thickness, #quantity, #SHALL)
* insert SupportSearchParam(instance-image-type, https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-instance-image-type, #string, #SHALL)
* insert SupportSearchParam(instance, http://hl7.org/fhir/SearchParameter/ImagingStudy-instance, #token, #SHALL)
* insert SupportSearchParam(dicom-class, http://hl7.org/fhir/SearchParameter/ImagingStudy-dicom-class, #token, #SHALL)
* insert SupportSearchParam(instance-number, https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-instance-number, #number, #SHALL)

//Observation
* insert SupportResource(Observation, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/Observation, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-radiologische-beobachtung|1.0.0, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(_source, http://hl7.org/fhir/SearchParameter/Resource-source, #uri, #SHALL)
* insert SupportSearchParam(serie-uid, https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-observation-serie-uid, #token, #SHALL)
* insert SupportSearchParam(sop-instance-uid, https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-observation-sop-instance-uid, #token, #SHALL)
* insert SupportSearchParam(body-structure, https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-observation-body-structure, #reference, #SHALL)
* insert SupportSearchParam(part-of, http://hl7.org/fhir/SearchParameter/Observation-part-of, #reference, #SHALL)
* insert SupportSearchParam(status, http://hl7.org/fhir/SearchParameter/Observation-status, #token, #SHALL)
* insert SupportSearchParam(category, http://hl7.org/fhir/SearchParameter/Observation-category, #token, #SHALL)
* insert SupportSearchParam(code, http://hl7.org/fhir/SearchParameter/clinical-code, #token, #SHALL)
* insert SupportSearchParam(patient, http://hl7.org/fhir/SearchParameter/clinical-patient, #reference, #SHALL)
* insert SupportSearchParam(issued, https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-observation-issued, #date, #SHALL)
* insert SupportSearchParam(value-concept, http://hl7.org/fhir/SearchParameter/Observation-value-concept, #quantity, #SHALL)
* insert SupportSearchParam(value-date, http://hl7.org/fhir/SearchParameter/Observation-value-date, #date, #SHALL)
* insert SupportSearchParam(value-quantity, http://hl7.org/fhir/SearchParameter/Observation-value-quantity, #quantity, #SHALL)
* insert SupportSearchParam(value-string, http://hl7.org/fhir/SearchParameter/Observation-value-string, #string, #SHALL)
* insert SupportSearchParam(body-site, https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-observation-body-site, #token, #SHALL)
* insert SupportSearchParam(has-member, http://hl7.org/fhir/SearchParameter/Observation-has-member, #reference, #SHALL)
* insert SupportSearchParam(derived-from, http://hl7.org/fhir/SearchParameter/Observation-derived-from, #reference, #SHALL)
* insert SupportSearchParam(code-value-concept, http://hl7.org/fhir/SearchParameter/Observation-code-value-concept, #composite, #SHALL)
* insert SupportSearchParam(code-value-date, http://hl7.org/fhir/SearchParameter/Observation-code-value-date, #composite, #SHALL)
* insert SupportSearchParam(code-value-quantity, http://hl7.org/fhir/SearchParameter/Observation-code-value-quantity, #composite, #SHALL)
* insert SupportSearchParam(code-value-string, http://hl7.org/fhir/SearchParameter/Observation-code-value-string, #composite, #SHALL)
* insert SupportSearchParam(combo-code, http://hl7.org/fhir/SearchParameter/Observation-combo-code, #token, #SHALL)
* insert SupportSearchParam(combo-code-value-concept, http://hl7.org/fhir/SearchParameter/Observation-combo-code-value-concept, #composite, #SHALL)
* insert SupportSearchParam(combo-code-value-quantity, http://hl7.org/fhir/SearchParameter/Observation-combo-code-value-quantity, #composite, #SHALL)
* insert SupportSearchParam(combo-value-concept, http://hl7.org/fhir/SearchParameter/Observation-combo-value-concept, #token, #SHALL)
* insert SupportSearchParam(combo-value-quantity, http://hl7.org/fhir/SearchParameter/Observation-combo-value-quantity, #quantity, #SHALL)
* insert SupportSearchParam(component-code, http://hl7.org/fhir/SearchParameter/Observation-component-code, #token, #SHALL)
* insert SupportSearchParam(component-code-value-concept, http://hl7.org/fhir/SearchParameter/Observation-component-code-value-concept, #composite, #SHALL)
* insert SupportSearchParam(component-code-value-quantity, http://hl7.org/fhir/SearchParameter/Observation-component-code-value-quantity, #composite, #SHALL)
* insert SupportSearchParam(component-value-concept, http://hl7.org/fhir/SearchParameter/Observation-component-value-concept, #token, #SHALL)
* insert SupportSearchParam(component-value-quantity, http://hl7.org/fhir/SearchParameter/Observation-component-code-value-concept, #quantity, #SHALL)

//RadiopharmaceuticalAdministration
* insert SupportResource(MedicationAdministration, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/MedicationAdministration, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-gabe-radiopharmakon|1.0.0, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(_source, http://hl7.org/fhir/SearchParameter/Resource-source, #uri, #SHALL)
* insert SupportSearchParam(status, http://hl7.org/fhir/SearchParameter/medications-status, #token, #SHALL)
* insert SupportSearchParam(medication, http://hl7.org/fhir/SearchParameter/medications-medication, #reference, #SHALL)
* insert SupportSearchParam(code, http://hl7.org/fhir/SearchParameter/clinical-code, #token, #SHALL)
* insert SupportSearchParam(patient, http://hl7.org/fhir/SearchParameter/clinical-patient, #reference, #SHALL)
* insert SupportSearchParam(effective-time, http://hl7.org/fhir/SearchParameter/MedicationAdministration-effective-time, #date, #SHALL)
* insert SupportSearchParam(dosage-dose, https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-medications-dose, #quantity, #SHALL)

//ServiceRequest
* insert SupportResource(ServiceRequest, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/ServiceRequest, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-anforderung-bildgebung|1.0.0, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(_source, http://hl7.org/fhir/SearchParameter/Resource-source, #uri, #SHALL)
* insert SupportSearchParam(status, http://hl7.org/fhir/SearchParameter/ServiceRequest-status, #token, #SHALL)
* insert SupportSearchParam(intent, http://hl7.org/fhir/SearchParameter/ServiceRequest-intent, #token, #SHALL)
* insert SupportSearchParam(category, http://hl7.org/fhir/SearchParameter/ServiceRequest-category, #token, #SHALL)
* insert SupportSearchParam(code, http://hl7.org/fhir/SearchParameter/clinical-code, #token, #SHALL)
* insert SupportSearchParam(patient, http://hl7.org/fhir/SearchParameter/clinical-patient, #reference, #SHALL)
* insert SupportSearchParam(encounter, http://hl7.org/fhir/SearchParameter/clinical-encounter, #reference, #SHALL)
* insert SupportSearchParam(authored, http://hl7.org/fhir/SearchParameter/ServiceRequest-authored, #date, #SHALL)
* insert SupportSearchParam(requester, http://hl7.org/fhir/SearchParameter/ServiceRequest-requester, #reference, #SHALL)
* insert SupportSearchParam(reason-code, https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-service-request-reason-code, #token, #SHALL)
* insert SupportSearchParam(reason-reference, https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-reason-reference, #reference, #SHALL)
* insert SupportSearchParam(supporting-info, https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-supporting-info, #reference, #SHALL)

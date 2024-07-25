//More Profiles
Instance: mii-sp-bildgebung-supporting-info
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-supporting-info"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_SupportingInfo"
* status = #active
* experimental = false
* date = "2024-07-19"
* description = "Suchparameter für SupportingInfo"
* code = #supporting-info
* base[+] = #CarePlan
* base[+] = #ServiceRequest
* type = #reference
* expression = "CarePlan.supportingInfo | ServiceRequest.supportingInfo"
* target[+] = #DiagnosticReport

Instance: mii-sp-bildgebung-reason-reference
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-reason-reference"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Reason_Reference"
* status = #active
* experimental = false
* date = "2024-07-19"
* description = "Suchparameter für ReasonReference"
* code = #reason-reference
* base[+] = #ImagingStudy
* base[+] = #ServiceRequest
* type = #reference
* expression = "ImagingStudy-reasonReference | ServiceRequest.reasonReference"
* target[+] = #Condition
* target[+] = #Observation
* target[+] = #DiagnosticReport
* target[+] = #DocumentReference

Instance: mii-sp-bildgebung-description
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-description"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Description"
* status = #active
* experimental = false
* date = "2024-07-19"
* description = "Suchparameter für CarePlan.description | ImagingStudy.description | ImagingStudy.series.description"
* code = #description
* base[+] = #CarePlan
* base[+] = #ImagingStudy
* base[+] = #ImagingStudy.series
* type = #string
* expression = "CarePlan.description | ImagingStudy.description | ImagingStudy.series.description"
* modifier[+] = #text
* modifier[+] = #not
* modifier[+] = #above
* modifier[+] = #below
* modifier[+] = #in
* modifier[+] = #not-in

// BodyStructure
Instance: mii-sp-bildgebung-koerperstruktur-location-qualfier
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-koerperstruktur-location-qualfier"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Koerperstruktur_Location_Qualfier"
* status = #active
* experimental = false
* date = "2024-07-19"
* description = "Suchparameter für Koerperstruktur.locationQualifier"
* code = #location-qualfier
* base = #BodyStructure
* type = #token
* expression = "BodyStructure.locationQualifier"
* modifier[+] = #text
* modifier[+] = #not
* modifier[+] = #above
* modifier[+] = #below
* modifier[+] = #in
* modifier[+] = #not-in

//Composition
Instance: mii-sp-bildgebung-composition-section-title
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-composition-section-title"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Composition_Section_Title"
* status = #active
* experimental = false
* date = "2024-07-19"
* description = "Suchparameter für Composition.section.title"
* code = #section-title
* base = #Composition
* type = #string
* expression = "Composition.section.title"
* modifier[+] = #text
* modifier[+] = #not
* modifier[+] = #above
* modifier[+] = #below
* modifier[+] = #in
* modifier[+] = #not-in

Instance: mii-sp-bildgebung-composition-section-author
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-composition-section-author"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Composition_Section_Author"
* status = #active
* experimental = false
* date = "2024-07-19"
* description = "Suchparameter für Composition.section.author"
* code = #section-author
* base = #Composition
* type = #reference
* expression = "Composition.section.author"
* target = #Practitioner

Instance: mii-sp-bildgebung-composition-section-text
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-composition-section-text"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Composition_Section_Text"
* status = #active
* experimental = false
* date = "2024-07-19"
* description = "Suchparameter für Composition.section.text"
* code = #section-text
* base = #Composition
* type = #text
* expression = "Composition.section.text"

//DiagnosticReport
Instance: mii-sp-bildgebung-diagnostic-report-supporting-info
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-diagnostic-report-supporting-info"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Diagnostic_Report_Supporting_Info"
* status = #active
* experimental = false
* date = "2024-07-19"
* description = "Suchparameter für Extension DiagnosticReport.SupportingInfo"
* code = #supporting-info
* base[+] = #DiagnosticReport
* type = #reference
* expression = "DiagnosticReport.extension('http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.supportingInfo').value"
* target[+] = #DiagnosticReport
* target[+] = #Procedure

Instance: mii-sp-bildgebung-diagnostic-report-imaging-study
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-diagnostic-report-imaging-study"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Diagnostic_Report_Imaging_Study"
* status = #active
* experimental = false
* date = "2024-07-19"
* description = "Suchparameter für DiagnosticReport.imagingStudy"
* code = #imaging-study
* base = #DiagnosticReport
* type = #reference
* expression = "DiagnosticReport.imagingStudy"
* target = #ImagingStudy

Instance: mii-sp-bildgebung-diagnostic-report-conclusion
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-diagnostic-report-conclusion"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Diagnostic_Report_Conclusion"
* status = #active
* experimental = false
* date = "2024-07-19"
* description = "Suchparameter für DiagnosticReport.conclusion"
* code = #conclusion-text
* base = #DiagnosticReport
* type = #string
* expression = "DiagnosticReport.conclusion"
* modifier[+] = #text
* modifier[+] = #not
* modifier[+] = #above
* modifier[+] = #below
* modifier[+] = #in
* modifier[+] = #not-in

//ImagingStudy
Instance: mii-sp-bildgebung-imaging-study-bildgebungsgrund
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-bildgebungsgrund"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Imaging_Study_Bildgebungsgrund"
* status = #active
* experimental = false
* date = "2024-07-19"
* description = "Suchparameter für ImagingStudy.Extension.Bildgebungsgrund"
* code = #bildgebungsgrund
* base = #ImagingStudy
* type = #string
* expression = "ImagingStudy.extension('https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-bildgebungsgrund').value"
* modifier[+] = #text
* modifier[+] = #not
* modifier[+] = #above
* modifier[+] = #below
* modifier[+] = #in
* modifier[+] = #not-in

Instance: mii-sp-bildgebung-imaging-study-modality
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-modality"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Imaging_Study_Modality"
* status = #active
* experimental = false
* date = "2024-07-19"
* description = "Suchparameter für ImagingStudy.modality"
* code = #study-modality
* base = #ImagingStudy
* type = #token
* expression = "ImagingStudy.modality"
* modifier[+] = #text
* modifier[+] = #not
* modifier[+] = #above
* modifier[+] = #below
* modifier[+] = #in
* modifier[+] = #not-in

Instance: mii-sp-bildgebung-imaging-study-number-series
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-number-series"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Imaging_Study_Number_Series"
* status = #active
* experimental = false
* date = "2024-07-19"
* description = "Suchparameter für ImagingStudy.numberOfSeries"
* code = #number-series
* base = #ImagingStudy
* type = #number
* expression = "ImagingStudy.numberOfSeries"
* comparator[+] = #eq 
* comparator[+] = #gt 
* comparator[+] = #lt
* comparator[+] = #ge 
* comparator[+] = #le

Instance: mii-sp-bildgebung-imaging-study-number-instances
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-number-instances"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Imaging_Study_Number_Instances"
* status = #active
* experimental = false
* date = "2024-07-19"
* description = "Suchparameter für ImagingStudy.numberOfSeries"
* code = #number-instances
* base[+] = #ImagingStudy
* base[+] = #ImagingStudy.series
* type = #number
* expression = "ImagingStudy.numberOfInstances | ImagingStudy.series.numberOfInstances"
* comparator[+] = #eq 
* comparator[+] = #gt 
* comparator[+] = #lt
* comparator[+] = #ge 
* comparator[+] = #le

Instance: mii-sp-bildgebung-imaging-study-procedure-reference
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-procedure-reference"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Imaging_Study_Procedure_Reference"
* status = #active
* experimental = false
* date = "2024-07-19"
* description = "Suchparameter für ImagingStudy.procedureReference"
* code = #procedure-reference
* base = #ImagingStudy
* type = #reference
* expression = "ImagingStudy.procedureReference"
* target = #Procedure

Instance: mii-sp-bildgebung-imaging-study-series-number
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-series-number"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Imaging_Study_Series_Number"
* status = #active
* experimental = false
* date = "2024-07-19"
* description = "Suchparameter für ImagingStudy.series.number"
* code = #series-number
* base = #ImagingStudy.series
* type = #number
* expression = "ImagingStudy.series.number"
* comparator[+] = #eq 
* comparator[+] = #gt 
* comparator[+] = #lt
* comparator[+] = #ge 
* comparator[+] = #le

Instance: mii-sp-bildgebung-imaging-study-series-laterality
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-series-laterality"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Imaging_Study_Series_Laterality"
* status = #active
* experimental = false
* date = "2024-07-19"
* description = "Suchparameter für ImagingStudy.series.laterality"
* code = #laterality
* base = #ImagingStudy.series
* type = #token
* expression = "ImagingStudy.series.laterality"
* modifier[+] = #text
* modifier[+] = #not
* modifier[+] = #above
* modifier[+] = #below
* modifier[+] = #in
* modifier[+] = #not-in

Instance: mii-sp-bildgebung-imaging-study-series-started
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-series-started"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Imaging_Study_Series_Started"
* status = #active
* experimental = false
* date = "2024-07-19"
* description = "Suchparameter für ImagingStudy.series.started"
* code = #started
* base = #ImagingStudy.series
* type = #date
* expression = "ImagingStudy.series.started"

Instance: mii-sp-bildgebung-imaging-study-instance-number
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-instance-number"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Imaging_Study_Instance_Number"
* status = #active
* experimental = false
* date = "2024-07-19"
* description = "Suchparameter für ImagingStudy.series.instance.number"
* code = #instance-number
* base = #ImagingStudy.series.instance
* type = #number
* expression = "ImagingStudy.series.instance.number"
* comparator[+] = #eq 
* comparator[+] = #gt 
* comparator[+] = #lt
* comparator[+] = #ge 
* comparator[+] = #le

//Observation
Instance: mii-sp-bildgebung-observation-bildnummer
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-observation-bildnummer"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Observation_Bildnummer"
* status = #active
* experimental = false
* date = "2024-07-19"
* description = "Suchparameter für Observation.bildnummer"
* code = #bildnummer
* base = #Observation
* type = #number
* expression = "Observation.extension('https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-bildnummer').value"
* comparator[+] = #eq 
* comparator[+] = #gt 
* comparator[+] = #lt
* comparator[+] = #ge 
* comparator[+] = #le

Instance: mii-sp-bildgebung-observation-sop-instance
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-observation-sop-instance"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Observation_SOP-Instance"
* status = #active
* experimental = false
* date = "2024-07-19"
* description = "Suchparameter für Observation.sopInstance"
* code = #sop-instance
* base = #Observation
* type = #token
* expression = "Observation.extension('https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-SOPInstanz').value"
* modifier[+] = #text
* modifier[+] = #not
* modifier[+] = #above
* modifier[+] = #below
* modifier[+] = #in
* modifier[+] = #not-in

Instance: mii-sp-bildgebung-observation-body-structure
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-observation-body-structure"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Observation_Body_Structure"
* status = #active
* experimental = false
* date = "2024-07-19"
* description = "Suchparameter für Observation.bodyStructure"
* code = #bodyStructure
* base = #Observation
* type = #reference
* expression = "Observation.extension('http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.bodyStructure').value"
* target = #BodyStructure

Instance: mii-sp-bildgebung-observation-issued
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-observation-issued"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Observation_Issued"
* status = #active
* experimental = false
* date = "2024-07-19"
* description = "Suchparameter für Observation.issued"
* code = #issued
* base = #Observation
* type = #date
* expression = "Observation.issued"

Instance: mii-sp-bildgebung-observation-body-site
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-observation-body-site"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Observation_Body_Site"
* status = #active
* experimental = false
* date = "2024-07-19"
* description = "Suchparameter für Observation.bodySite"
* code = #body-site
* base = #Observation
* type = #token
* expression = "Observation.bodySite"
* modifier[+] = #text
* modifier[+] = #not
* modifier[+] = #above
* modifier[+] = #below
* modifier[+] = #in
* modifier[+] = #not-in

//RadiopharmaceuticalAdministration
Instance: mii-sp-bildgebung-medications-dose
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-medications-dose"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Medications_Dose"
* status = #active
* experimental = false
* date = "2024-07-19"
* description = "Suchparameter für MedicationAdministration.dosage.dose"
* code = #dosage-dose
* base = #MedicationAdministration
* type = #quantity
* expression = "MedicationAdministration.dosage.dose"
* comparator[+] = #eq 
* comparator[+] = #gt 
* comparator[+] = #lt
* comparator[+] = #ge 
* comparator[+] = #le 

//ReadProcedure
Instance: mii-sp-bildgebung-read-proc-report
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-read-proc-report"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Read_Procedure_Report"
* status = #active
* experimental = false
* date = "2024-07-19"
* description = "Suchparameter für ReadProcedure.report"
* code = #report
* base = #ReadProcedure
* type = #reference
* expression = "ReadProcedure.report"
* target[+] = #DiagnosticReport
* target[+] = #Composition
* target[+] = #DocumentReference

//ServiceRequest
Instance: mii-sp-bildgebung-service-request-reason-code
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-service-request-reason-code"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Service_Request_Reason_Code"
* status = #active
* experimental = false
* date = "2024-07-19"
* description = "Suchparameter für ServiceRequest.reasonCode"
* code = #reason-code
* base = #ServiceRequest
* type = #token
* expression = "ServiceRequest.reasonCode"
* modifier[+] = #text
* modifier[+] = #not
* modifier[+] = #above
* modifier[+] = #below
* modifier[+] = #in
* modifier[+] = #not-in
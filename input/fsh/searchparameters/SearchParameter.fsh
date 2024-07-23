//All Profiles
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
* base[+] = #DiagnosticReport
* base[+] = #ServiceRequest
* type = #reference
* expression = "CarePlan.supportingInfo | DiagnosticReport.supportingInfo | ServiceRequest.supportingInfo"
* target[+] = #DiagnosticReport

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

//CarePlan
Instance: mii-sp-bildgebung-care-plan-description
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-care-plan-description"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Care_Plan_Description"
* status = #active
* experimental = false
* date = "2024-07-19"
* description = "Suchparameter für CarePlan.description"
* code = #description
* base = #CarePlan
* type = #token
* expression = "CarePlan.description"
* modifier[+] = #text
* modifier[+] = #not
* modifier[+] = #above
* modifier[+] = #below
* modifier[+] = #in
* modifier[+] = #not-in

//Composition
//section.section
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
* code = #section.title
* base = #Composition
* type = #string
* expression = "Composition.section.title"

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
* code = #section.author
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
* code = #section.text
* base = #Composition
* type = #text
* expression = "Composition.section.text"

//DiagnosticReport
//effDateTime
//effPeriod
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
* code = #imagingStudy
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
* code = #conclusion
* base = #DiagnosticReport
* type = #string
* expression = "DiagnosticReport.conclusion"

//ImagingProcedure

//ImagingStudy
//bildgebungsgrund
//modality
//numberOfSeries
//numberOfInstances
//ProcRef
//reasRef
//description
//series.modalityCT
//series.modalityMG_CR
//series.modalityMR
//series.modalityPT
//series.kontrastmittel
//series.gerät
//series.number
//series.description
//series.numInstance
//series.laterality
//series.started
//instance.imagingInstance
//instance.number

//Observation
//bildnummer
//SOPInstanz
//issued
//value[x]
//bodySite
//component
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
* expression = "Observation.bodyStructure"
* target = #BodyStructure

//RadiopharmaceuticalAdministration
//dosage.dose

//ReadProcedure
//report

//ServiceRequest
//reasonCode
//reasRef
//supportingInfo
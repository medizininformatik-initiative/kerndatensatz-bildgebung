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
* expression = "CarePlan.supportingInfo | ServiceRequest.supportingInfo | DiagnosticReport.extension('http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.supportingInfo').value"
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
/*Instance: mii-sp-bildgebung-diagnostic-report-supporting-info
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
* target[+] = #Procedure*/

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

Instance: mii-sp-bildgebung-imaging-study-series-CTDI-volume
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-series-CTDI-volume"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Imaging_Study_Series_CTDI_Volume"
* status = #active
* experimental = false
* date = "2024-07-19"
* description = "Suchparameter für ImagingStudy.series.extension.CTDIvolume"
* code = #CTDI-volume
* base = #ImagingStudy.series
* type = #quantity
* expression = "ImagingStudy.series.extension('https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-ct').extension('CTDIvol').value"
* comparator[+] = #eq 
* comparator[+] = #gt 
* comparator[+] = #lt
* comparator[+] = #ge 
* comparator[+] = #le 

Instance: mii-sp-bildgebung-imaging-study-series-tube-voltage
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-series-tube-voltage"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Imaging_Study_Series_Tube_Voltage"
* status = #active
* experimental = false
* date = "2024-07-19"
* description = "Suchparameter für ImagingStudy.series.extension.tubeVoltage"
* code = #tube-voltage
* base = #ImagingStudy.series
* type = #quantity
* expression = "ImagingStudy.series.extension('https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-ct').extension('tubeVoltage').value"
* comparator[+] = #eq 
* comparator[+] = #gt 
* comparator[+] = #lt
* comparator[+] = #ge 
* comparator[+] = #le 

Instance: mii-sp-bildgebung-imaging-study-series-exposure-time
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-series-exposure-time"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Imaging_Study_Series_Exposure_Time"
* status = #active
* experimental = false
* date = "2024-07-19"
* description = "Suchparameter für ImagingStudy.series.extension.exposureTime"
* code = #exposure-time
* base = #ImagingStudy.series
* type = #quantity
* expression = "ImagingStudy.series.extension('https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-ct').extension('exposureTime').value | ImagingStudy.series.extension('https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mg-cr-dx').extension('exposureTime').value"
* comparator[+] = #eq 
* comparator[+] = #gt 
* comparator[+] = #lt
* comparator[+] = #ge 
* comparator[+] = #le 

Instance: mii-sp-bildgebung-imaging-study-series-exposure
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-series-exposure"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Imaging_Study_Series_Exposure"
* status = #active
* experimental = false
* date = "2024-07-19"
* description = "Suchparameter für ImagingStudy.series.extension.exposure"
* code = #exposure
* base = #ImagingStudy.series
* type = #quantity
* expression = "ImagingStudy.series.extension('https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-ct').extension('exposure').value | ImagingStudy.series.extension('https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mg-cr-dx').extension('exposure').value"
* comparator[+] = #eq 
* comparator[+] = #gt 
* comparator[+] = #lt
* comparator[+] = #ge 
* comparator[+] = #le 

Instance: mii-sp-bildgebung-imaging-study-series-xray-tube-current
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-series-xray-tube-current"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Imaging_Study_Series_xRay_Tube_Current"
* status = #active
* experimental = false
* date = "2024-07-19"
* description = "Suchparameter für ImagingStudy.series.extension.xRayTubeCurrent"
* code = #xRay-tube-current
* base = #ImagingStudy.series
* type = #quantity
* expression = "ImagingStudy.series.extension('https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-ct').extension('xRayTubeCurrent').value | ImagingStudy.series.extension('https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mg-cr-dx').extension('xRayTubeCurrent').value"
* comparator[+] = #eq 
* comparator[+] = #gt 
* comparator[+] = #lt
* comparator[+] = #ge 
* comparator[+] = #le 

Instance: mii-sp-bildgebung-imaging-study-series-kvp
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-series-kvp"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Imaging_Study_Series_KVP"
* status = #active
* experimental = false
* date = "2024-07-19"
* description = "Suchparameter für ImagingStudy.series.extension.KVP"
* code = #KVP
* base = #ImagingStudy.series
* type = #quantity
* expression = "ImagingStudy.series.extension('https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mg-cr-dx').extension('KVP').value"
* comparator[+] = #eq 
* comparator[+] = #gt 
* comparator[+] = #lt
* comparator[+] = #ge 
* comparator[+] = #le 

Instance: mii-sp-bildgebung-imaging-study-series-magnetic-field-strength
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-series-magnetic-field-strength"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Imaging_Study_Series_Magnetic_Field_Strength"
* status = #active
* experimental = false
* date = "2024-07-19"
* description = "Suchparameter für ImagingStudy.series.extension.magneticFieldStrength"
* code = #magnetic-field-stregth
* base = #ImagingStudy.series
* type = #quantity
* expression = "ImagingStudy.series.extension('https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mr').extension('magneticFieldStrength').value"
* comparator[+] = #eq 
* comparator[+] = #gt 
* comparator[+] = #lt
* comparator[+] = #ge 
* comparator[+] = #le

Instance: mii-sp-bildgebung-imaging-study-series-scanning-sequence
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-series-scanning-sequence"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Imaging_Study_Series_Scanning_Sequence"
* status = #active
* experimental = false
* date = "2024-07-19"
* description = "Suchparameter für ImagingStudy.series.extension.scanningSequence"
* code = #scanning-sequence
* base = #ImagingStudy.series
* type = #token
* expression = "ImagingStudy.series.extension('https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mr').extension('scanningSequence').value"
* modifier[+] = #text
* modifier[+] = #not
* modifier[+] = #above
* modifier[+] = #below
* modifier[+] = #in
* modifier[+] = #not-in

Instance: mii-sp-bildgebung-imaging-study-series-scanning-sequence-variant
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-series-scanning-sequence-variant"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Imaging_Study_Series_Scanning_Sequence_Variant"
* status = #active
* experimental = false
* date = "2024-07-19"
* description = "Suchparameter für ImagingStudy.series.extension.scanningSequenceVariant"
* code = #scanning-sequence-variant
* base = #ImagingStudy.series
* type = #token
* expression = "ImagingStudy.series.extension('https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-mr').extension('scanningSequenceVariant').value"
* modifier[+] = #text
* modifier[+] = #not
* modifier[+] = #above
* modifier[+] = #below
* modifier[+] = #in
* modifier[+] = #not-in

Instance: mii-sp-bildgebung-imaging-study-series-radiopharmaceutical
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-series-radiopharmaceutical"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Imaging_Study_Radiopharmaceutical"
* status = #active
* experimental = false
* date = "2024-07-19"
* description = "Suchparameter für ImagingStudy.series.extension.radiopharmaceutical"
* code = #radiopharmaceutical
* base = #ImagingStudy
* type = #reference
* expression = "ImagingStudy.series.extension('https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-pt-nm').extension('radiopharmaceutical').value"
* target = #Medication

Instance: mii-sp-bildgebung-imaging-study-series-radiopharma-start-time
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-series-radiopharmaceutical-start-time"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Imaging_Study_Series_Radiopharmaceutical_Start_Time"
* status = #active
* experimental = false
* date = "2024-07-19"
* description = "Suchparameter für ImagingStudy.series.radiopharmaceuticalStartTime"
* code = #started
* base = #ImagingStudy.series
* type = #date
* expression = "ImagingStudy.series.extension('https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-pt-nm').extension('radiopharmaceuticalStartTime').value"

Instance: mii-sp-bildgebung-imaging-study-series-rescale-type
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-series-rescale-type"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Imaging_Study_Series_Rescale_Type"
* status = #active
* experimental = false
* date = "2024-07-19"
* description = "Suchparameter für ImagingStudy.series.extension.rescaleType"
* code = #rescale-type
* base = #ImagingStudy.series
* type = #token
* expression = "ImagingStudy.series.extension('https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-pt-nm').extension('rescaleType').value"
* modifier[+] = #text
* modifier[+] = #not
* modifier[+] = #above
* modifier[+] = #below
* modifier[+] = #in
* modifier[+] = #not-in

Instance: mii-sp-bildgebung-imaging-study-series-radionuclide-total-dose
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-series-radionuclide-total-dose"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Imaging_Study_Series_Radionuclide_Total_Dose"
* status = #active
* experimental = false
* date = "2024-07-19"
* description = "Suchparameter für ImagingStudy.series.extension.radionuclideTotalDose"
* code = #radionuclide-total-dose
* base = #ImagingStudy.series
* type = #quantity
* expression = "ImagingStudy.series.extension('https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-pt-nm').extension('radionuclideTotalDose').value"
* comparator[+] = #eq 
* comparator[+] = #gt 
* comparator[+] = #lt
* comparator[+] = #ge 
* comparator[+] = #le

Instance: mii-sp-bildgebung-imaging-study-series-radionuclide-half-life
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-series-radionuclide-half-life"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Imaging_Study_Series_Radionuclide_Half_Life"
* status = #active
* experimental = false
* date = "2024-07-19"
* description = "Suchparameter für ImagingStudy.series.extension.radionuclideHalfLife"
* code = #radionuclide-half-life
* base = #ImagingStudy.series
* type = #quantity
* expression = "ImagingStudy.series.extension('https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-pt-nm').extension('radionuclideHalfLife').value"
* comparator[+] = #eq 
* comparator[+] = #gt 
* comparator[+] = #lt
* comparator[+] = #ge 
* comparator[+] = #le

Instance: mii-sp-bildgebung-imaging-study-series-contrast-bolus
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-series-contrast-bolus"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Imaging_Study_Series_Contrast_Bolus"
* status = #active
* experimental = false
* date = "2024-07-19"
* description = "Suchparameter für ImagingStudy.series.extension.contrastBolus"
* code = #contrast-bolus
* base = #ImagingStudy.series
* type = #token
* expression = "ImagingStudy.series.extension('https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-kontrastmittel').extension('contrastBolus').value"
* modifier[+] = #text
* modifier[+] = #not
* modifier[+] = #above
* modifier[+] = #below
* modifier[+] = #in
* modifier[+] = #not-in

Instance: mii-sp-bildgebung-imaging-study-series-contrast-bolus-details
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-series-contrast-bolus-details"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Imaging_Study_Contrast_Bolus_Details"
* status = #active
* experimental = false
* date = "2024-07-19"
* description = "Suchparameter für ImagingStudy.series.extension.contrastBolusDetails"
* code = #contrast-bolus-details
* base = #ImagingStudy.series
* type = #reference
* expression = "ImagingStudy.series.extension('https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-kontrastmittel').extension('contrastBolusDetails').value"
* target = #MedicationStatement

Instance: mii-sp-bildgebung-imaging-study-manufacturer
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-manufacturer"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Imaging_Study_Manufacturer"
* status = #active
* experimental = false
* date = "2024-07-19"
* description = "ImagingStudy.series.extension.manufacturer"
* code = #manufacturer
* base = #ImagingStudy.series
* type = #string
* expression = "ImagingStudy.series.extension('https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-geraet-hersteller').extension('manufacturer').value"
* modifier[+] = #text
* modifier[+] = #not
* modifier[+] = #above
* modifier[+] = #below
* modifier[+] = #in
* modifier[+] = #not-in

Instance: mii-sp-bildgebung-imaging-study-manufacturer-model-name
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-manufacturer-model-name"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Imaging_Study_Manufacturer_Model_Name"
* status = #active
* experimental = false
* date = "2024-07-19"
* description = "ImagingStudy.series.extension.manufacturerModelName"
* code = #manufacturer-model-name
* base = #ImagingStudy.series
* type = #string
* expression = "ImagingStudy.series.extension('https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-geraet-hersteller').extension('manufacturerModelName').value"
* modifier[+] = #text
* modifier[+] = #not
* modifier[+] = #above
* modifier[+] = #below
* modifier[+] = #in
* modifier[+] = #not-in

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

Instance: mii-sp-bildgebung-imaging-study-instance-pixel-x
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-instance-pixel-spacing-x"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Imaging_Study_Instance_Pixel_Spacing_X"
* status = #active
* experimental = false
* date = "2024-07-19"
* description = "Suchparameter für ImagingStudy.series.instance.Extension.pixelSpacing(X)"
* code = #instance-pixel-spacing-x
* base = #ImagingStudy.series.instance
* type = #string
* expression = "ImagingStudy.extension('https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-serie').extension(pixelSpacing(x)).value"
* modifier[+] = #text
* modifier[+] = #not
* modifier[+] = #above
* modifier[+] = #below
* modifier[+] = #in
* modifier[+] = #not-in

Instance: mii-sp-bildgebung-imaging-study-instance-pixel-y
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-instance-pixel-spacing-y"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Imaging_Study_Instance_Pixel_Spacing_Y"
* status = #active
* experimental = false
* date = "2024-07-19"
* description = "Suchparameter für ImagingStudy.series.instance.Extension.pixelSpacing(Y)"
* code = #instance-pixel-spacing-y
* base = #ImagingStudy.series.instance
* type = #string
* expression = "ImagingStudy.series.instance.extension('https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-serie').extension(pixelSpacing(y)).value"
* modifier[+] = #text
* modifier[+] = #not
* modifier[+] = #above
* modifier[+] = #below
* modifier[+] = #in
* modifier[+] = #not-in

Instance: mii-sp-bildgebung-imaging-study-slice-thickness
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-slice-thickness"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Imaging_Study_Slice_Thickness"
* status = #active
* experimental = false
* date = "2024-07-19"
* description = "Suchparameter für ImagingStudy.series.instance.Extension.sliceThickness"
* code = #instance-slice-thickness
* base = #ImagingStudy.series.instance
* type = #number
* expression = "ImagingStudy.series.instance.extension('https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-serie').extension('sliceThickness').value"
* comparator[+] = #eq 
* comparator[+] = #gt 
* comparator[+] = #lt
* comparator[+] = #ge 
* comparator[+] = #le

Instance: mii-sp-bildgebung-imaging-study-instance-image-type
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/SearchParameter/mii-sp-bildgebung-imaging-study-instance-image-type"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Bildgebung_Imaging_Study_Instance_Image_Type"
* status = #active
* experimental = false
* date = "2024-07-19"
* description = "Suchparameter für ImagingStudy.series.instance.Extension.imageType"
* code = #instance-image-type
* base = #ImagingStudy.series.instance
* type = #string
* expression = "ImagingStudy.series.instance.extension('https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-instanz-serie').extension(imageType).value"
* modifier[+] = #text
* modifier[+] = #not
* modifier[+] = #above
* modifier[+] = #below
* modifier[+] = #in
* modifier[+] = #not-in

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
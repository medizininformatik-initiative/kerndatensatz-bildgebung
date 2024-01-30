//Base Profile
//Radiological Read Procedure Profile
Profile: Radiological_Read_Procedure
Parent: Procedure
Id: radiological-read-procedure
Title: "Radiological read procedure"
Description: "This FHIR resource profile specifically characterizes the radiological reading process, including both manual interpretations by radiologists and automated processes such as AI algorithms used for tasks like segmentation. It's important to note that this profile does not detail the procedures involved in image acquisition, which are instead described in the ImagingStudy resource's procedureReference.

The foremost goal of this resource is to provide structured, contextual information within the Diagnostic Report. This ensures accurate interpretation of various observations. For instance, it clarifies the application of a specific version of the TNM (Tumor, Node, Metastasis) classification and the targeted entity. This feature is particularly useful in TNM observation resources, aiding in precise interpretation and reporting.

Moreover, this resource can attribute additional properties to BodyStructures identified during a radiological examination. In a TNM-based assessment, a tumor might be categorized as 'Primary', whereas in a RECIST (Response Evaluation Criteria in Solid Tumors) based evaluation, the same lesion (BodyStructure) might be classified as a 'Target' lesion.

Importantly, this resource is designed for reusability across different Diagnostic Reports. This is essential for ensuring that specific information, which remains constant over time, is modeled accurately. For example, in the context of RECIST evaluations, once a lesion is designated as a 'target' lesion, this classification remains unchanged throughout the patient's treatment course. By reusing the resource for different reports, consistency and accuracy in the modeling of such time-invariant data are maintained."
* insert PR_CS_VS_Version
* ^url = $RadReadProc
* category 1..1
* category = $SCT#103693007 "Diagnostic procedure" (exactly)
* subject only Reference(Patient)
* report 1..* MS 
* report ^definition = "In cases where follow ups are performed (e.g. RECIST or TNM) this procedure might be used in more than one diagnostic report this way we guarantee that the tumor categories stay the same over time."


//TNM
//TNM Procedure Profile
//TODO add version to the profile
Profile: TNM_Radiological_Read_Procedure
Parent: $RadReadProc
Id: radiological-tnm-read-procedure
Title: "Radiological read procedure for clinical TNM"
Description: "This radiological procedure profile describes the radiological reading process following TNM criteria. It derives from the Radiological_Read_Procedure and needs to define which entity and in which version the read was performed."
* insert PR_CS_VS_Version
* ^url = $RadTnmReadProc
* code 1..1
* code from VS_TNM_Radiological_Read_Procedures (required)


//TNM Example
Instance: example-radiological-tnm-read-procedure
InstanceOf: radiological-tnm-read-procedure
Usage: #example
Title: "Example of a TNM Radiological Read Procedure"
* category = $SCT#103693007 "Diagnostic procedure"
* status = #completed
* subject = Reference(Patient/examplePatient)
* code = $SCT#254317004 "TNM Lung and pleural tumor staging"
* report = Reference(DiagnosticReport/exampleDiagnosticReport)


//RECIST
//RECIST Procedure Profile
Profile: RECIST_Radiological_Read_Procedure
Parent: $RadReadProc
Id: radiological-recist-read-procedure
Title: "Radiological read procedure for RECIST"
Description: "This radiological procedure profile describes the radiological reading process following the RECIST criteria. This procedure is meant to be used for baseline and all followup reads. This way a target lesion cannot accidently change over time."
* insert PR_CS_VS_Version
* ^url = $RadRecistReadProc
* code 1..1
* code from VS_RECIST_Radiological_Read_Procedures (required) //TODO: Fixed Code or Value Set?


//RECIST Example
Instance: example-radiological-recist-read-procedure
InstanceOf: radiological-recist-read-procedure
Usage: #example
Title: "Example of a RECIST Radiological Read Procedure"
* category = $SCT#103693007 "Diagnostic procedure"
* status = #completed
* subject = Reference(Pateint/examplePatient)
* code = $SCT#103337004 "In partial remission"//TODO
* report = Reference(DiagnosticReport/exampleDiagnosticReport)



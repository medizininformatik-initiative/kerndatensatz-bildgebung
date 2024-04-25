Profile: MII_PR_Bildgebung_Koerperstruktur
Parent: BodyStructure
Id: mii-pr-bildgebung-koerperstruktur
Title: "MII PR Bidlgebung Körperstruktur"
Description: "The Anatomical Structure profile is an integral component for interoperability, designed to universally represent and reference various anatomical structures across diverse medical domains and scenarios. This profile is particularly crucial in bridging information across different specialties and use cases, such as radiology, pathology, surgery and others.
By employing a standardized format to describe anatomical structures, this profile enables consistent and precise identification and communication of anatomical details. For example, a tumor identified and detailed in a radiology report can be seamlessly referenced with the same specificity in a subsequent pathology report. This ensures continuity and accuracy in patient care, as each medical specialist refers to the same anatomical structure using a common language and reference system.
Similarly, the profile can be applied to more routine anatomical structures, like the knee joint in a MSK use case. In such cases, the initial imaging or assessment details can be easily and accurately carried over into subsequent medical interventions or procedures, like surgery. This not only streamlines the patient's journey through different healthcare services but also enhances the quality of care by ensuring all medical professionals are aligned in their understanding of the patient's anatomical structures and related medical history."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/Koerperstruktur"
* insert Translation(^name, en-US, MII_PR_Bildgebung_CarePlan)
* insert Translation(^title, en-US, MII PR Bildgebung CarePlan)
* insert Translation(^description, en-US, The profile describes the examined bodystructure.)
* insert PR_CS_VS_Version
* morphology 1.. MS
* location 1.. MS
* locationQualifier MS

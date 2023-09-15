Profile: MIIRadiologyObservationExpansion
Parent: Observation
Id: MIIRadiologyObservationExpansion
Title: "MII Radiology Observation Expansion"
Description: "Dieses Profil beschreibt die Ausdehnungs-Resultate radiologischer Bildgebung."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/ObservationExpansion"
* insert Translation(^name, en-US, MII_PR_ObservationExpansion)
* insert Translation(^title, en-US, MII PR ObservationExpansion)
* insert Translation(^description, en-US, The profile describes the expansion observations for radiological images.)
* insert PR_CS_VS_Version

// status = final?

* category 1.. MS
    * coding 1.. MS
    * system 1.. MS
    * code 1.. MS
* category.code = imaging // TODO fixed value

// code to specify that this Observation describes an expansion
* code MS
    * coding from TODO (preferred)  // TODO find suitable snomed? observable entity
    * coding 1.. MS
        * code 1.. MS
        * system 1.. MS

* component 1..*
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = code
* component ^slicing.rules = #open
* component contains x-axis 1..1 MS and y-axis 1..1 MS and z-axis 0..1 MS
* component[x-axis] only Quantity
* component[y-axis] only Quantity
* component[z-axis] only Quantity

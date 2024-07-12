//Head
Profile: MII_PR_Bildgebung_Radiologischer_Befund
Parent: DiagnosticReport
Id: mii-pr-bildgebung-radiologischer-befund
Title: "MII PR Bildgebung Radiologischer Befund"
Description: "Der Diagnostic Report für Bildgebende verfahren richtet sich an die Dokumentation von radiologischen Befundungsergebnissen. Unterschiedliche Systeme (RIS Befundungsmodule, AI Integrationen dedizierte Systeme zur strukturieren Befundung) lieferen in unterschiedlichem Detailgrad Informationen. Dieses Profil addressiert diese unterschiedlichen Detailgrade und bietet modulare aufeinander aufbauende Stufen. Jede Stufe fügt weitere Konzepte hinzu und ermöglicht so neue Anwendungsmöglichkeiten von der Routine bis hin zu wissenschaftlichen Auswertungen.

Stufe 1: Freitext in strukturierter Form: Auf der grundlegendsten Ebene ermöglicht die DiagnosticReport-Ressource die Einbindung von radiologischen Befunden als Freitext in einer strukturierten Form. Dies erlaubt eine einfache, jedoch effektive Darstellung von diagnostischen Informationen. Die Freitextbeschreibung bietet die Möglichkeit, ohne komplexen Datenaustausch, essenzielle Befundinformationen zu übermitteln.

Stufe 2: Verlinkung von Observation-Ressourcen: Auf der nächsten Stufe werden DiagnosticReport-Ressourcen mit Observation-Ressourcen verknüpft. Dies erlaubt eine detailliertere Erfassung und Darstellung spezifischer Befunde oder Messwerte. Da diese Ressourcen maschinenlesbar und auch kodiert sind ist es möglich nach diesen Inhalten zu suchen sie für Auswertungen zu verwenden oder auch Workflows zu steuern.

Stufe 3: Bezugnahme auf anatomische Strukturen: Die Verknüpfung mit BodyStructure-Ressourcen stellt eine Erweiterung dar, die es ermöglicht, Observations präzise anatomischen Strukturen zuzuordnen. Dieser Bezug ist insbesondere für die longitudinale Patientenversorgung von Bedeutung, da er die Verfolgung und Bezugnahme auf spezifische Läsionen oder Anomalien in Folgeuntersuchungen oder in anderen klinischen Kontexten, wie beispielsweise in der Pathologie, ermöglicht. Wichtig dabei ist, dass die BodyStructure Ressource nicht Teil des Diagnostic Reports ist. Somit müssen Observations auf diese Ressource versioniert verweisen.

Stufe 4: Einführung von Befundungs Prozeduren: Die Integration von Procedure-Ressourcen bietet einen weiteren Detaillierungsgrad, indem sie den Kontext / die Bedingungen beschreibt, unter denen die Observations erhoben wurden. Dies erlaubt eine tiefere Einsicht in die Umstände der Befundung, indem klar definiert wird, nach welchen Kriterien und Voraussetzungen spezifische Informationen und Messwerte erfasst wurden. Die Verknüpfung mit Procedure-Ressourcen erweitert somit den diagnostischen Bericht um wichtige kontextuelle Informationen, die für die Interpretation der Befunde entscheidend sein können.
"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-pr-bildgebung-radiologischer-befund"
//Translation
* insert Translation(^name, en-US, MII_PR_Imaging_Diagnostic_Report)
* insert Translation(^title, en-US, MII PR Imaging Diagnostic Report)
* insert Translation(^description, en-US, The profile describes a diagnostic report for radiological images.)
* insert PR_CS_VS_Version
//Meta
* id MS
* meta MS
* meta.source MS
* meta.profile MS
//Profile
* extension contains
  http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.supportingInfo named supportingInfo 0..* MS
* extension[supportingInfo].extension[reference].valueReference only Reference(MII_PR_Bildgebung_Radiologischer_Befund or MII_PR_Bildgebung_Radiologische_Befundungsprozedur)
* extension[supportingInfo].extension[reference] 1..1
* basedOn MS
* basedOn only Reference(MII_PR_Bildgebung_Anforderung_Bildgebung)
* status MS 
* category 1.. MS 
* category.coding 1.. MS 
* category.coding ^slicing.discriminator.type = #pattern
* category.coding ^slicing.discriminator.path = "$this"
* category.coding ^slicing.rules = #open
* category.coding contains
    loinc 0..1 and
    diagnostic-service-sections 0..1 and 
    snomed-ct 1..1
* category.coding[loinc] = $loinc#18748-4 "Diagnostic imaging study"
* category.coding[diagnostic-service-sections] = $DSS#RAD
* category.coding[snomed-ct] = $SCT#4201000179104 "Imaging report"
* code MS 
* subject MS
* subject only Reference(Patient) 
* encounter MS
* effective[x] MS
* effectiveDateTime MS
* effectivePeriod MS
* issued MS
* result MS
* result only Reference(MII_PR_Bildgebung_Radiologische_Beobachtung) 
* imagingStudy 1.. MS
* imagingStudy only Reference(MII_PR_Bildgebung_Bildgebungsstudie)
* conclusion MS
* conclusionCode MS
* conclusionCode.coding MS
* conclusionCode.coding ^slicing.discriminator.type = #pattern
* conclusionCode.coding ^slicing.discriminator.path = "$this"
* conclusionCode.coding ^slicing.rules = #open
* conclusionCode.coding contains
    icd10 0..* MS and
    sct 0..* MS
* conclusionCode.coding[icd10] ^patternCoding.system = $icd10
* conclusionCode.coding[sct] ^patternCoding.system = $SCT
* presentedForm MS

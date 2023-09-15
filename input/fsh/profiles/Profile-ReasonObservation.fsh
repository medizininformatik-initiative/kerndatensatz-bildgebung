Profile: MII_PR_BildgebendeVerfahren_ReasonObservation
Parent: Observation
Id: mii-pr-bildgebendeverfahren-reasonobservation
Title: "MII PR BildgebendeVerfahren ReasonObservation"
Description: "TODO"
//  "Radiology Reason for study (narrative)"
* code = $loinc#18785-6
* valueString 1..1 MS
* subject 1..1 MS
* subject only $miiRef 
* encounter only $miiRef
* encounter 0..1 MS
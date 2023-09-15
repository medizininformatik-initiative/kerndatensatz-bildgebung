## Referenzen

Bei der Erstellung des Datensatzes zur Dokumentation der Medikation wurden Spezifikationen berücksichtigt, die für den [KBV patientenbezogenen Medikationsplan V2.6](https://www.kbv.de/media/sp/Medikationsplan_Anlage3.pdf) bzw. [Medikationsplan PLUS](https://simplifier.net/medikationsplanplus) und für die [International Patient Summary](http://international-patient-summary.net/) erstellt wurden.

Bei Terminologien zur Medikation (Arzneimittel, Substanzen etc.) sollen die ISO-Standards zur [Identification of Medicinal Products (IDMP)](https://www.ema.europa.eu/en/human-regulatory/overview/data-medicines-iso-idmp-standards-overview) berücksichtigt werden. 

Die Spezifikation des Medikationsplan PLUS wurde zur Modellierung des Datensatzes und der FHIR-Profile herangezogen, es kann jedoch keine Konformität dieser Spezifikation mit dem Medikationsplan hergestellt werden. Dies liegt vor allem daran, dass der Medikationsplan PLUS auf der FHIR Version STU3 basiert, während die Medizininformatik-Initiative mit FHIR R4 arbeitet. Einige Elemente in der Datenstruktur der FHIR-Ressourcen unterscheiden sich grundlegend zwischen den Versionen, wie beispielsweise die Angabe einer Wirkstärke innerhalb einer Medication-Ressource.

---
parent: 
topic: MedikationTerminologien
---
## Terminologien

| Hinweis |  |
|---------|---------------------|
| {{render:implementation-guides/ImplementationGuide-Common/images/Warning.jpg}} | Zusätzlich zu internationalen Terminologien werden durch das Modul MEDIKATION auch eigene CodeSystems definiert. Es sei drauf hingewiesen, dass alle CodeSystems auch ein implizites ValueSet enthalten, welches der jeweiligen FHIR CodeSystem-Ressource zu entnehmen ist.|

Soweit möglich sollen Terminologien und eindeutige Codes verwendet werden, die internationalen Standards entsprechen. Für die Arzneimittel und Dosierungsinformationen sind dies die ISO-Standards zur [Identification of Medicinal Products (IDMP)](https://www.ema.europa.eu/en/human-regulatory/overview/data-medicines-iso-idmp-standards-overview), die vor allem im regulatorischen Kontext implementiert werden. Als IDMP-konforme Terminologien und eindeutige Identifizierungs-Codes werden vorgeschlagen:

**Wirkstoffe**

Für Wirkstoffe werden als Unique Identifier (Code) vorgeschlagen:
* Stoff-Codes des deutschen Arzneimittel-Stoffkatalogs des BfArM (ASK). Es ist abzuklären, wie dieser ASK.-Nr. via URI/URL über BfArM/DIMDI oder ABDATA (§31b SGB V) öffentlich verfügbar gemacht wird.  https://www.bfarm.de/DE/Arzneimittel/Arzneimittelinformationen/Arzneimittel-recherchieren/_node.html 
* [Unique Ingredient Identifier (UNII)](https://en.wikipedia.org/wiki/Unique_Ingredient_Identifier) des US Substance Registration System. Diese ist in Deutschland nicht verfügbar.
* Eindeutige Schlüssel, die [CAS Registry Number](https://www.cas.org/support/documentation/chemical-substances/faqs), aus der Chemical-Abstracts-Service-Datenbank (CAS). 
* SNOMED-CT-Codes aus der Substance-Hierarchie. Diese Codes sind in den deutschen Datenbanken (PharmNet/AMIS und ABDATA) nicht enthalten.

* Für die Bezeichnung der Stoffe können die registrierten Substanzbezeichnungen verwendet werden, bei denen es sich in der Regel, aber nicht immer, um die  [WHO-INNs (International Non-proprietary Names)](https://www.who.int/medicines/services/inn/en/) handelt. In der MII sollte dabei die deutsche Schreibweise verwendet werden, die in manchen Fällen von der englischen Version leicht abweicht.
* Es wird empfohlen, [ATC-Codes (Anatomisch-therapeutisch-chemische Klassifikation)](https://www.whocc.no/atc_ddd_index/) nur unter Vorbehalt für die Codierung von Wirkstoffen zu verwenden, da keine eindeutige Zuordnung eines ATC-Codes zu einer Substanz möglich ist. 

Im Bereich der Wirkstoffe soll die Möglichkeit gegeben werden, bei der Berechnung der Dosisangaben zwischen dem genauen Wirkstoff (der ein Salz, Ester etc. sein kann) und dem reinen Wirkstoff zu unterscheiden, und anzugeben, ob die Berechnung auf dem Derivat (seltener) oder der "reinen"/"allgemeinen (normalisierter)" Substanz (meist) beruht. Aus diesem Grund wurde eine Extension definiert, welche an die Wirkstoffcodierung angehangen werden kann. Diese Extension verweist auf ein ValueSet, welches folgende Codes beinhaltet: 
* IN (ingredient - allgemeiner Wirkstoff), 
* PIN (precise ingredient - genauer Wirkstoff), 
* oder MIN (multiple ingredients - Kombinationscode für mehrere Wirkstoffe).

{{render:mii-cs-medikation-wirkstofftyp}}

---

**Arzneimittelprodukte**

Zur Identifikation von Arzneimittelprodukten wird vorgeschlagen:
* die [Pharmazentralnummer (PZN)](https://de.wikipedia.org/wiki/Pharmazentralnummer) Diese Nummern müssen über ein öffentlich verfügbare URL/URI abfragbar gemacht werden. (§31b SGB V)
* [Pharmaceutical Product Identifier (PHPID)](https://www.fda.gov/industry/fda-resources-data-standards/pharmaceutical-product-identification), welche Teil der ISO-IDMP-Standards sind, jedoch aktuell nicht verfügbar.

---

**Kombinierte Arzneimittelpackungen**

Bei kombinierten Arzneimittelpackungen, d. h. das Arzneimittel besteht aus mehreren Komponenten, die unterschiedliche Wirkstoffe, Darreichungsformen, Dosierungen oder Dosiereinheiten aufweisen, sind derzeit zwei Varianten in der Darstellung auf dem Medikationsplan und in dem Carrier zulässig:

Variante 1: eine gemeinsame PZN
Das kombinierte Fertigarzneimittel wird im Medikationsplan mit einer PZN kodiert, so dass dieses Arzneimittel als ein Medikationseintrag darzustellen ist. Die Dosierung sollte dann als Freitext vom Anwender eingetragen werden, um den beiden Komponenten Rechnung zu tragen. Ergänzend kann eine gebundene Zusatzzeile Platz für weitere Erklärungen bieten.

Variante 2: zwei oder mehrere PZNs
Die einzelnen Komponenten des Fertigarzneimittels werden durch zwei oder mehrere PZNs im Medikationsplan kodiert. In diesem Fall ist das kombinierte Fertigarzneimittel durch Aufteilung auf entsprechende, aufeinanderfolgende Medikationseinträge darzustellen. Es lässt sich strukturell derzeit kein Zusammenhang zwischen Medikationseinträgen herstellen, der eine Zusammengehörigkeit als kombiniertes Fertigarzneimittel kennzeichnet. Diesen Zusammenhang kann der Anwender bei Bedarf durch geeignete Texte – ggf. durch eine eigene Zwischenüberschrift herstellen.

---

**Anwendungsart und Darreichungsform**

Für die Anwendungsart und Darreichungsform sollen genutzt werden:
* Standard-Terminologien der [EDQM (European Directorate for the Quality of Medicines and Health Care)](https://standardterms.edqm.eu/) "Routes and Methods of Administration" und "Pharmaceutical Dose Forms". 
* Alternativ kann die Bezeichnung einer Darreichungsform in Form des IFA-Codes angegeben werden. Vorgaben gemäß KBV Medikationsplan. Schlüsseltabelle: https://applications.kbv.de/S_BMP_DARREICHUNGSFORM_V1.02.xhtml

Bevorzugt sollten hier die Standard-Terminologien der EDQM verwendet werden, da sie zu den ISO-Standards zur "Identification of Medicinal Products" konform sind. 

---

**Kontext der Anwendung von Medikation**

Codes zur Differenzierung des Kontextes in dem eine Medikationsliste (List) verwaltet wird oder zur Kategorisierung eines Medikationseintrags (MedicationStatement) sind im folgenden ValueSet dargestellt:

Canonical: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/ValueSet/fallkontext

{{render:https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/ValueSet/fallkontext}}

---

**Liste externer Code Systeme** 

| URI | Source | Comment | OID (for non-FHIR systems) | 
|-
| http<nolink>://fhir.de/CodeSystem/ifa/pzn | PZN [Pharmazentralnummer](https://de.wikipedia.org/wiki/Pharmazentralnummer) | | 1.2.276.0.76.4.6 |
| http<nolink>://fhir.de/CodeSystem/bfarm/atc | ATC [Anatomisch-therapeutisch-chemische Klassifikation](https://www.dimdi.de/dynamic/de/arzneimittel/atc-klassifikation/)| deutsche Fassung | | 
| http<nolink>://fhir.de/CodeSystem/ask | Arzneistoffkatalog -Nummer | | 1.2.276.0.76.5.308 |
| http<nolink>://fdasis.nlm.nih.gov | UNII [Unique Ingredient Identifier](http://www.fda.gov/Drugs/InformationOnDrugs/ucm142438.htm) | [Using UNII with FHIR](http://hl7.org/fhir/unii.html) | 2.16.840.1.113883.4.9 |    
| urn:oid:2.16.840.1.113883.6.61 | [CAS registry system](https://www.cas.org/support/documentation/chemical-substances) | unique numerical identifier of a substance in the CAS Registry system | 2.16.840.1.113883.6.61 |
| http<nolink>://standardterms.edqm.eu | EDQM [Standard Terms](https://standardterms.edqm.eu/) |  | 0.4.0.127.0.16.1.1.2.1 |
| http<nolink>://snomed.info/sct | SNOMED CT [snomed.org](http://snomed.org/) | [Using SNOMED CT with FHIR](http://hl7.org/fhir/snomedct.html) | 2.16.840.1.113883.6.96 | 
| http<nolink>://unitsofmeasure.org | UCUM [unitsofmeasure.org](http://unitsofmeasure.org/) | [Using UCUM with FHIR](http://hl7.org/fhir/ucum.html) | 2.16.840.1.113883.6.8 |  
| http<nolink>://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung | IHE XDS Fallkontext bei Dokumentenerstellung | | 1.3.6.1.4.1.19376.3.276.1.5.16 |

<br><br>

### Hinweise zur Mehrsprachigkeit

Dieser IG wird **deutsch geführt** publiziert (verbindliche Fassung). Eine
**englische Übersetzung** ist optional und wird über gettext-`.po`-Kataloge unter
`input/translations/en` gepflegt. Die Ausgabe erfolgt je Sprache unter `/de/`
bzw. `/en/`. FHIR-Artefakt-Bezeichner bleiben gemäß KDS-Governance englisch.

> **Hinweis zum englischen Seitenbaum:** Die **Narrative-Seiten** (`pagecontent`)
> werden vom aktuellen IG Publisher/Template **noch nicht** übersetzt gerendert;
> `/en/` zeigt sie in Deutsch mit dem Hinweis „There is no translation page
> available …". Das ist beabsichtigt (deutsch führend). Übersetzt **rendern** heute
> nur die Texte von StructureDefinition/CodeSystem/Questionnaire (siehe unten);
> ValueSet-, ImplementationGuide-Titel und Menü bleiben deutsch.

#### Übersetzung von Conformance-Ressourcen
Texte von **StructureDefinition, CodeSystem und Questionnaire** werden über
Translation-Supplements `input/translations/en/<Typ>-<id>.po` übersetzt
(`msgid` = deutscher Quelltext, `msgstr` = englisch) und erscheinen auf den
`/en/`-Artefaktseiten. FHIR-Artefakt-Bezeichner (`name`/`id`/Codes) bleiben gemäß
KDS-Governance englisch.

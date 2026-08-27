# Extensions - MII IG Kerndatensatz-Modul Bildgebung v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* **Extensions**

## Extensions

 Diese Seite enthält Übersetzungen aus der Originalsprache, in der der Leitfaden verfasst wurde. Informationen zu diesen Übersetzungen und Anweisungen zum Abgeben von Feedback zu den Übersetzungen finden Sie [hier](translationinfo.md). 

### Extensions

Diese Seite listet die vom Modul **Bildgebung** definierten FHIR-Extensions (Namenskonvention `MII_EX_<Modul>_<Name>`). Extensions transportieren Informationen, die die Basis-Ressourcen und Profile nicht ausdrücken können; die Profile, die sie verwenden, stehen auf der [Profile-Seite](profiles.md), die vollständige generierte Liste in der [Artefakt-Übersicht](artifacts.md).

Das Modul definiert drei Gruppen von Extensions:

* **Modalitätsspezifische ImagingStudy-Extensions** auf Serien-Ebene — [CT](StructureDefinition-mii-ex-bildgebung-modalitaet-ct.md), [MR](StructureDefinition-mii-ex-bildgebung-modalitaet-mr.md), [MG/CR/DX](StructureDefinition-mii-ex-bildgebung-modalitaet-mg-cr-dx.md), [NM](StructureDefinition-mii-ex-bildgebung-modalitaet-nm.md), [PT](StructureDefinition-mii-ex-bildgebung-modalitaet-pt.md) und [US](StructureDefinition-mii-ex-bildgebung-modalitaet-us.md) — sie erfassen die technischen Aufnahmeparameter der jeweiligen Modalität.
* **Modalitätsübergreifende ImagingStudy-Extensions** — [Bildgebungsgrund](StructureDefinition-mii-ex-bildgebung-bildgebungsgrund.md), [Körpergröße](StructureDefinition-mii-ex-bildgebung-groesse.md), [Körpergewicht](StructureDefinition-mii-ex-bildgebung-gewicht.md), [Kontrastmittel auf Serien-Ebene](StructureDefinition-mii-ex-bildgebung-kontrastmittel.md), [Schichtdicke auf Serien-Ebene](StructureDefinition-mii-ex-bildgebung-serie-schichtdicke.md) und [Instanzdetails](StructureDefinition-mii-ex-bildgebung-instanz-details.md).
* **Observation-Extensions**, die einen Befund mit dem Bild verknüpfen, auf dem er erhoben wurde — [Serien-UID](StructureDefinition-mii-ex-bildgebung-serie-uid.md) und [SOP-Instanz-UID](StructureDefinition-mii-ex-bildgebung-sop-instanz-uid.md).


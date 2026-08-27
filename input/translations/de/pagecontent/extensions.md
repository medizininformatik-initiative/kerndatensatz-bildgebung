<!-- markdownlint-disable MD041 -->

### Extensions

Diese Seite listet die vom Modul **Bildgebung** definierten FHIR-Extensions
(Namenskonvention `MII_EX_<Modul>_<Name>`). Extensions transportieren
Informationen, die die Basis-Ressourcen und Profile nicht ausdrücken können;
die Profile, die sie verwenden, stehen auf der [Profile-Seite](profiles.html),
die vollständige generierte Liste in der [Artefakt-Übersicht](artifacts.html).

Das Modul definiert drei Gruppen von Extensions:

* **Modalitätsspezifische ImagingStudy-Extensions** auf Serien-Ebene —
  [CT](StructureDefinition-mii-ex-bildgebung-modalitaet-ct.html),
  [MR](StructureDefinition-mii-ex-bildgebung-modalitaet-mr.html),
  [MG/CR/DX](StructureDefinition-mii-ex-bildgebung-modalitaet-mg-cr-dx.html),
  [NM](StructureDefinition-mii-ex-bildgebung-modalitaet-nm.html),
  [PT](StructureDefinition-mii-ex-bildgebung-modalitaet-pt.html) und
  [US](StructureDefinition-mii-ex-bildgebung-modalitaet-us.html) — sie erfassen
  die technischen Aufnahmeparameter der jeweiligen Modalität.
* **Modalitätsübergreifende ImagingStudy-Extensions** —
  [Bildgebungsgrund](StructureDefinition-mii-ex-bildgebung-bildgebungsgrund.html),
  [Körpergröße](StructureDefinition-mii-ex-bildgebung-groesse.html),
  [Körpergewicht](StructureDefinition-mii-ex-bildgebung-gewicht.html),
  [Kontrastmittel auf Serien-Ebene](StructureDefinition-mii-ex-bildgebung-kontrastmittel.html),
  [Schichtdicke auf Serien-Ebene](StructureDefinition-mii-ex-bildgebung-serie-schichtdicke.html) und
  [Instanzdetails](StructureDefinition-mii-ex-bildgebung-instanz-details.html).
* **Observation-Extensions**, die einen Befund mit dem Bild verknüpfen, auf dem
  er erhoben wurde —
  [Serien-UID](StructureDefinition-mii-ex-bildgebung-serie-uid.html) und
  [SOP-Instanz-UID](StructureDefinition-mii-ex-bildgebung-sop-instanz-uid.html).

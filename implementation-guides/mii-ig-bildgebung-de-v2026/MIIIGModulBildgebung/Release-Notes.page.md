## {{page-title}}
**Version: 2026.0.0**

- Umbenennung in Modul Bildgebung
- SliceThickness auf Serien- und Instanzebene verwendbar
- Regeln für Slices in der Composition und Extension PT repariert
- Neues ValueSet für LocationQualifier
- Seiteninhalt Extension NM wiederhergestellt
- ConvolutionalKernel hinzugefügt zu Extension CT
- Anpassung der Modulbeschreibung
- Conformance-Seite hinzugefügt

**Version: 2026.0.0-ballot**

- Neu hinzugefügt:
  - Neue Modalität-Extension für Ultraschall
  - Neue Extension auf Serien-Ebene, um die Schichtdicke analog zur Instanzdetails-Extension abzubilden, falls die Instanz-Ebene nicht umgsetzt wird
  - Hinzufügen von ConvolutinalKernel in der Modalität-Extension für CT
  - Hinzufügen von burnedinAnnotation in der Instanzdetails-Extension
- Anpassungen für eine bessere Abbildung im FDPG:
  - Kardinalität für Codes in DiagnosticReport.conclusionCode.coding eingeschränkt auf "0..1"
  - Kardinalität für DiagnosticReport.code.coding für Loinc und Diagnostic-Service-Section eingeschränkt auf "0..1"
  - Kardinalität für ContrastBolus in ContrastAdministration-Extension eingeschränkt auf "1..1"
  - Festlegung von Codes für Kategorien, Codes und BodySite in den Profilen
  - Kardinalität für Value in Observation eingeschränkt auf "1..1"
  - Übersetzungen für Terminologien für FDPG-Darstellung
  - Neue ValueSets für ServiceRequest, DiagnosticReport, Observation
  - ValueSets-Binding für alle ValueSets auf "required" gesetzt
- Fehlerbehebung:
  - Fehlerbehebung in Slicing-Discriminator in Instanzdetails-Extension
  - Ausbesserung von Rechtschreibfehlern und fehlerhaften IG-Links
- Anpassung des LogicalModels, der UML-Diagramme sowie der Suchparameter an die aktuellen Profile
- R5 Backport-Extensions in DiagnosticReport und Observation als Workaround eigenständig ausmodeliert, bis HL7 Lösung verfügbar
- Ressourcen verwenden in diesem Release modulübergreifend SNOMED CT in der Version http://snomed.info/sct/900000000000207008/version/20250801, um eine stabile ValueSet-Expansion sicherzustellen.

**Version: 2025.0.2**

- Problemlösung zur Verfügbarkeit des R5-Extension-Package

**Version: 2025.0.1**

- Überarbeitung Translations für bessere Darstellung und Lesbarkeit im FDPG
- Verbesserung von Tippfehlern in SNOMED CT ValueSets
- Verbesserung der Kardinalität der Referenz vom Profil Observation auf das Profil BodyStructure

**Version: 2025.0.0**

- Zusätzliche UMLs gesondert für Befund und Metadaten zum besseren Verständnis
- Zusätzliches abstraktes UML für das Modul
- Device-Profil zur Identifikation des Geräts, anstatt Extension in der ImagingStudy
- Zusätzliche Attribute für MR-Extension (echoTime, repetitionTime, inversionTime, flipAngle)
- Zusätzliche Attribute für MG_CR_DX-Extension (viewPosition)
- Getrennte Extension für PT und NM
- Geänderte und zusätzliche Attribute für PT-Extension (radiopharmaceutical, radionuclide, tracerExposureTime, units, seriesType)
- Geänderte und zusätzliche Attribute für NM-Extension (radiopharmaceutical, radionuclide, tracerExposureTime, units)
- Geänderter Datentyp für ScanningSequence, -Variant und ImageType von string auf CodeableConcept
- CodeSysteme für MR-ScanningSequence, MR-ScanningSequenceVariant, PT-SeriesType, Instanz-ImageType
- ValueSets für neu angelegte eigene CodeSysteme
- Composite-Suchparameter für ImagingStudy-modality und ImagingStudy-bodysite
- Kontrastmittelreferenz in der ImagingStudy ergänzt auf MedicationAdministration
- Ressourcen verwenden in diesem Release modulübergreifend SNOMED CT in der Version http://snomed.info/sct/900000000000207008/version/20240701, um eine stabile ValueSet-Expansion sicherzustellen.

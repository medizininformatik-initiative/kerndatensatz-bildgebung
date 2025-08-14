## {{page-title}}
**Version: 2026.0.0-ballot**
- Neue Modalität-Extension für Ultraschall inkl. Suchparameter
- Kardinalität für Codes in DiagnosticReport.conclusionCode.coding eingeschränkt auf "0..1"
- Kardinalität für DiagnosticReport.code.coding für Loinc und Diagnostic-Service-Section eingeschränkt auf "0..1"
- Kardinalität für ContrastBolus in ContrastAdministration-Extension eingeschränkt auf "1..1"
- Instance-Details-Extension erweitert mit burnedinAnnotation-Tag
- Festlegung von Codes für Kategorien, Codes und BodySite in den Profilen
- Kardinalität für Value in Observation eingeschränkt auf "1..1"
- Erweiterung des Image-Type-CodeSystem für Modalität Ultraschall
- Anpassung des LogicalModel an die aktuellen Profile
- Fehlerbehebung in Slicing-Discriminator in Instance-Details-Extension
- Neue ValueSets für ServiceRequest, DiagnosticReport, Observation
- ValueSets-Binding für alle ValueSets auf required gesetzt
- Update der UML-Diagramme an neue Modalität Ultraschall
- Ausbesserung von Rechtschreibfehlern
- Übersetzungen für Terminologien für FDPG-Darstellung
- Fehler in Links im IG verbessert
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
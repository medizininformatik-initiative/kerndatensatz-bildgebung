## {{page-title}}

**Version: 2025.0.0**

- Zusätzliche UMLs gesondert für Befund und Metadaten zum besseren Verständnis
- Zusätzliches abstraktes UML für das Modul
- Device-Profil zur Identifikation des Geräts, anstatt Extension in der ImagingStudy
- Zusätzliche Attribute für MR-Extension (echoTime, repetitionTime, inversionTime, flipAngle)
- Zusätzliche Attribute für MG_CR_DX-Extension (viewPosition)
- Getrennte Extension für PT und NM
- Geänderte und zusätzliche Attribute für PT-Extension (radiopharmaceutical, radionuclide, tracerExposureTime, units, seriesType)
- Geänderte und zusätzliche Attribute für NM-Extension (radiepharmaceutical, radionuclide, tracerExposureTime, units)
- Geänderter Datentyp für ScanningSequence, -Variant und ImageType von string auf CodeableConcept
- CodeSysteme für MR-ScanningSequence, MR-ScanningSequenceVariant, PT-SeriesType, Instanz-ImageType
- ValueSets für neu angelegte eigene CodeSysteme
- Composite-Suchparameter für ImagingStudy-modality und ImagingStudy-bodysite
- Kontrastmittelreferenz in der ImagingStudy ergänzt auf MedicationAdministration

<!-- markdownlint-disable MD041 -->
<!-- markdownlint-disable MD041 -->
<!-- Deutsche Übersetzung der Standardsprachseite input/pagecontent/changes.md
     — beide Dateien müssen dasselbe aussagen. Struktur aus kerndatensatz-basis
     input/pagecontent/changes.md (Branch main) — ein Abschnitt je Version,
     neueste zuerst — und aus der MII-Release-Notes-Vorlage
     (kerndatensatz-meta/implementation-guides/MedizininformatikInitiative-ImplementationGuide-Template/
     MII-IG-Modul--Modul/Release-notes.page.md), die "Keep a Changelog" vorgibt.

     Pflegeregel: Für jedes Release oben einen neuen Abschnitt
     `#### Version <x>` ergänzen, in BEIDEN Sprachen, als Teil des
     Release-Pull-Requests. Einen veröffentlichten Abschnitt danach nicht mehr
     ändern. -->

Diese Seite hält die Änderungen zwischen den veröffentlichten Versionen des
Moduls **Bildgebung** fest, die neueste Version zuerst. Sie folgt
[Keep a Changelog](https://keepachangelog.com/de/1.1.0/) und dem
KDS-CalVer-Schema, das die Seite [Versionierung](version-history.html)
beschreibt.

Jede Version erhält einen eigenen Abschnitt mit dem Release-Datum und den nach
Kategorien gruppierten Änderungen:

* **Hinzugefügt** — neue Profile, Extensions, ValueSets, Suchparameter, Seiten.
* **Geändert** — geänderte Einschränkungen, Bindings, Hinweise oder
  Dokumentation.
* **Abgekündigt** — Artefakte, die noch existieren, aber nicht mehr genutzt
  werden sollen.
* **Entfernt** — zurückgezogene Artefakte.
* **Behoben** — Korrekturen von Fehlern.
* **Sicherheit** — Änderungen mit Auswirkung auf Sicherheit oder Datenschutz.

Kategorien ohne Inhalt werden weggelassen. Geht eine Änderung auf ein Issue oder
einen Pull-Request zurück, wird darauf verlinkt.

<div class="ig-highlight ig-highlight-red">
<h5>Breaking Changes MÜSSEN berichtet und erläutert werden</h5>
<p>Ein Versionsabschnitt mit einer Breaking Change ist erst vollständig, wenn
er ausdrücklich und in diesem Changelog beantwortet:</p>
<ul>
<li><b>Was genau sich geändert hat</b> zwischen den beiden Versionen — das
Artefakt, das Element, die alte und die neue Einschränkung (nicht nur
„Profil X wurde überarbeitet“).</li>
<li><b>Was das für bestehende Daten bedeutet:</b> Validieren Daten, die der
Vorversion entsprachen, weiterhin gegen die neue Version? Falls nein: welche
Ressourcen und Elemente sind betroffen, und wie zeigt sich der Fehler?</li>
<li><b>Was Implementierende tun sollten:</b> die Empfehlung der Autorinnen
und Autoren zur Migration bestehender Daten auf die neue Version —
Transformationsschritte, Standardwerte, Umkodierungs-Hinweise — oder die
ausdrückliche Aussage, dass kein Migrationspfad bereitgestellt wird, und
warum.</li>
</ul>
<p><b>Was als Breaking Change zählt</b> — behandeln Sie eine Änderung als
Breaking Change, wenn sie eines der Folgenden tut, auch wenn sie klein wirkt:
eine Kardinalität verschärft (<code>0..*</code> → <code>1..1</code>), eine
Binding-Stärke erhöht (example → required), Codes aus einem required-ValueSet
entfernt, ein Element oder einen Slice entfernt oder umbenennt, einen Typ
einengt, eine Invariante oder eine Must-Support-Pflicht hinzufügt oder eine
kanonische URL ändert. Im Zweifel: als Breaking Change berichten.</p>
<p><b>Breaking für wen:</b> benennen Sie beide Perspektiven — <i>gespeicherte
Daten</i> (Instanzen, die gegen die alte Version valide sind) und
<i>Implementierungen</i> (Clients und Server, die dagegen gebaut wurden; ein
entfernter Suchparameter bricht Implementierungen, während jede gespeicherte
Instanz valide bleibt).</p>
<p><b>Die Versionsnummer warnt niemanden.</b> Das KDS-Kalender-Versionsschema
(<code>JJJJ.n.n</code>) trägt kein Major-Signal wie SemVer — dieser
Changelog-Abschnitt ist die <i>einzige</i> Warnung, die Lesende bekommen.</p>
<p><b>Verlinken Sie das technische Delta.</b> Ab der zweiten formalen
Publikation aktivieren Sie den Versionsvergleich des IG Publishers
(<code>version-comparison</code> in <code>sushi-config.yaml</code> — siehe die
Seite <a href="version-history.html">Versionierung</a> zur Einrichtung und
ihren Voraussetzungen); er veröffentlicht einen maschinell erzeugten
Vergleich unter <code>comparison-v&lt;Vorversion&gt;/index.html</code>.
Verlinken Sie ihn aus dem Versionsabschnitt, damit die Erläuterung und der
technische Diff nebeneinanderstehen.</p>
<p>Kennzeichnen Sie solche Einträge deutlich (zum Beispiel mit dem Präfix
<b>BREAKING:</b>), damit sie beim Überfliegen des Abschnitts nicht übersehen
werden können.</p>
</div>

---
#### Version 2027.0.0-ballot.1

**Datum:** 206-09-15

- **Geändert**: Abhängigkeiten zu anderen Profilen angepasst auf ballot-Stand

#### Version 2027.0.0-ballot

- **Hinzugefügt**: Körpergewicht und Größe auf Studienebene über Extension abbildbar mit DE-Basisprofile
- **Geändert**: SOP-Class Binding vereinfacht auf extensible
- **Hinzugefügt**: Spezifikation von Observation.valueQuantity und Observation.valueCodeableConcept
- **Hinzugefügt**: Spezifische Observation für radiologische Messungen
- **Hinzugefügt**: Beispielressourcen für Patient, Condition und Encounter

#### Version 2026.0.0

- Changed: Umbenennung in Modul Bildgebung
- Changed: SliceThickness auf Serien- und Instanzebene verwendbar
- Changed: Regeln für Slices in der Composition und Extension PT repariert
- Changed: Neues ValueSet für LocationQualifier
- Fixed: Seiteninhalt Extension NM wiederhergestellt
- Added: ConvolutionalKernel hinzugefügt zu Extension CT
- Changed: Anpassung der Modulbeschreibung
- Added: Conformance-Seite hinzugefügt
- Changed: Suchparameter ab v2026 im Kerndatensatzmodul Meta integriert
- Changed: Extension SupportingInfo in DiagnosticReport jetzt aus HL7 Package
- Changed: Extension BodyStructure in Observation jetzt aus HL7 Package
- Fixed: Ungültige Codes ausgebessert
- Fixed: Extension BodyStructure von Observation auf Observation.bodySite umgehängt

#### Version 2026.0.0-ballot

- Neu hinzugefügt:
  - Neue Modalität-Extension für Ultraschall
  - Neue Extension auf Serien-Ebene, um die Schichtdicke analog zur Instanzdetails-Extension abzubilden, falls die Instanz-Ebene nicht umgesetzt wird
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
- Ressourcen verwenden in diesem Release modulübergreifend SNOMED CT in der Version http://snomed.info/sct/900000000000207008/version/20250701, um eine stabile ValueSet-Expansion sicherzustellen.

#### Version 2025.0.2

- Problemlösung zur Verfügbarkeit des R5-Extension-Package

#### Version 2025.0.1

- Überarbeitung Translations für bessere Darstellung und Lesbarkeit im FDPG
- Verbesserung von Tippfehlern in SNOMED CT ValueSets
- Verbesserung der Kardinalität der Referenz vom Profil Observation auf das Profil BodyStructure

#### Version 2025.0.0

- Zusätzliche UMLs gesondert für Befund und Metadaten zum besseren Verständnis
- Zusätzliches abstraktes UML für das Modul
- Device-Profil zur Identifikation des Geräts, anstatt Extension in der ImagingStudy
- Zusätzliche Attribute für MR-Extension (echoTime, repetitionTime, inversionTime, flipAngle)
- Zusätzliche Attribute für MG_CR_DX-Extension (viewPosition)
- Getrennte Extension für PT und NM
- Geänderte und zusätzliche Attribute für PT-Extension (radiopharmaceutical, radionuclide, tracerExposureTime, units, seriesType)
- Geänderter Datentyp für ScanningSequence, -Variant und ImageType von string auf CodeableConcept
- CodeSysteme für MR-ScanningSequence, MR-ScanningSequenceVariant, PT-SeriesType, Instanz-ImageType
- ValueSets für neu angelegte eigene CodeSysteme
- Composite-Suchparameter für ImagingStudy-modality und ImagingStudy-bodysite
- Kontrastmittelreferenz in der ImagingStudy ergänzt auf MedicationAdministration
- Ressourcen verwenden in diesem Release modulübergreifend SNOMED CT in der Version http://snomed.info/sct/900000000000207008/version/20240701, um eine stabile ValueSet-Expansion sicherzustellen.

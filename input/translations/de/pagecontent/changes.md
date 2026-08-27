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

### Änderungshistorie

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

#### Version 2027.0.0-ballot

**Datum:** 2026-08-27

##### Hinzugefügt

* Erstveröffentlichung des Moduls **Bildgebung**.

> [TODO: Ersetzen Sie diesen Abschnitt durch die echten Einträge Ihres ersten
> Releases und ergänzen Sie für jede weitere Version oben einen neuen Abschnitt.
> Bei einem Modul mit mehreren Teilbereichen gruppiert `kerndatensatz-basis` die
> Einträge einer Version thematisch (etwa *Dokumentation*,
> *Terminologie-Aktualisierungen* und je eine Überschrift pro Teilmodul) und
> stellt jedem Stichpunkt **Hinzugefügt:** / **Geändert:** / **Entfernt:**
> voran — nutzen Sie die für Ihr Modul passende der beiden Gruppierungen,
> bleiben Sie dabei aber über alle Versionen hinweg und in beiden Sprachen
> einheitlich.]
{: .ig-highlight .ig-highlight-grey}

# FQL-/Simplifier-Direktiven → HL7-IG-Publisher-Crosswalk

Mapping der Simplifier-Renderdirektiven (inkl. FQL) auf ihre HL7-IG-Publisher-
Äquivalente. Wird in **beiden** Migrationswegen genutzt: manuell (MIGRATION.md
§3 A3) und KI-gestützt (migration-agent-spec.md §4, Schritt „Narrative").

## Maßgebliche Regeldatei (Single Source of Truth, erweiterbar)
Die maschinenlesbaren Regeln stehen in [`fql-rules.tsv`](fql-rules.tsv)
(Tab-getrennt: `LABEL ⟶ ERE-Muster ⟶ Empfehlung`). Der Scanner
[`tools/fql-scan.sh`](../../../tools/fql-scan.sh) liest **nur** diese Datei.

**Per Hand erweitern**, falls eine Direktive (noch) nicht abgebildet ist:
eine neue Zeile `LABEL<TAB>ERE-Muster<TAB>Empfehlung` anfügen (geschweifte
Klammern als `\{ \}`). Der Scanner meldet nicht abgedeckte Direktiven als
`[UNBEKANNT]` — das ist der Hinweis, eine Regel zu ergänzen.

## Mapping-Tabelle (Stand der Regeln)

| Simplifier/FQL | HL7-IG-Publisher-Äquivalent |
|----------------|------------------------------|
| `{{page-title}}` | entfernen — Titel aus `sushi-config.yaml` (`pages:`/`menu:`) |
| `{{index:root}}` | entfernen — Inhaltsverzeichnis/Navigation erzeugt das Template |
| `{{pagelink: …, hint: MII_PR_X}}` | `[Text](StructureDefinition-mii-pr-x.html)` (hint = Artefakt-`name` → `id`) |
| `{{link:<id>}}` | Artefakt-Link `[Text](<Typ>-<id>.html)` |
| `{{render:<bild>}}` (png/jpg/svg…) | Bild nach `input/images/` kopieren + `<img src="datei">` |
| `{{render:<canonical>}}` (Ressource) | meist entfernen (Artefaktseite wird generiert) **oder** `{% include <Typ>-<id>-<view>.xhtml %}` |
| `{{tree}}` / `{{tree, expand}}` | `{% include <Typ>-<id>-snapshot.xhtml %}` (bzw. `-dict` / `-diff`) |
| `{{xml}}` | `{% include <Typ>-<id>-xml.xhtml %}` |
| `{{json}}` | `{% include <Typ>-<id>-json-html.xhtml %}` |
| `<fql … for differential.element select id, short>` | Element-Tabelle: `{% include <Typ>-<id>-dict.xhtml %}` |
| `<fql>` Metadaten (url/status/version) | entfällt — Header/Metadaten generiert der Publisher |
| ``@``` … ``` `` (FQL-Codeblock) | wie `<fql>` |
| `<tabs>`/`<tab>` (Darstellung/XML/JSON) | je Tab das passende `{% include %}`-Fragment |

`<Typ>` ∈ `StructureDefinition` \| `CodeSystem` \| `ValueSet` \|
`CapabilityStatement` …; `<id>` = Artefakt-`id`. Verfügbare `<view>`-Fragmente je
StructureDefinition u. a.: `snapshot`, `diff`, `dict`, `snapshot-by-mustsupport`,
`bindings`, `obligations`, `inv`, `search-params`, `maps`, `xml`, `json-html`
(vom Publisher unter `_includes/` generiert; per `{% include %}` einbindbar).

## ⚠️ Build-Leitplanke: kein Liquid in `pagecontent`-Kommentaren
Der IG Publisher rendert `pagecontent`-Seiten über Jekyll/Liquid. **Liquid wertet
`{% … %}`- und `{{ … }}`-Konstrukte überall aus — auch in `<!-- … -->`-Kommentaren.**
- Ein ungültiges `{% … %}` (z. B. ein als Beispiel notiertes `{% include … %}`)
  **bricht den Build hart ab** (verifiziert im Person-Dry-Run).
- Ein `{{ … }}` mit unbekanntem Inhalt wird still zu Leerstring (kein Abbruch),
  leckt aber in das HTML.
Daher: In `pagecontent` (inkl. Provenienz-/TODO-Kommentaren) **keine** Liquid- oder
Simplifier-Direktiv-Literale notieren — Mechanismen in Prosa beschreiben. Der
echte `{% include %}` steht außerhalb von Kommentaren.

## Kontextbezogene Anzeige (FQL-Querytabellen-Ersatz)
> Verifiziert im Person-Dry-Run: `{% include StructureDefinition-mii-lm-person-dict.xhtml %}`
> rendert das Element-Wörterbuch (Pfad + Beschreibung) inline — funktionsfähiger
> Ersatz der FQL-Elementtabelle. Das HL7-Basis-Template nutzt dieselben Fragmente
> in seinen Layouts.
- **Element-/Datensatztabelle** (FQL `for differential.element select id, short`)
  → `{% include <Typ>-<id>-dict.xhtml %}` (Element-Wörterbuch mit Definitionen)
  oder eine statische Markdown-Tabelle.
- **Ressourcen-übergreifende Tabelle** (FQL über mehrere Ressourcen) → Liquid über
  `site.data.*` (`structuredefinitions.json`, `resources.json`, `artifacts.json`):
  ```liquid
  {% for sd in site.data.structuredefinitions %}| [{{ sd[1].name }}]({{ sd[1].path }}) | {{ sd[1].description }} |
  {% endfor %}
  ```

## Ablauf (Scan → Transformation)
1. **Scan:** `tools/fql-scan.sh [pfad…]` listet je Fund Datei:Zeile, Direktive und
   die Empfehlung; `[UNBEKANNT]` markiert nicht abgedeckte Direktiven.
2. **Transformation (KI-gestützt oder manuell):** je Fund die Empfehlung anwenden.
   Mehrdeutige Fälle (z. B. `{{render:<canonical>}}` → entfernen vs. `include`;
   `<fql>` → `-dict` vs. statische Tabelle) **mit fachlichem Urteil** entscheiden;
   im Zweifel `TODO:REVIEW` setzen, **keine** Inhalte erfinden (Guardrail 4).
3. **Nachkontrolle:** erneut scannen — Ziel: keine `[UNBEKANNT]` und keine
   ungewollt verbliebenen Direktiven (außer bewusst als `TODO:REVIEW` markiert).

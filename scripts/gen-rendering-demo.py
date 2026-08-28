#!/usr/bin/env python3
"""Generate the artifact-rendering demonstration page in English and German.

Both language versions are produced from one description of the content so the
two never drift apart structurally. Only the prose differs.
"""
import json, sys, pathlib

CODES = json.load(open(str(pathlib.Path(__file__).parent / 'rendering-demo-codes.json')))
SD, PT, LISTY = CODES['sd'], CODES['pt'], CODES['listy']

# ---------------------------------------------------------------- descriptions
# What each fragment code shows. Anything not listed here gets no gloss rather
# than a guessed one.
GLOSS_EN = {
 'adl': 'the element list, all rows', 'adl-all': 'the element list including inherited rows',
 'class-table': 'the profile as a class table', 'contained-index': 'index of contained resources',
 'crumbs': 'the breadcrumb trail', 'ctxts': 'the contexts an extension may be used in',
 'dict': 'the full element dictionary', 'dict-active': 'the dictionary, elements with max cardinality > 0 only',
 'dict-diff': 'the dictionary for differential elements', 'dict-key': 'the dictionary for key elements',
 'dict-ms': 'the dictionary for must-support elements', 'diff': 'the Differential tab table',
 'diff-all': 'the differential including inherited rows', 'diff-bindings': 'differential with binding columns',
 'diff-bindings-all': 'differential with binding columns, all rows',
 'diff-obligations': 'differential with obligation columns',
 'diff-obligations-all': 'differential with obligation columns, all rows',
 'eview': 'the element view', 'eview-all': 'the element view, all rows',
 'expansion': 'value set expansions used by the profile',
 'experimental-warning': 'the experimental-artifact banner (empty when not experimental)',
 'grid': 'the grid view of the structure', 'header': 'the artifact identification header',
 'history': 'change history from Provenance resources (empty when there are none)',
 'html': 'the resource narrative', 'inv': 'the invariant summary',
 'inv-diff': 'invariants introduced by the differential', 'inv-key': 'key invariants',
 'ip-statements': 'intellectual-property statements', 'json-html': 'the JSON, syntax-highlighted',
 'json-schema': 'a JSON Schema for the structure', 'maps': 'the element mappings',
 'maturity': 'the maturity banner', 'obligations': 'the obligations table',
 'obligations-all': 'the obligations table, all rows', 'other-versions': 'links to other versions',
 'pseudo-json': 'a JSON template of the snapshot', 'pseudo-ttl': 'a Turtle template of the snapshot',
 'pseudo-xml': 'an XML template of the snapshot', 'sd-changes': 'changes against the previous version',
 'sd-use-context': 'the use contexts', 'sd-xref': 'where this structure is referenced',
 'search-params': 'search parameters that apply', 'shex': 'a ShEx schema for the structure',
 'snapshot': 'the Snapshot tab table', 'snapshot-all': 'the snapshot, all rows',
 'snapshot-bindings': 'the snapshot with binding columns',
 'snapshot-bindings-all': 'the snapshot with binding columns, all rows',
 'snapshot-by-key': 'the snapshot ordered by key', 'snapshot-by-key-all': 'ordered by key, all rows',
 'snapshot-by-key-bindings': 'ordered by key, with bindings',
 'snapshot-by-key-bindings-all': 'ordered by key, with bindings, all rows',
 'snapshot-by-key-obligations': 'ordered by key, with obligations',
 'snapshot-by-key-obligations-all': 'ordered by key, with obligations, all rows',
 'snapshot-by-mustsupport': 'the snapshot restricted to must-support',
 'snapshot-by-mustsupport-all': 'must-support view, all rows',
 'snapshot-by-mustsupport-bindings': 'must-support view with bindings',
 'snapshot-by-mustsupport-bindings-all': 'must-support view with bindings, all rows',
 'snapshot-by-mustsupport-obligations': 'must-support view with obligations',
 'snapshot-by-mustsupport-obligations-all': 'must-support view with obligations, all rows',
 'snapshot-obligations': 'the snapshot with obligation columns',
 'snapshot-obligations-all': 'the snapshot with obligation columns, all rows',
 'span': 'the profiles this profile refers to', 'spanall': 'profiles and base resources it refers to',
 'status': 'the status banner', 'summary': 'the artifact summary',
 'summary-all': 'the artifact summary, all rows', 'summary-table': 'the summary as a table',
 'tx': 'terminology notes, snapshot, all elements',
 'tx-diff': 'terminology notes, differential', 'tx-diff-must-support': 'terminology notes, differential, must-support only',
 'tx-key': 'terminology notes for key elements', 'tx-must-support': 'terminology notes, must-support only',
 'typename': 'the type name', 'uses': 'what uses this structure',
 'validate': 'validation guidance', 'validation': 'the validation result',
 'xml-html': 'the XML, syntax-highlighted',
}
GLOSS_DE = {
 'adl': 'die Elementliste, alle Zeilen', 'adl-all': 'die Elementliste inklusive geerbter Zeilen',
 'class-table': 'das Profil als Klassentabelle', 'contained-index': 'Index der enthaltenen Ressourcen',
 'crumbs': 'die Brotkrumen-Navigation', 'ctxts': 'die Kontexte, in denen eine Extension verwendet werden darf',
 'dict': 'das vollständige Elementverzeichnis', 'dict-active': 'das Verzeichnis, nur Elemente mit max. Kardinalität > 0',
 'dict-diff': 'das Verzeichnis der Differential-Elemente', 'dict-key': 'das Verzeichnis der Schlüsselelemente',
 'dict-ms': 'das Verzeichnis der Must-Support-Elemente', 'diff': 'die Tabelle des Reiters „Differential“',
 'diff-all': 'das Differential inklusive geerbter Zeilen', 'diff-bindings': 'Differential mit Binding-Spalten',
 'diff-bindings-all': 'Differential mit Binding-Spalten, alle Zeilen',
 'diff-obligations': 'Differential mit Obligation-Spalten',
 'diff-obligations-all': 'Differential mit Obligation-Spalten, alle Zeilen',
 'eview': 'die Elementansicht', 'eview-all': 'die Elementansicht, alle Zeilen',
 'expansion': 'die vom Profil verwendeten ValueSet-Expansionen',
 'experimental-warning': 'der Hinweis auf experimentelle Artefakte (leer, wenn nicht experimentell)',
 'grid': 'die Rasteransicht der Struktur', 'header': 'der Kopfbereich zur Identifikation des Artefakts',
 'history': 'Änderungshistorie aus Provenance-Ressourcen (leer, wenn keine vorhanden sind)',
 'html': 'das Narrative der Ressource', 'inv': 'die Übersicht der Invarianten',
 'inv-diff': 'im Differential eingeführte Invarianten', 'inv-key': 'die Schlüssel-Invarianten',
 'ip-statements': 'Angaben zu Schutzrechten', 'json-html': 'das JSON mit Syntaxhervorhebung',
 'json-schema': 'ein JSON Schema für die Struktur', 'maps': 'die Element-Mappings',
 'maturity': 'der Reifegrad-Hinweis', 'obligations': 'die Obligations-Tabelle',
 'obligations-all': 'die Obligations-Tabelle, alle Zeilen', 'other-versions': 'Verweise auf andere Versionen',
 'pseudo-json': 'eine JSON-Schablone des Snapshots', 'pseudo-ttl': 'eine Turtle-Schablone des Snapshots',
 'pseudo-xml': 'eine XML-Schablone des Snapshots', 'sd-changes': 'Änderungen gegenüber der Vorversion',
 'sd-use-context': 'die Verwendungskontexte', 'sd-xref': 'wo diese Struktur referenziert wird',
 'search-params': 'die zutreffenden Suchparameter', 'shex': 'ein ShEx-Schema für die Struktur',
 'snapshot': 'die Tabelle des Reiters „Snapshot“', 'snapshot-all': 'der Snapshot, alle Zeilen',
 'snapshot-bindings': 'der Snapshot mit Binding-Spalten',
 'snapshot-bindings-all': 'der Snapshot mit Binding-Spalten, alle Zeilen',
 'snapshot-by-key': 'der Snapshot nach Schlüssel sortiert', 'snapshot-by-key-all': 'nach Schlüssel sortiert, alle Zeilen',
 'snapshot-by-key-bindings': 'nach Schlüssel sortiert, mit Bindings',
 'snapshot-by-key-bindings-all': 'nach Schlüssel sortiert, mit Bindings, alle Zeilen',
 'snapshot-by-key-obligations': 'nach Schlüssel sortiert, mit Obligations',
 'snapshot-by-key-obligations-all': 'nach Schlüssel sortiert, mit Obligations, alle Zeilen',
 'snapshot-by-mustsupport': 'der Snapshot, auf Must-Support beschränkt',
 'snapshot-by-mustsupport-all': 'Must-Support-Ansicht, alle Zeilen',
 'snapshot-by-mustsupport-bindings': 'Must-Support-Ansicht mit Bindings',
 'snapshot-by-mustsupport-bindings-all': 'Must-Support-Ansicht mit Bindings, alle Zeilen',
 'snapshot-by-mustsupport-obligations': 'Must-Support-Ansicht mit Obligations',
 'snapshot-by-mustsupport-obligations-all': 'Must-Support-Ansicht mit Obligations, alle Zeilen',
 'snapshot-obligations': 'der Snapshot mit Obligation-Spalten',
 'snapshot-obligations-all': 'der Snapshot mit Obligation-Spalten, alle Zeilen',
 'span': 'die Profile, auf die dieses Profil verweist', 'spanall': 'Profile und Basisressourcen, auf die es verweist',
 'status': 'der Status-Hinweis', 'summary': 'die Artefakt-Zusammenfassung',
 'summary-all': 'die Artefakt-Zusammenfassung, alle Zeilen', 'summary-table': 'die Zusammenfassung als Tabelle',
 'tx': 'Terminologie-Hinweise, Snapshot, alle Elemente',
 'tx-diff': 'Terminologie-Hinweise, Differential', 'tx-diff-must-support': 'Terminologie-Hinweise, Differential, nur Must-Support',
 'tx-key': 'Terminologie-Hinweise für Schlüsselelemente', 'tx-must-support': 'Terminologie-Hinweise, nur Must-Support',
 'typename': 'der Typname', 'uses': 'was diese Struktur verwendet',
 'validate': 'Hinweise zur Validierung', 'validation': 'das Validierungsergebnis',
 'xml-html': 'das XML mit Syntaxhervorhebung',
}

SD_PREFIX = 'StructureDefinition-example-patient-'
PT_PREFIX = 'Patient-ExamplePatientInstance-'

# These fragments are generated, but they carry links written relative to the
# artifact page ("patient.html", "formats.html", "help16.png"). Included into a
# narrative page they resolve against the wrong directory and the build reports
# them as broken links. Measured, not assumed: each one was rendered live and
# the resulting page checked against the built site's file list.
NOT_EMBEDDABLE = {
    'search-params': ('links to the base-spec resource pages '
                      '(patient.html, person.html, practitioner.html, …)'),
    'span': 'links to formats.html and the help16.png icon',
    'spanall': 'links to formats.html and the help16.png icon',
    'pseudo-json': ('links every element to a dictionary anchor on the artifact '
                    'page that the artifact page does not define, and carries '
                    'eight binding links whose target is null'),
}
NOT_EMBEDDABLE_DE = {
    'search-params': ('verweist auf die Seiten der Basisspezifikation '
                      '(patient.html, person.html, practitioner.html, …)'),
    'span': 'verweist auf formats.html und das Symbol help16.png',
    'spanall': 'verweist auf formats.html und das Symbol help16.png',
    'pseudo-json': ('verweist für jedes Element auf einen Anker der '
                    'Artefaktseite, den diese nicht definiert, und enthält acht '
                    'Binding-Verweise ohne Ziel'),
}


def catalogue(prefix, codes, gloss, de=False):
    """One <details> per code: the exact include line, then the live rendering.

    Codes listed in NOT_EMBEDDABLE are shown without their rendering.
    """
    warn = NOT_EMBEDDABLE_DE if de else NOT_EMBEDDABLE
    note = ('Nicht eingebettet: dieses Fragment '
            if de else 'Not embedded here: this fragment ')
    tail = ('. Auf der Artefaktseite ist es korrekt; in einer Fließtextseite '
            'lösen die Verweise ins falsche Verzeichnis auf und der Build '
            'meldet defekte Links. Die Include-Zeile ist dennoch gültig.'
            if de else
            '. It is correct on the artifact page; inside a narrative page the '
            'links resolve against the wrong directory and the build reports '
            'them as broken. The include line itself is still valid.')
    out = []
    for c in codes:
        frag = f'{prefix}{c}.xhtml'
        desc = gloss.get(c, '')
        body = (f'<pre><code>{{% raw %}}{{% include {frag} %}}{{% endraw %}}</code></pre>\n\n')
        if c in warn:
            body += f'<p><em>{note}{warn[c]}{tail}</em></p>\n\n'
        else:
            body += f'{{% include {frag} %}}\n\n'
        out.append(
            f'<details>\n'
            f'<summary><code>{c}</code>{(" — " + desc) if desc else ""}</summary>\n\n'
            f'{body}'
            f'</details>\n'
        )
    return '\n'.join(out)


def listy_catalogue(gloss_none):
    out = []
    for name in LISTY:
        out.append(
            f'<details>\n'
            f'<summary><code>{name}</code></summary>\n\n'
            f'<pre><code>{{% raw %}}{{% include {name}.xhtml %}}{{% endraw %}}</code></pre>\n\n'
            f'{{% include {name}.xhtml %}}\n\n'
            f'</details>\n'
        )
    return '\n'.join(out)


def build(lang):
    de = lang == 'de'
    gloss = GLOSS_DE if de else GLOSS_EN
    t = TEXT_DE if de else TEXT_EN
    body = t['body']
    body = body.replace('@@SD_CATALOGUE@@', catalogue(SD_PREFIX, SD, gloss, de))
    body = body.replace('@@PT_CATALOGUE@@', catalogue(PT_PREFIX, PT, gloss, de))
    body = body.replace('@@LIST_CATALOGUE@@', listy_catalogue(None))
    body = body.replace('@@SD_COUNT@@', str(len(SD)))
    body = body.replace('@@PT_COUNT@@', str(len(PT)))
    body = body.replace('@@LIST_COUNT@@', str(len(LISTY)))
    body = body.replace('@@TOTAL@@', str(len(SD) + len(PT) + len(LISTY)))
    return body


TEXT_EN = {'body': open(pathlib.Path(__file__).parent / 'demo-en.md', encoding='utf-8').read()}
TEXT_DE = {'body': open(pathlib.Path(__file__).parent / 'demo-de.md', encoding='utf-8').read()}

if __name__ == '__main__':
    root = pathlib.Path(sys.argv[1])
    (root / 'input/pagecontent/rendering-artifacts.md').write_text(build('en'), encoding='utf-8')
    (root / 'input/translations/de/pagecontent/rendering-artifacts.md').write_text(build('de'), encoding='utf-8')
    print(f'  wrote both pages: {len(SD)} + {len(PT)} + {len(LISTY)} = '
          f'{len(SD)+len(PT)+len(LISTY)} fragment codes')

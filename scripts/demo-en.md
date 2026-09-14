<!-- DEMONSTRATION PAGE — delete it, and its `pages:` entry and menu link, once
     you have taken what you need. It renders THIS scaffold's example profile
     and example instance, so it keeps working until you remove the starter
     artefacts, and then it breaks loudly rather than silently.

     GENERATED. Do not hand-edit: scripts/gen-rendering-demo.py writes both this
     file and its German mirror from one description, so the two cannot drift.

     Every directive below was verified to run without error against
     IG Publisher 2.2.11. Nothing here is Simplifier-specific: FQL does not run
     in an IG-Publisher build. See docs/recipes/render-existing-artifacts.md. -->

The IG Publisher generates a page for every profile, extension, value set and
example in this guide. You do not have to link readers away to them — you can
render the parts that matter **inside** a narrative page, next to the prose that
explains them.

This page shows a working example of **every directive that runs without error
in this scaffold**. Each block gives the source line first, then what it
produces. Copy the line, change the artifact name, delete the page.

<div class="ig-highlight ig-highlight-blue">
<h5>What this page is</h5>
A live demonstration shipped with the module scaffold. Read the source of this
page next to the rendering, copy what you need, then delete the page.
<strong>The step-by-step version is</strong>
<a href="https://github.com/{{GITHUB_ORG}}/{{REPO_NAME}}/blob/main/docs/recipes/render-existing-artifacts.md"><code>docs/recipes/render-existing-artifacts.md</code></a> in this repository. It lists every file to remove when you delete
this page.
</div>

### 1. Include a generated fragment

During the build the Publisher writes a set of small HTML files — *fragments* —
for every artifact in the guide. The artifact pages you already see are built
from them, and any narrative page can include the same ones.

The name is always `<ResourceType>-<Id>-<code>.xhtml`, built from the artifact's
`Id:`, not from its FSH `Profile:` name. This scaffold's example profile has
`Id: example-patient`, so its element dictionary is:

<pre><code>{% raw %}{% include StructureDefinition-example-patient-dict-key.xhtml %}{% endraw %}</code></pre>

{% include StructureDefinition-example-patient-dict-key.xhtml %}

**This build emits @@TOTAL@@ fragment codes for this scaffold's two artifacts.**
There is no published list that matches — the
[IG Publisher documentation](https://confluence.hl7.org/spaces/FHIR/pages/35718627/IG+Publisher+Documentation)
says so itself, above its own list: *"Note: as of July 2023, this list is not
comprehensive."* The catalogue below was taken from the build, not from a
document, and each entry is live. Open one to see its include line and its
rendering.

Some are deliberately empty — `history` has nothing to show without Provenance
resources, `experimental-warning` nothing unless the artifact is experimental.
An empty fragment is not an error.

Four of the 96 are listed with their include line but *without* their
rendering. `search-params`, `span`, `spanall` and `pseudo-json` link to targets that only
exist in the artifact-page context — the base-spec pages, `formats.html`, or
anchors the artifact page defines for itself. Embedded in a narrative page
those do not resolve, and the build reports each as a broken link. This is worth knowing
generally: a fragment being generated does not guarantee it can be embedded
anywhere. If your QA report gains broken links after you include one, this is
why.

#### The example profile — @@SD_COUNT@@ codes

@@SD_CATALOGUE@@

#### The example instance — @@PT_COUNT@@ codes

Instances get a much smaller set: the views that only make sense for a
*definition* (snapshot, differential, dictionary, invariants) do not exist here.

@@PT_CATALOGUE@@

#### Cross-artifact lists — @@LIST_COUNT@@ forms

These are generated per profile rather than per view, and list the examples,
test plans and test scripts attached to it.

@@LIST_CATALOGUE@@

### 2. Embed part of an example instance

The <code>{%! fragment %}</code> tag renders an instance held in this guide and
can narrow it with FHIRPath, so the reader sees only the element under
discussion — useful when an example is long and one field is the point.

The syntax is `[ResourceType]/[id] [format] [filters]`. The format must be one
of `json`, `xml`, `ttl` or `fml`; anything else is an error. The id is the
instance id, and the resource must exist in this guide.

<pre><code>{%! fragment Patient/ExamplePatientInstance JSON BASE:name %}</code></pre>

{% fragment Patient/ExamplePatientInstance JSON BASE:name %}

The same subtree as XML:

<pre><code>{%! fragment Patient/ExamplePatientInstance XML BASE:name %}</code></pre>

{% fragment Patient/ExamplePatientInstance XML BASE:name %}

`ttl` and `fml` are accepted by the same check, but neither is demonstrated
here. `ttl` parses and then does not render: the Publisher writes its internal
object into the page —

```
org.hl7.fhir.utilities.turtle.Turtle@7d4f6072
```

— with no error, no warning and no broken link, so nothing but reading the page
catches it. `fml` applies to StructureMaps, and this scaffold has none. Use
`json` or `xml`.

Without a filter you get the whole instance. `ELIDE:` replaces a named element
with `...` instead of removing it, which keeps the shape of the resource visible
while hiding detail:

<pre><code>{%! fragment Patient/ExamplePatientInstance JSON ELIDE:meta %}</code></pre>

{% fragment Patient/ExamplePatientInstance JSON ELIDE:meta %}

There are three filters in total. `BASE:` selects the subtree to show — only one
per fragment. `ELIDE:` replaces an element with `...`, and may be repeated.
`EXCEPT:` keeps a named element inside something otherwise elided, and may carry
its own `BASE:`.

### 3. Query this guide's own artifacts

During the build the Publisher writes `package.db`, a SQLite database of the
guide's own content. Any page can query it and render the result as a table —
this is the IG-Publisher answer to a cross-artifact query:

<pre><code>{%! sql select Name, Description from Resources order by Name %}</code></pre>

{% sql select Name, Description from Resources order by Name %}

`Resources` is the table you will use most. Its columns include `Key`, `Type`,
`Id`, `Web`, `Url`, `Version`, `Status`, `Date`, `Name`, `Title`, `Description`,
`Purpose`, `Copyright`, `Realm`, `derivation` and `kind`. Other tables hold
concepts, designations, extension usage and package metadata. The schema is not
stable between Publisher releases, so open `package.db` from your own build with
any SQLite client and look before relying on a column.

A JSON form of the same tag controls the column titles, the CSS class and how
each column is rendered — `link`, `markdown`, `canonical`, `resource` and
others:

<pre><code>{%! sql {
  "query" : "select Name, Description, Web from Resources order by Name",
  "class" : "lines",
  "columns" : [
    { "name" : "Name", "type" : "link", "source" : "Name", "target" : "Web" },
    { "name" : "Description", "type" : "markdown", "source" : "Description" }
  ]
} %}</code></pre>

{% sql {
  "query" : "select Name, Description, Web from Resources order by Name",
  "class" : "lines",
  "columns" : [
    { "name" : "Name", "type" : "link", "source" : "Name", "target" : "Web" },
    { "name" : "Description", "type" : "markdown", "source" : "Description" }
  ]
} %}

### 4. Query into a variable instead of a table

`sqlToData` runs the same query but hands you the rows instead of rendering
them, so you can lay them out yourself. The first argument names the variable —
the rows also land in `_data/<name>.json` and are reachable as
`site.data.<name>`:

<pre><code>{%! sqlToData artifactCount
  select count(*) as n from Resources
%}</code></pre>

{% sqlToData artifactCount
  select count(*) as n from Resources
%}

This guide contains {{ artifactCount[0].n }} resources. That number came from
the query above, written as <code>{% raw %}{{ artifactCount[0].n }}{% endraw %}</code>.

Because the result is an ordinary Liquid array, you can loop over it:

<pre><code>{%! sqlToData profileList
  select Name, Web from Resources where Type = 'StructureDefinition' order by Name
%}</code></pre>

{% sqlToData profileList
  select Name, Web from Resources where Type = 'StructureDefinition' order by Name
%}

<ul>
{% for p in profileList %}<li><a href="{{ p.Web }}">{{ p.Name }}</a></li>
{% endfor %}</ul>

### 5. Render a JSON file through a template

The <code>{%! json %}</code> tag reads any JSON file in the repository and
renders it through a Liquid template you write. Both paths are relative to the
repository root — the directory holding `ig.ini`. It was built for documenting
test cases, but it works for any JSON you keep alongside the guide.

Here it renders this repository's own `publication-request.json`, the file that
drives formal publication:

<pre><code>{%! json publication-request.json demo/rendering-artifacts.liquid %}</code></pre>

{% json publication-request.json demo/rendering-artifacts.liquid %}

The template is five lines and lives at `demo/rendering-artifacts.liquid`.
Delete it together with this page.

### 6. Include the reader's own language

This scaffold is bilingual, and the Publisher writes a `-en` and a `-de` variant
of every fragment. <code>{%! lang-fragment %}</code> picks the one matching the
page being rendered, so a single line serves both languages:

<pre><code>{%! lang-fragment StructureDefinition-example-patient-summary.xhtml %}</code></pre>

{% lang-fragment StructureDefinition-example-patient-summary.xhtml %}

On the English page that resolves to
`StructureDefinition-example-patient-summary-en.xhtml`, on the German page to
`-de`. Use this rather than a plain `include` whenever the fragment contains
prose, otherwise a German reader gets English tables.

### 7. Link to an artifact by name

Triple brackets auto-link an artifact without you writing the URL. Inside go a
resource **name**, a canonical URL, or a FHIR type name:

<pre><code>The profile [[[ExamplePatient]]] constrains [[[Patient]]].</code></pre>

The profile [[[ExamplePatient]]] constrains [[[Patient]]].

The match is on the artifact's `name`, case-insensitively — `ExamplePatient`
here, which is the FSH `Profile:` name, *not* the `Id:` used for fragments. A
name that resolves to nothing is left in the page as `[[~[…]]]`, which is easy
to grep for and does not fail the build.

### 8. Directives with no example here

Four of the Publisher's keywords are not demonstrated above, for reasons worth
knowing before you reach for them.

| Directive | Why there is no example | What it would need |
| --- | --- | --- |
| `{%! uml %}` | **It is broken.** The keyword is registered but has no implementation behind it, so it writes `Error processing command: Internal Error - unknown keyword uml` into your page while the build still reports success | Use `class-diagram` instead |
| `{%! class-diagram %}` | Needs an `input/diagrams/` directory and a logical model to draw; this scaffold has neither | A logical model, plus Graphviz on the build machine |
| `{%! multi-map %}` | Needs a source ValueSet and ConceptMaps to scan; this scaffold defines no terminology | A ValueSet and at least one ConceptMap |
| `{%! dataset %}` | Needs a dataset registered through an IG parameter; without one it throws `Unable to find dataset` | A dataset declared in `sushi-config.yaml` |

Add the artifact each one needs and the directive starts working — none of them
is deprecated. The recipe explains where each is documented, and which are
documented at all.

<div class="ig-highlight ig-highlight-green">
<h5>Showing a directive without running it</h5>
Two escapes appear above, because two engines run in sequence. The Publisher's
own Liquid pass runs <em>before</em> Jekyll and claims eight keywords:
<code>sql</code>, <code>fragment</code>, <code>json</code>,
<code>class-diagram</code>, <code>uml</code>, <code>multi-map</code>,
<code>lang-fragment</code> and <code>dataset</code>. To show one of those
without running it, add an exclamation mark — <code>{%! sql … %}</code>. The
Publisher turns that into a literal itself. Wrapping it in
<code>{% raw %}{% raw %}{% endraw %}</code> does <em>not</em> work, because the
Publisher's pass runs first and does not know what <code>raw</code> means; the
directive executes and its error is written into the page while the build still
reports success.
<br><br>
For a plain Jekyll tag such as <code>{% raw %}{% include %}{% endraw %}</code>
it is the other way round: the Publisher never looks at it, so
<code>{% raw %}{% raw %}{% endraw %}</code> is the correct escape — and the
exclamation mark is a build error, because the Publisher leaves it alone and
Jekyll cannot parse it.
</div>

<div class="ig-highlight ig-highlight-green">
<h5>Before you rely on any of this</h5>
The three families in sections 1 to 3 are documented and stable. Several
neighbouring mechanisms are not — some are implemented but appear in no
documentation, and one is documented but does not run. The recipe lists which is
which, with the primary source for each.
</div>

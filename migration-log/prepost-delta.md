# Pre/post delta — the two ig-stats measurements compared

| Side | Measurement |
|---|---|
| pre | preflight-analysis.json (mii-ig-bildgebung, eaeed9a, 2026-08-27T16:44:28Z) |
| post | postflight-analysis.json (mii-ig-bildgebung, 4e0a34f, 2026-08-27T17:46:28Z) |

Verdicts: **unchanged** 23 · **improved** 1 · **expected-change** 6 · **REGRESSION** 2 · **not-measurable** 2.

## ⛔ Regressions — properties that got WORSE

Each one blocks the migration until it is fixed or explained; an explanation belongs in the migration report, not in a merge commit.

- **`licence.contradictory`**: `false` → `true` — the target now declares CONTRADICTORY licences (the target declares: cc-by-4.0, creativecommons) -- one file will be read as the licence by someone, and it will be the wrong one
- **`narrative_sources.dual_source`**: `false` → `true` — the migration introduced a SECOND narrative source tree -- two trees is how the wrong one gets edited

## Identity

| Property | Pre | Post | Verdict | Why |
|---|---|---|---|---|
| `identity.id` | mii-ig-bildgebung | mii-ig-bildgebung | unchanged |  |
| `identity.canonical` | https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung | https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung | unchanged |  |
| `identity.packageId` | de.medizininformatikinitiative.kerndatensatz.bildgebung | de.medizininformatikinitiative.kerndatensatz.bildgebung | unchanged |  |
| `identity.name` | MII_IG_Bildgebung | MII_IG_Bildgebung | unchanged |  |
| `identity.version` | 2027.0.0-ballot | 2027.0.0-ballot | unchanged |  |
| `identity.fhirVersion` | 4.0.1 | 4.0.1 | unchanged |  |
| `identity.license` | - | CC-BY-4.0 | not-measurable | the field is absent from the pre measurement |
| `identity.calver` | true | true | unchanged |  |
| `identity.publisher` | Medizininformatik Initiative | Medizininformatik Initiative | unchanged |  |
| `identity.status` | active | active | unchanged |  |
| `identity.title` | - | MII IG Kerndatensatz-Modul Bildgebung | not-measurable | the field is absent from the pre measurement |

## Preflight flags

| Property | Pre | Post | Verdict | Why |
|---|---|---|---|---|
| `licence.contradictory` | false | true | **REGRESSION** | the target now declares CONTRADICTORY licences (the target declares: cc-by-4.0, creativecommons) -- one file will be read as the licence by someone, and it will be the wrong one |
| `dependency_health.injection_risk` | true | false | improved | the dependency-injection risk the source carried is cleared |
| `narrative_sources.dual_source` | false | true | **REGRESSION** | the migration introduced a SECOND narrative source tree -- two trees is how the wrong one gets edited |

## Artefact counts

| Property | Pre | Post | Verdict | Why |
|---|---|---|---|---|
| `mode` | static | static | unchanged |  |
| `artifacts.profiles` | 12 | 12 | unchanged |  |
| `artifacts.extensions` | 14 | 14 | unchanged |  |
| `artifacts.valuesets` | 21 | 21 | unchanged |  |
| `artifacts.codesystems` | 5 | 5 | unchanged |  |
| `artifacts.logicals` | 1 | 1 | unchanged |  |
| `artifacts.capabilitystatements` | 1 | 1 | unchanged |  |
| `artifacts.questionnaires` | 0 | 0 | unchanged |  |
| `artifacts.searchparameters` | 0 | 0 | unchanged |  |
| `artifacts.operations` | 0 | 0 | unchanged |  |
| `artifacts.examples` | 18 | 19 | expected-change | the count rose by 1 -- artefacts added by the migration; the report names what and why |
| `artifacts.rulesets` | 24 | 55 | expected-change | the count rose by 31 -- artefacts added by the migration; the report names what and why |
| `artifacts.invariants` | 0 | 0 | unchanged |  |
| `artifacts.mappings` | 2 | 2 | unchanged |  |
| `artifacts.other_total` | 0 | 0 | unchanged |  |
| `artifacts.total` | 72 | 73 | expected-change | the total rose by 1 -- consistent with the per-class rises above |

## Narrative pages

| Property | Pre | Post | Verdict | Why |
|---|---|---|---|---|
| `narrative.pages` | 118 | 136 | expected-change | narrative routing (spec 9d/9e) moves pages between pagecontent, intro-notes and translations -- conservation of the CONTENT is checked by the verifier against page-map.tsv |
| `narrative.intro_note_pages` | 0 | 26 | expected-change | narrative routing (spec 9d/9e) moves pages between pagecontent, intro-notes and translations -- conservation of the CONTENT is checked by the verifier against page-map.tsv |
| `narrative.translation_pages` | 0 | 18 | expected-change | narrative routing (spec 9d/9e) moves pages between pagecontent, intro-notes and translations -- conservation of the CONTENT is checked by the verifier against page-map.tsv |

## Directives

| Property | Pre | Post | Verdict | Why |
|---|---|---|---|---|
| `directives.total` | 1426 | 1426 | unchanged |  |


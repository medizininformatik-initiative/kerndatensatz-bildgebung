# Concepts — how this module template works and why

Read this after the [Glossary](glossary.md). It explains the ideas behind this
repository.

## 1. What this repository is

This is a **GitHub template repository**: click **"Use this template"** and you get
a fresh copy that is a ready-to-run MII KDS **module IG** project. You then replace
the `{{…}}` placeholders with your module's details, and you have a buildable,
MII-branded FHIR Implementation Guide.

> **Why a template repository, not a library:** an IG project is *your* code — you
> edit its profiles and pages. A template gives you a correct, complete starting
> point (CI, release automation, docs, an example profile) that you then own,
> instead of assembling it from scratch.

## 2. How it references the MII template — vendored vs published

The **look** of the IG comes from a separate template package,
[`de.medizininformatikinitiative.template`](https://github.com/forschungsgruppe-digital-health/ig-template-mii-kds)
This scaffold references it in `ig.ini`:

- **Vendored (bring-up):** a copy lives in `ig-template/`, referenced as
  `template = #ig-template`. Used until the template package has a published release.
- **Published (normal):** `template = de.medizininformatikinitiative.template#<version>`.
  Switch with [recipes/switch-template-to-published.md](recipes/switch-template-to-published.md).

> **Why vendored first:** the template package has no registry entry yet. Vendoring
> keeps the module buildable today; the switch is one line later.

## 3. The metadata contract (CRMI)

`sushi-config.yaml` is not just config — it is a **contract**. It claims the CRMI
ImplementationGuide profiles and carries the same `artifact-*` extensions as the
reference module kerndatensatz-basis, so the module is a properly described,
versioned, shareable publication unit. The `convention-check` job enforces the
naming patterns (packageId, id, name, title, canonical, CalVer version). Fill
every `{{PLACEHOLDER}}`; the comments in the file tell you what each one means.

## 4. Two layers you must not confuse

The single most important idea for a maintainer: **this template repository
releases itself with SemVer; a module you create releases itself with CalVer and
carries no Release Please at all.** [workflows.md](workflows.md) sets the two
layers side by side; the [first-run bootstrap](recipes/first-run-setup.md) is
what enforces the separation.

> **Why one mechanism per repo:** SemVer tags fighting CalVer tags corrupt the
> version history.

## 5. What propagates to a module, and what does not

The bootstrap **keeps** everything a module needs to live and **removes** only
the files that maintain *this template repo itself*. The authoritative list is
the `REMOVE=` line in `scripts/first-run-bootstrap.sh`, which the dry run
prints; the first-run tooling itself stays, so the recipe a module links to
still resolves — see [first-run-setup.md](recipes/first-run-setup.md).

> **Why previews propagate but Release Please does not:** a branch preview is a
> per-repo development aid every module wants; Release Please is a versioning
> authority that would conflict with the module's CalVer process. Different purpose,
> different fate.

The **page set and the menu** propagate too, and they stay the module's to edit —
the IG template supplies presentation only. The mandatory (1..1) entries follow
the MII-agreed menu structure; the optional (0..1) entries are decided per
module ([optional-pages.md](optional-pages.md)). See
[page-structure.md](page-structure.md) for that boundary and why it was drawn
there.

## 6. Registries, publication and governance

A finished module is published as a FHIR package and a website (GitHub Pages under
the creating org; the canonical stays the MII URL). Production publication runs
through the **gated** `-go-publish` — never automatically. The naming, terminology
policy and release process are defined in the
[MII meta wiki](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki);
when it and this repo disagree, the wiki wins. See [further-reading.md](further-reading.md).

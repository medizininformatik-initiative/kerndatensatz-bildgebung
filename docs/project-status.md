# Project status — PROTOTYPE (not yet an MII-endorsed artifact)

**Status: PROTOTYPE.** This repository and its companion IG template
[`ig-template-mii-kds`](https://github.com/forschungsgruppe-digital-health/ig-template-mii-kds)
are prototypes, to be discussed in the **MII Taskforce Kerndatensatz (TF KDS)**.
They are fully functional and released — [`CHANGELOG.md`](../CHANGELOG.md) names
the current version — but their governance is not settled yet.

## What this means in practice

| Question | Current answer |
| --- | --- |
| Is the template registered in [`FHIR/ig-registry`](https://github.com/FHIR/ig-registry)? | **No — and it must not be**, until the maintainer explicitly says so. |
| Is the package published to a FHIR package registry? | **No.** Modules consume the template as a vendored folder (`ig-template/`, kept current automatically — see `scripts/sync-ig-template.sh` in this repo). |
| Which GitHub organisation will own these repos? | **`medizininformatik-initiative`** is the agreed TARGET organisation. Canonical URLs and package ids already name it; navigation links point at the current organisation so they resolve today, and are swept to the target organisation in one tracked pass at transfer time. |
| Have they moved yet? | **No.** They still live in the pre-move organisation; the transfer happens on an explicit decision. Until then some links here point at the future location, and CI bridges the gap via the `IG_TEMPLATE_REPO_URL` repository variable (module template) — remove it after the move. |
| What happens at the move? | The one-pass link sweep plus the file deletions and edits listed in [migration cleanup](migration-cleanup.md). |
| Who owns the template after 2026? | **The MII**, for now. Revisit with the TF KDS. |

> **Why registration is deliberately deferred:** an `ig-registry` entry and a
> package-registry release are *public, hard-to-retract commitments* that imply
> an owner and a support promise. While the approach is still a proposal to the
> TF KDS, keeping it unregistered lets the design change freely without stranding
> consumers or squatting an identifier.

> The concrete backlog — what is unfinished and what is waiting on a
> decision — lives in the [issue tracker](../../../issues); recorded limits
> and decided non-fixes are in [maintenance.md](maintenance.md).

## What is NOT blocked by this

Everything about developing and reviewing the templates works today: builds,
bilingual previews, releases (SemVer here, CalVer in modules), the vendored
template flow, and creating a module from the module template.

## Branch state — `main` and `dev` are reconciled

[CONTRIBUTING.md](../CONTRIBUTING.md) describes the intended flow: work lands on
`dev` via a short-lived branch, and `main` receives it as a `dev → main` merge
commit. **That is the rule, and for a while it is not what the history showed.**
While the repository was being brought up, several fixes and one feature were
merged straight into `main` as pull requests of their own, alongside the Release
Please release commits that legitimately land there. `dev`, meanwhile, kept
accumulating its own work, and the two branches ended up ahead of each other in
both directions.

**As of 2026-08-06 that is repaired:** `main` was back-merged into `dev` (the
IG-level translation catalogue and its substitute-and-rename handling in CI, the
structure-tabs include, the Pages demo link and the release commits), the
overlapping edits were reconciled by hand, and `dev` was promoted to `main`. Both
branches point at the same commit.

Check the state before you branch — both commands should print nothing:

```sh
git fetch origin
git log --oneline origin/main..origin/dev   # on dev, not yet on main
git log --oneline origin/dev..origin/main   # on main, not yet on dev
```

### The back-merge rule

**Whenever anything lands on `main` without coming through `dev`, `main` must be
merged back into `dev` before the next `dev → main` release merge.**

```sh
git checkout dev
git merge origin/main       # resolve conflicts here, once
git push origin dev
```

Doing this in a pull request is preferable, so CI runs on the merged result.
The reason is mechanical: `dev → main` is a merge commit, so a `main`-only commit
that was never back-merged shows up as a conflict — or, worse, is quietly
reverted — the next time `dev` is merged forward. Back-merge each time it
happens; letting it accumulate is what produced the 2026-08 divergence above.

> **How to avoid repeating this:** target `dev` with every pull request. A direct
> `main` pull request is only for a fix that must ship before the next release —
> and it is not finished until it has been back-merged.

## When the status changes

Only on an explicit decision by the maintainer. At that point:

1. Register the template in `FHIR/ig-registry` (`templates.json`) and name the
   owner.
2. Publish the package so modules can switch from the vendored folder to a
   pinned package reference (see
   `docs/recipes/switch-template-to-published.md`).
3. Update this file.

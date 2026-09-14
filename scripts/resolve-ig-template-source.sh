#!/usr/bin/env bash
# resolve-ig-template-source.sh — decide whether the IG template source can be
# reached before sync-ig-template.yml tries to clone it.
#
# WHY THIS EXISTS
#   The vendored-template drift check runs on every PR to dev. It reads the
#   source repository from the `IG_TEMPLATE_REPO_URL` repository VARIABLE, which
#   exists only while the two template repositories still live outside the
#   target organisation. A module created from this template inherits the
#   workflow but not the variable, so scripts/sync-ig-template.sh falls back to
#   the target-org URL — which exists only as an empty placeholder — and the module's very first
#   PR goes red for a reason its author cannot act on.
#
#   This script probes the URL instead and reports the outcome, so the workflow
#   can skip with a ::notice rather than fail. Once the repositories have moved,
#   the default URL resolves, the probe succeeds everywhere, and the variable
#   can be deleted.
#
# USAGE
#   SRC_REPO=<url> bash scripts/resolve-ig-template-source.sh
#     SRC_REPO   optional; empty falls back to the target-organisation URL
#   Writes `url=` and `reachable=true|false` to ${GITHUB_OUTPUT} when set, and
#   prints the same values otherwise.
set -euo pipefail

DEFAULT_URL="https://github.com/medizininformatik-initiative/ig-template-mii-kds.git"
url="${SRC_REPO:-}"
if [ -z "${url}" ]; then
  url="${DEFAULT_URL}"
  from="the built-in default"
else
  from="the IG_TEMPLATE_REPO_URL repository variable"
fi

reachable=false
# Never let git open a credential prompt — an unreachable or private URL must
# fail fast here, not hang the job waiting for input.
export GIT_TERMINAL_PROMPT=0
# `git ls-remote --heads` exits 0 on an EMPTY repository (the target-org repos
# exist as empty placeholders since 2026-07), so the exit status alone is not
# enough: require at least one ref, because an empty repo is not a usable
# template source and the sync would die at `git rev-parse HEAD`.
if [ -n "$(git ls-remote --heads "${url}" 2>/dev/null)" ]; then
  reachable=true
  echo "Template source (${from}): ${url}"
else
  echo "::notice::The IG template source ${url} (${from}) is not reachable — skipping the vendored-template sync. Set the repository variable IG_TEMPLATE_REPO_URL to the ig-template-mii-kds clone URL, or drop this workflow once ig.ini uses the published template package (docs/recipes/switch-template-to-published.md)."
fi

if [ -n "${GITHUB_OUTPUT:-}" ]; then
  {
    printf 'url=%s\n' "${url}"
    printf 'reachable=%s\n' "${reachable}"
  } >> "${GITHUB_OUTPUT}"
else
  printf 'url=%s\nreachable=%s\n' "${url}" "${reachable}"
fi

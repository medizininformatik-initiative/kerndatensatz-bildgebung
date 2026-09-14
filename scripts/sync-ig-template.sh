#!/usr/bin/env bash
# sync-ig-template.sh — re-vendor the MII IG template into ig-template/.
#
# WHY THIS EXISTS
#   During development the module IG must always build against the CURRENT MII IG
#   template from `ig-template-mii-kds`. The published package
#   `de.medizininformatikinitiative.template` is not on a FHIR package registry
#   yet, so `ig.ini` points at the local folder (`template = #ig-template`) and
#   that folder is a VENDORED MIRROR. A mirror goes stale silently — this script
#   (and the scheduled workflow that runs it) keeps it in step with the source of
#   truth, and CI fails/opens a PR when it drifts.
#
# USAGE
#   scripts/sync-ig-template.sh [--ref <git-ref>] [--check]
#     --ref <git-ref>  branch/tag/SHA of ig-template-mii-kds to vendor (default: dev)
#     --check          do not write; exit 1 if ig-template/ differs from the source
#
# Once the template package is published to a registry, switch ig.ini to the
# pinned package and delete ig-template/ + this script
# (see docs/recipes/switch-template-to-published.md).
set -euo pipefail

# Source of the template. Defaults to the TARGET organisation; override with the
# SRC_REPO env var (CI passes the `IG_TEMPLATE_REPO_URL` repository variable when
# set) — needed while the repositories still live in their pre-move organisation.
SRC_REPO="${SRC_REPO:-https://github.com/medizininformatik-initiative/ig-template-mii-kds.git}"
REF="dev"
CHECK_ONLY="false"
while [ $# -gt 0 ]; do
  case "$1" in
    --ref)   REF="${2:?--ref needs a value}"; shift 2 ;;
    --check) CHECK_ONLY="true"; shift ;;
    -h|--help) sed -n '2,22p' "$0"; exit 0 ;;
    *) echo "unknown argument: $1" >&2; exit 2 ;;
  esac
done

# The template package content the IG Publisher consumes. `translations/` carries
# the vendored German UI-string catalogs, so it MUST be synced too.
PARTS=(package includes content translations)

repo_root="$(cd "$(dirname "$0")/.." && pwd)"
tmp="$(mktemp -d)"
trap 'rm -rf "${tmp}"' EXIT

echo "Fetching ${SRC_REPO} @ ${REF} ..."
git clone --quiet --depth 1 --branch "${REF}" "${SRC_REPO}" "${tmp}/src" 2>/dev/null \
  || git clone --quiet "${SRC_REPO}" "${tmp}/src"
( cd "${tmp}/src" && git checkout --quiet "${REF}" 2>/dev/null || true )
src_sha="$(cd "${tmp}/src" && git rev-parse HEAD)"
src_ver="$(python3 -c "import json;print(json.load(open('${tmp}/src/package/package.json'))['version'])" 2>/dev/null || echo unknown)"

# Stage the new vendored tree.
mkdir -p "${tmp}/new"
for p in "${PARTS[@]}"; do
  [ -e "${tmp}/src/${p}" ] && cp -R "${tmp}/src/${p}" "${tmp}/new/${p}"
done
cat > "${tmp}/new/README.md" <<EOF
# \`ig-template/\` — vendored IG template (development mirror)

A **vendored mirror** of the MII IG-Publisher template package
\`de.medizininformatikinitiative.template\` (version \`${src_ver}\`), copied from
<${SRC_REPO%.git}>
at commit \`${src_sha}\`.

**Do not edit these files here.** The single source of truth is the
\`ig-template-mii-kds\` repository; local edits would silently drift and be
overwritten by the next sync.

## Why a mirror, and how it stays current

The template package is not published to a FHIR package registry yet, so
\`ig.ini\` references it as a local folder (\`template = #ig-template\`). To make
sure the IG always builds against the CURRENT template during development, the
mirror is refreshed by \`scripts/sync-ig-template.sh\`:

- \`scripts/sync-ig-template.sh\` — re-vendor from \`dev\` (default).
- \`scripts/sync-ig-template.sh --check\` — fail if the mirror has drifted (run in CI).
- \`.github/workflows/sync-ig-template.yml\` — scheduled + manual; opens a PR when
  the template repo has moved on.

Once the package is published to a registry, switch \`ig.ini\` to the pinned
package and delete this folder — see
[\`docs/recipes/switch-template-to-published.md\`](../docs/recipes/switch-template-to-published.md).
EOF

if [ "${CHECK_ONLY}" = "true" ]; then
  if diff -r --exclude=README.md "${tmp}/new" "${repo_root}/ig-template" >/dev/null 2>&1; then
    echo "ig-template/ is in sync with ${REF} (${src_sha})."
    exit 0
  fi
  echo "::error::ig-template/ has DRIFTED from ${SRC_REPO}@${REF} (${src_sha})."
  diff -r --exclude=README.md "${tmp}/new" "${repo_root}/ig-template" | head -40 || true
  echo "Run scripts/sync-ig-template.sh to refresh it."
  exit 1
fi

rm -rf "${repo_root}/ig-template"
mv "${tmp}/new" "${repo_root}/ig-template"
echo "Vendored ${SRC_REPO}@${REF} (${src_sha}, package ${src_ver}) into ig-template/."

#!/usr/bin/env bash
# sync-skills.sh — re-vendor the catalog skills into skills/.
#
# WHY THIS EXISTS
#   `fhir-ig-analysis` and `fhir-ig-translation` used to live in this repo; they
#   now live in the organization's skill catalog
#   `forschungsgruppe-digital-health/agent-skills`, which is their single source
#   of truth (skills/RETIRED.md records the move). An agent can only invoke a
#   skill that is present on disk, and "Use this template" copies tracked files
#   but fetches nothing — so a module created from this template would lose both
#   skills if this repo only pointed at the catalog. They are therefore VENDORED:
#   a pinned copy in skills/, refreshed by this script (and the scheduled
#   workflow that runs it), with CI failing when the copy drifts from the pin.
#   Same shape as scripts/sync-ig-template.sh, deliberately: one vendoring idiom
#   in this repository, not two.
#
#   The vendoring is done by the catalog's OWN documented installer
#   (`npx skills add …/tree/<ref> --copy`), not by a bespoke copy: the installer
#   writes the pin, the source and a content hash into skills-lock.json, which is
#   what makes the pin machine-checkable here and in scripts/check-updates.mjs.
#
# USAGE
#   scripts/sync-skills.sh [--ref <git-ref>] [--check] [--probe]
#     --ref <git-ref>  catalog tag/branch/SHA to vendor (default: the ref
#                      recorded in skills-lock.json). Passing a NEWER tag is how
#                      the pin is bumped — the installer rewrites the lock file.
#     --check          do not write; exit 1 if skills/ differs from the pin
#     --probe          only report whether the catalog is reachable (CI helper;
#                      writes reachable=true|false to ${GITHUB_OUTPUT})
#
# THE PIN LIVES IN skills-lock.json — never in this script. Bump it with
#   scripts/sync-skills.sh --ref vX.Y.Z
# and commit the resulting diff (docs/maintenance.md, "Where each pin lives").
set -euo pipefail

# The catalog. Overridable for a fork; there is no pending org move here.
CATALOG_REPO="${CATALOG_REPO:-forschungsgruppe-digital-health/agent-skills}"
CATALOG_URL="https://github.com/${CATALOG_REPO}"
# The installer CLI is pinned too: an unpinned `npx skills` would let a new CLI
# release change the vendored bytes and turn the drift check red for a reason
# that has nothing to do with the catalog.
SKILLS_CLI="skills@1.5.22"

REF=""
MODE="write"
while [ $# -gt 0 ]; do
  case "$1" in
    --ref)   REF="${2:?--ref needs a value}"; shift 2 ;;
    --check) MODE="check"; shift ;;
    --probe) MODE="probe"; shift ;;
    -h|--help) sed -n '2,33p' "$0"; exit 0 ;;
    *) echo "unknown argument: $1" >&2; exit 2 ;;
  esac
done

repo_root="$(cd "$(dirname "$0")/.." && pwd)"
lock="${repo_root}/skills-lock.json"

# --probe: is the catalog reachable? Mirrors resolve-ig-template-source.sh, so a
# transient GitHub outage makes the drift check SKIP with a ::notice instead of
# failing a pull request for a reason its author cannot act on.
if [ "${MODE}" = "probe" ]; then
  export GIT_TERMINAL_PROMPT=0
  reachable=false
  if [ -n "$(git ls-remote --heads "${CATALOG_URL}.git" 2>/dev/null)" ]; then
    reachable=true
    echo "Skill catalog: ${CATALOG_URL}"
  else
    echo "::notice::The skill catalog ${CATALOG_URL} is not reachable — skipping the vendored-skills sync. The vendored copies in skills/ are unaffected; they are committed files."
  fi
  if [ -n "${GITHUB_OUTPUT:-}" ]; then
    printf 'reachable=%s\n' "${reachable}" >> "${GITHUB_OUTPUT}"
  else
    printf 'reachable=%s\n' "${reachable}"
  fi
  exit 0
fi

[ -f "${lock}" ] || { echo "ERROR: ${lock} not found — it carries the pin and the list of vendored skills." >&2; exit 1; }

# Read the pin and the vendored skill list OUT OF THE LOCK FILE, so this script
# is never a second list to keep in sync. Only entries whose source is the
# catalog count; a lock written from another source is not this script's job.
read_lock() {
  python3 - "$1" "$2" <<'PY'
import json, sys
lock, catalog = sys.argv[1], sys.argv[2]
data = json.load(open(lock))
entries = {k: v for k, v in (data.get("skills") or {}).items() if v.get("source") == catalog}
if not entries:
    sys.exit(f"ERROR: no skill in {lock} comes from {catalog}.")
refs = {v.get("ref") for v in entries.values()}
if len(refs) != 1:
    sys.exit(f"ERROR: {lock} pins {sorted(refs)} — the vendored skills must share one ref.")
print(refs.pop())
print(" ".join(sorted(entries)))
PY
}

lock_out="$(read_lock "${lock}" "${CATALOG_REPO}")"
lock_ref="$(printf '%s\n' "${lock_out}" | sed -n 1p)"
skills_list="$(printf '%s\n' "${lock_out}" | sed -n 2p)"
[ -n "${REF}" ] || REF="${lock_ref}"

# shellcheck disable=SC2206 # deliberate word splitting: a space-separated list
SKILLS=(${skills_list})

# `owner/repo@<tag>` does NOT pin — in this CLI `@` introduces a skill NAME and
# the install silently comes from the default branch. Only the /tree/<ref> form
# pins. (Catalog docs/consuming-skills.md, "Pin a ref".)
SOURCE="${CATALOG_URL}/tree/${REF}"

command -v npx >/dev/null 2>&1 || { echo "ERROR: 'npx' not found — install Node.js 22+ (the installer is an npm CLI)." >&2; exit 1; }

install_into() {
  # $1 = directory to install into. --copy is mandatory: the default install
  # symlinks the files out of a canonical cache, which cannot be committed.
  ( cd "$1" && npx --yes "${SKILLS_CLI}" add "${SOURCE}" \
      --skill "${SKILLS[@]}" --agent claude-code codex --copy --yes )
}

if [ "${MODE}" = "check" ]; then
  tmp="$(mktemp -d)"
  trap 'rm -rf "${tmp}"' EXIT
  echo "Fetching ${SOURCE} ..."
  install_into "${tmp}" >/dev/null

  if [ "${REF}" != "${lock_ref}" ]; then
    echo "::error::skills-lock.json pins ${lock_ref}, the check ran against ${REF}."
    exit 1
  fi

  drift=0
  for s in "${SKILLS[@]}"; do
    if ! diff -r "${tmp}/.claude/skills/${s}" "${repo_root}/skills/${s}" >/dev/null 2>&1; then
      echo "::error::skills/${s} has DRIFTED from ${CATALOG_REPO}@${REF}."
      diff -r "${tmp}/.claude/skills/${s}" "${repo_root}/skills/${s}" | head -40 || true
      drift=1
    fi
  done
  if [ "${drift}" -ne 0 ]; then
    echo "Run scripts/sync-skills.sh to refresh the vendored copies."
    exit 1
  fi
  echo "skills/ is in sync with ${CATALOG_REPO}@${REF} (${SKILLS[*]})."
  exit 0
fi

# Write mode. Vendor via a TEMPORARY install and copy the result into skills/
# — the single source — never through the runtime directories. The earlier
# write-through-the-symlink route refused to run wherever .claude/skills was a
# real directory, which is exactly the shape of a module that carries its OWN
# project skills there (issue #165, measured on the Onkologie migration):
# such modules could not use this script at all. Vendoring and runtime wiring
# are now independent: skills/ is always written, the wiring below is
# best-effort and never destructive.
tmp="$(mktemp -d)"
trap 'rm -rf "${tmp}"' EXIT
echo "Fetching ${SOURCE} ..."
install_into "${tmp}" >/dev/null

mkdir -p "${repo_root}/skills"
for s in "${SKILLS[@]}"; do
  rm -rf "${repo_root}/skills/${s}"
  cp -R "${tmp}/.claude/skills/${s}" "${repo_root}/skills/${s}"
done
cp "${tmp}/skills-lock.json" "${repo_root}/skills-lock.json"

# Runtime wiring, per agent directory — three shapes, none of them an error:
#   a symlinked directory  -> already resolves to skills/; nothing to do
#   absent                 -> create the directory symlink (the template's shape)
#   a REAL directory       -> the module keeps its own project skills there:
#                             COEXIST by linking each catalog skill beside them;
#                             an existing non-symlink entry is the module's and
#                             is kept — warned, because it may be a stale copy
#                             (the materialised-checkout caveat in AGENTS.md).
for d in .claude/skills .agents/skills; do
  rt="${repo_root}/${d}"
  if [ -L "${rt}" ]; then
    continue
  elif [ ! -e "${rt}" ]; then
    mkdir -p "$(dirname "${rt}")"
    ln -s "../skills" "${rt}"
    echo "Linked ${d} -> ../skills."
  else
    for s in "${SKILLS[@]}"; do
      entry="${rt}/${s}"
      if [ -L "${entry}" ]; then
        continue
      elif [ -e "${entry}" ]; then
        echo "WARN: ${d}/${s} exists and is not a symlink — kept as-is (the module's own entry wins)." >&2
        echo "      The vendored copy in skills/${s} is authoritative; this entry may be STALE." >&2
      else
        ln -s "../../skills/${s}" "${entry}"
        echo "Linked ${d}/${s} -> ../../skills/${s} (coexisting with the module's own skills)."
      fi
    done
  fi
done

echo "Vendored ${CATALOG_REPO}@${REF} into skills/ (${SKILLS[*]}); pin recorded in skills-lock.json."

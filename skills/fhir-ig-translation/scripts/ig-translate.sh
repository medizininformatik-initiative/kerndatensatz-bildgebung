#!/usr/bin/env bash
# ig-translate — helper for translating an IG-Publisher-based FHIR IG into a
# non-default language.
# Deterministically determines the target files the IG PUBLISHER EXPECTS for
# translations and validates the naming/placement conventions. It does NOT
# translate itself (an agent/human does that) and creates nothing without being
# asked.
#
# Run it from the root of the module IG you are translating, or pass that root as
# an extra argument:
#
#   ig-translate.sh --scan <lang>               # target path per page/resource
#   ig-translate.sh --validate <lang>           # check existing translation files
#   ig-translate.sh --validate <lang> --strict  # additionally fail when there is
#                                               #   nothing to validate at all
#   ig-translate.sh --scan <lang> path/to/ig    # operate on another directory
#
# <lang> is REQUIRED and is not defaulted. It used to default to 'de', which
# meant a run could silently target a language nobody chose. Derive it from the
# guide's own sushi-config.yaml (i18n-lang), never from habit. The script
# cross-checks <lang> against the guide's i18n parameters and WARNs on a
# mismatch (best-effort; deriving the pair remains the caller's precondition).
#
# Exit codes: 0 = ran and found nothing to flag; 1 = validation findings
# ([WARN]), or --strict with an empty translation set; 2 = usage error, missing
# language, or not an IG project. "Zero translations present" and "all
# translations valid" are therefore no longer the same green.
#
# Portability note: this operates on the CURRENT WORKING DIRECTORY, not on a path
# derived from the script's own location. The original did
# `cd "$(dirname "$0")/.."`, which assumed the script sat in <module-repo>/scripts/.
# Installed as part of a skill it sits in <somewhere>/skills/<name>/scripts/, where
# that `cd` reaches the skill directory instead of the IG — and the scan would then
# silently report every page as missing.
#
# Verified: RESOURCE supplements render only for StructureDefinition, CodeSystem,
# Questionnaire (Publisher restriction, TRANSLATION_SUPPLEMENT_RESOURCE_TYPES).
# That restriction does NOT cover input/translations/<lang>/ImplementationGuide-<id>.po:
# the IG's own catalogue is imported on a separate load-time path, carries the
# pages:-tree page titles (breadcrumbs / TOC body / browser <title>, verified on
# IG Publisher 2.2.11) and is a REQUIRED file, not a naming error — this script
# treats it as legitimate in both modes. Any other unsupported resource type is
# still a finding. A narrative page is
# translated by mirroring input/pagecontent/<name>.md (the default language)
# into input/translations/<lang>/pagecontent/<name>.md — the SAME file name; a
# <name>-<lang>.md sibling is rendered as a separate page, not as a translation.
# Bash 3.2 compatible.
set -u

MODE=""
LANG_CODE=""
IG_ROOT=""
STRICT=0
for a in "$@"; do
  case "$a" in
    --scan) MODE=scan ;;
    --validate) MODE=validate ;;
    --strict) STRICT=1 ;;
    -h|--help) sed -n '2,28p' "$0"; exit 0 ;;
    *) if [ -z "$LANG_CODE" ]; then LANG_CODE="$a"; else IG_ROOT="$a"; fi ;;
  esac
done
if [ -z "$MODE" ]; then
  echo "Usage: $0 --scan <lang> | --validate <lang> [--strict] [ig-root]" >&2
  exit 2
fi

if [ -z "$LANG_CODE" ]; then
  echo "ERROR: a target language is required, e.g. '$0 --$MODE de'." >&2
  echo "       Take it from the guide's sushi-config.yaml (parameters.i18n-lang)." >&2
  echo "       It is deliberately not defaulted: a default would silently target a" >&2
  echo "       language nobody chose." >&2
  exit 2
fi

IG_ROOT="${IG_ROOT:-.}"
cd "$IG_ROOT" || { echo "ERROR: cannot enter '$IG_ROOT'" >&2; exit 2; }

# Detect that this really is a FHIR IG project before reporting anything. Without
# this the scan happily lists zero pages and zero resources, which reads exactly
# like "nothing to translate" instead of "you are in the wrong directory".
if [ ! -d input/pagecontent ] && [ ! -f sushi-config.yaml ] && [ ! -f ig.ini ]; then
  echo "ERROR: '$(pwd)' does not look like a FHIR IG project." >&2
  echo "       Expected input/pagecontent/, sushi-config.yaml or ig.ini." >&2
  echo "       Run this from the module IG's root, or pass the root as an argument." >&2
  exit 2
fi

# Best-effort cross-check of <lang> against the guide's own i18n configuration —
# the language pair is the skill's Preconditions 2, "the step that must not be
# skipped". Warnings only: parsing YAML with grep is deliberately rough, and the
# decision stays with the caller.
if [ -f sushi-config.yaml ]; then
  if ! grep -qE '^[[:space:]]*i18n-default-lang[[:space:]]*:' sushi-config.yaml; then
    echo "WARN: sushi-config.yaml declares no i18n-default-lang — the source language is undeclared." >&2
    echo "      Deriving the language pair is the skill's Preconditions 2: report and ask, do not guess." >&2
  fi
  if grep -qE '^[[:space:]]*i18n-lang[[:space:]]*:' sushi-config.yaml; then
    if ! grep -A8 -E '^[[:space:]]*i18n-lang[[:space:]]*:' sushi-config.yaml \
       | grep -qE "^[[:space:]]*-[[:space:]]*[\"']?${LANG_CODE}[\"']?[[:space:]]*(#.*)?\$|i18n-lang[[:space:]]*:[[:space:]]*[\"']?${LANG_CODE}[\"']?[[:space:]]*(#.*)?\$"; then
      echo "WARN: '$LANG_CODE' does not appear under parameters.i18n-lang in sushi-config.yaml." >&2
    fi
  else
    echo "WARN: no i18n-lang is configured — '$LANG_CODE' is not (yet) a target language of this" >&2
    echo "      guide. Adding one changes the guide's configuration and is its maintainer's decision." >&2
  fi
fi

SUPPORTED="StructureDefinition CodeSystem Questionnaire"   # Publisher supplement types
IG_LEVEL="ImplementationGuide"   # not a supplement: separate load-time translation import
TSRC="input/translations/$LANG_CODE"
GEN="fsh-generated/resources"

# List "<ResourceType> <id>" per generated resource (only supported types matter)
list_resources() {
  [ -d "$GEN" ] || return 0
  python3 - "$GEN" <<'PY'
import json,sys,glob,os
gen=sys.argv[1]
for f in sorted(glob.glob(os.path.join(gen,"*.json"))):
    try: d=json.load(open(f,encoding="utf-8"))
    except Exception: continue
    rt=d.get("resourceType"); rid=d.get("id")
    if rt and rid: print(rt, rid)
PY
}

echo "== ig-translate --$MODE $LANG_CODE =="

if [ "$MODE" = scan ]; then
  echo "-- Narrative pages --"
  if [ -d input/pagecontent ]; then
    for p in input/pagecontent/*.md; do
      [ -e "$p" ] || continue
      base="$(basename "$p" .md)"
      tgt="$TSRC/pagecontent/${base}.md"
      [ -e "$tgt" ] && st="[present]" || st="[missing]"
      echo "   $p -> $tgt $st"
    done
  fi
  echo "-- Resource supplements (render: only SD/CS/Questionnaire) --"
  list_resources | while read -r rt rid; do
    [ "$rt" = "$IG_LEVEL" ] && continue   # not a supplement — own section below
    case " $SUPPORTED " in
      *" $rt "*)
        tgt="$TSRC/${rt}-${rid}.po"
        [ -e "$tgt" ] && st="[present]" || st="[missing]"
        echo "   $rt/$rid -> $tgt $st";;
      *)
        echo "   $rt/$rid -> (no supplement support; skipped)";;
    esac
  done
  echo "-- IG-level catalogue (NOT a supplement: separate load-time import; REQUIRED) --"
  # `if`, not `case`: bash 3.2 mis-parses a `case` inside a command substitution
  # under `set -u` and aborts with "rid: unbound variable".
  ig_ids="$(list_resources | while read -r rt rid; do
              if [ "$rt" = "$IG_LEVEL" ]; then echo "$rt $rid"; fi
            done)"
  if [ -n "$ig_ids" ]; then
    echo "$ig_ids" | while read -r rt rid; do
      tgt="$TSRC/${rt}-${rid}.po"
      [ -e "$tgt" ] && st="[present]" || st="[missing]"
      echo "   $rt/$rid -> $tgt $st"
    done
    echo "   Carries the pages:-tree page titles (ImplementationGuide.definition.page.title ->"
    echo "   breadcrumbs, TOC body, browser <title>), the guide's own title and the per-artifact"
    echo "   definition.resource.name. Build the unit set from that resource's definition.page tree."
  else
    echo "   (no ImplementationGuide resource in $GEN — build the guide first)"
  fi
  echo
  echo "Note: a supplement's msgid = the exact DEFAULT-LANGUAGE source text from $GEN/<Type>-<id>.json."
  exit 0
fi

# --- validate ---
fail=0
nsupp=0
npages=0
echo "-- checking existing supplements ($TSRC) --"
if [ -d "$TSRC" ]; then
  for f in "$TSRC"/*.po "$TSRC"/*.xliff "$TSRC"/*.json; do
    [ -e "$f" ] || continue
    nsupp=$((nsupp + 1))
    bn="$(basename "$f")"; stem="${bn%.*}"
    rt="${stem%%-*}"; rid="${stem#*-}"
    case "$bn" in menu.*) echo "   [WARN] $bn — ignored by the Publisher (not {Type}-{id})"; fail=1; continue;; esac
    # The IG's own catalogue is not a resource supplement and is exempt from the
    # supported-types check: the publisher imports it on a separate load-time path.
    # It used to be WARNed here as "type not supported", which failed the very file
    # the skill mandates.
    if [ "$rt" = "$IG_LEVEL" ]; then
      if [ -f "$GEN/${rt}-${rid}.json" ]; then
        echo "   [OK]   $bn — IG-level catalogue (page titles, breadcrumbs, TOC; not a supplement)"
      else
        echo "   [WARN] $bn — no matching resource $GEN/${rt}-${rid}.json"; fail=1
      fi
      continue
    fi
    case " $SUPPORTED " in
      *" $rt "*) ;;
      *) echo "   [WARN] $bn — type '$rt' is NOT supported as a supplement (ignored)"; fail=1; continue;;
    esac
    if [ -f "$GEN/${rt}-${rid}.json" ]; then echo "   [OK]   $bn"; else echo "   [WARN] $bn — no matching resource $GEN/${rt}-${rid}.json"; fail=1; fi
  done
else
  echo "   (no directory $TSRC)"
fi
echo "-- checking existing page translations ($TSRC/pagecontent) --"
if [ -d "$TSRC/pagecontent" ]; then
  for f in "$TSRC"/pagecontent/*.md; do
    [ -e "$f" ] || continue
    npages=$((npages + 1))
    bn="$(basename "$f")"; src="input/pagecontent/$bn"
    if [ -f "$src" ]; then echo "   [OK]   $bn"; else echo "   [WARN] $bn — no default-language source page $src"; fail=1; fi
  done
else
  echo "   (no directory $TSRC/pagecontent)"
fi
echo
echo "Checked: $nsupp supplement(s), $npages page translation(s)."
if [ "$fail" != 0 ]; then
  echo "Validation: findings present (see [WARN])."
  exit 1
fi
if [ $((nsupp + npages)) -eq 0 ]; then
  echo "Validation: NOTHING TO VALIDATE — no supplements and no page translations exist for '$LANG_CODE'."
  echo "That is not the same as 'all translations valid'."
  if [ "$STRICT" = 1 ]; then
    exit 1
  fi
  exit 0
fi
echo "Validation: no findings."
exit 0

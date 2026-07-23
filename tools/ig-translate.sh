#!/usr/bin/env bash
# ig-translate — Hilfswerkzeug für die Übersetzung eines deutsch geführten IG.
# Bestimmt deterministisch die VOM IG PUBLISHER VORGESEHENEN Zieldateien für
# Übersetzungen und validiert Namens-/Ablage-Konventionen. Übersetzt NICHT selbst
# (das übernimmt der Agent/Mensch); legt nichts ohne Auftrag an.
#
#   tools/ig-translate.sh --scan en        # zeigt je Seite/Ressource den Zielpfad
#   tools/ig-translate.sh --validate en    # prüft vorhandene Übersetzungsdateien
#
# Verifiziert: Translation-Supplements rendern nur für StructureDefinition,
# CodeSystem, Questionnaire (Publisher-Beschränkung). Narrative-Seiten-Dateien
# (<name>-<lang>.md) werden noch nicht eingelesen, aber zukunftssicher angelegt.
# Bash 3.2-kompatibel.
set -u
cd "$(dirname "$0")/.."

MODE=""; LANG_CODE=""
case "${1:-}" in
  --scan) MODE=scan; LANG_CODE="${2:-en}";;
  --validate) MODE=validate; LANG_CODE="${2:-en}";;
  *) echo "Verwendung: $0 --scan <lang> | --validate <lang>" >&2; exit 2;;
esac

SUPPORTED="StructureDefinition CodeSystem Questionnaire"   # Publisher-Supplement-Typen
TSRC="input/translations/$LANG_CODE"
GEN="fsh-generated/resources"

# Liste: "<ResourceType> <id>" je generierter Ressource (nur unterstützte Typen markiert)
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
  echo "-- Narrative-Seiten (zukunftssicher: rendert noch nicht) --"
  if [ -d input/pagecontent ]; then
    for p in input/pagecontent/*.md; do
      [ -e "$p" ] || continue
      case "$p" in *-"$LANG_CODE".md) continue;; esac          # Übersetzung selbst überspringen
      base="$(basename "$p" .md)"
      tgt="input/pagecontent/${base}-${LANG_CODE}.md"
      [ -e "$tgt" ] && st="[vorhanden]" || st="[fehlt]"
      echo "   $p -> $tgt $st"
    done
  fi
  echo "-- Ressourcen-Supplements (rendert: nur SD/CS/Questionnaire) --"
  list_resources | while read -r rt rid; do
    case " $SUPPORTED " in
      *" $rt "*)
        tgt="$TSRC/${rt}-${rid}.po"
        [ -e "$tgt" ] && st="[vorhanden]" || st="[fehlt]"
        echo "   $rt/$rid -> $tgt $st";;
      *)
        echo "   $rt/$rid -> (kein Supplement-Support; übersprungen)";;
    esac
  done
  echo
  echo "Hinweis: msgid der Supplements = exakter dt. Quelltext aus $GEN/<Typ>-<id>.json."
  exit 0
fi

# --- validate ---
fail=0
echo "-- vorhandene Supplements prüfen ($TSRC) --"
if [ -d "$TSRC" ]; then
  for f in "$TSRC"/*.po "$TSRC"/*.xliff "$TSRC"/*.json; do
    [ -e "$f" ] || continue
    bn="$(basename "$f")"; stem="${bn%.*}"
    rt="${stem%%-*}"; rid="${stem#*-}"
    case "$bn" in menu.*) echo "   [WARN] $bn — wird vom Publisher ignoriert (kein {Typ}-{id})"; fail=1; continue;; esac
    case " $SUPPORTED " in
      *" $rt "*) ;;
      *) echo "   [WARN] $bn — Typ '$rt' wird NICHT als Supplement unterstützt (ignoriert)"; fail=1; continue;;
    esac
    if [ -f "$GEN/${rt}-${rid}.json" ]; then echo "   [OK]   $bn"; else echo "   [WARN] $bn — keine passende Ressource $GEN/${rt}-${rid}.json"; fail=1; fi
  done
else
  echo "   (kein Verzeichnis $TSRC)"
fi
echo "-- vorhandene Seiten-Übersetzungen prüfen --"
if [ -d input/pagecontent ]; then
  for f in input/pagecontent/*-"$LANG_CODE".md; do
    [ -e "$f" ] || continue
    bn="$(basename "$f")"; src="input/pagecontent/${bn%-$LANG_CODE.md}.md"
    if [ -f "$src" ]; then echo "   [OK]   $bn"; else echo "   [WARN] $bn — keine deutsche Quellseite $src"; fail=1; fi
  done
fi
echo
[ "$fail" = 0 ] && echo "Validierung: keine Beanstandungen." || echo "Validierung: Hinweise vorhanden (siehe [WARN])."
exit 0

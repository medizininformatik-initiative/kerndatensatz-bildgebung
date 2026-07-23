#!/usr/bin/env bash
# fql-scan — findet Simplifier-/FQL-Direktiven in Narrative-Seiten und nennt je
# Fund das HL7-IG-Publisher-Aequivalent. Liest die Mapping-Regeln aus
# skills/mii-ig-migration/references/fql-rules.tsv (Single Source of Truth,
# per Hand erweiterbar). MELDET nur — transformiert NICHT (die Transformation
# erfolgt KI-gestuetzt/manuell anhand der Empfehlungen, siehe fql-crosswalk.md).
#
#   tools/fql-scan.sh                      # scannt input/pagecontent/*.md
#   tools/fql-scan.sh input/pagecontent/x.md ...   # bestimmte Dateien/Ordner
#   tools/fql-scan.sh --strict             # Exit 1, falls Funde (fuer CI)
# Bash 3.2-kompatibel.
set -u
cd "$(dirname "$0")/.."
RULES="skills/mii-ig-migration/references/fql-rules.tsv"

STRICT=0; ARGS=""
for a in "$@"; do case "$a" in
  --strict) STRICT=1;;
  *) ARGS="$ARGS $a";;
esac; done
[ -n "$ARGS" ] || ARGS="input/pagecontent"

[ -f "$RULES" ] || { echo "FEHLER: Regeldatei $RULES fehlt." >&2; exit 2; }

# Zieldateien sammeln (nur .md)
TARGETS=""
for p in $ARGS; do
  if [ -d "$p" ]; then
    for f in "$p"/*.md; do [ -e "$f" ] && TARGETS="$TARGETS $f"; done
  elif [ -f "$p" ]; then TARGETS="$TARGETS $p"; fi
done
[ -n "$TARGETS" ] || { echo "Keine .md-Zieldateien unter: $ARGS"; exit 0; }

echo "== fql-scan (Regeln: $RULES) =="
total=0
MATCHED=""   # "datei:zeile" je Treffer einer spezifischen Regel (fuer Unbekannt-Nachlauf)
# je Regel ueber alle Dateien greppen
while IFS="$(printf '\t')" read -r label regex empf; do
  case "$label" in ''|\#*) continue;; esac
  [ -n "$regex" ] || continue
  for f in $TARGETS; do
    while IFS= read -r hit; do
      [ -n "$hit" ] || continue
      ln="${hit%%:*}"; txt="${hit#*:}"
      snip="$(printf '%s' "$txt" | sed 's/^[[:space:]]*//' | cut -c1-80)"
      echo "  $f:$ln  [$label]"
      echo "      Fund:       $snip"
      echo "      Empfehlung: $empf"
      MATCHED="$MATCHED
$f:$ln"
      total=$((total+1))
    done <<EOF
$(grep -nE "$regex" "$f" 2>/dev/null)
EOF
  done
done < "$RULES"

# Nachlauf: Direktiven-aehnliche Zeilen, die KEINE Regel abgedeckt hat -> unbekannt.
unknown=0
GENERIC='\{\{[A-Za-z]|<fql|@```|</?tab'
for f in $TARGETS; do
  while IFS= read -r hit; do
    [ -n "$hit" ] || continue
    ln="${hit%%:*}"; txt="${hit#*:}"
    case "$MATCHED" in *"$f:$ln"*) continue;; esac    # bereits durch Regel erfasst
    snip="$(printf '%s' "$txt" | sed 's/^[[:space:]]*//' | cut -c1-80)"
    echo "  $f:$ln  [UNBEKANNT]"
    echo "      Fund:       $snip"
    echo "      Empfehlung: Keine Regel getroffen — pruefen und ggf. neue Zeile in $RULES ergaenzen."
    unknown=$((unknown+1))
  done <<EOF
$(grep -nE "$GENERIC" "$f" 2>/dev/null)
EOF
done

echo
total_all=$((total+unknown))
if [ "$total_all" -eq 0 ]; then
  echo "Keine Simplifier-/FQL-Direktiven gefunden."
else
  echo "$total zugeordnete Fund(e), $unknown unbekannte. Transformation gemaess fql-crosswalk.md (KI-gestuetzt/manuell)."
  echo "Fehlt/ungenau eine Regel? Zeile in $RULES ergaenzen (LABEL<TAB>ERE-Muster<TAB>Empfehlung)."
fi
[ "$STRICT" = 1 ] && [ "$total_all" -gt 0 ] && exit 1
exit 0

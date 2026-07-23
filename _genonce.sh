#!/usr/bin/env bash
# Lokaler Einmal-Build: SUSHI + IG Publisher
set -euo pipefail
command -v sushi >/dev/null 2>&1 || npm install -g fsh-sushi
# Preflight: Jekyll wird vom IG Publisher erst am Ende des Laufs aufgerufen —
# ohne diese Pruefung schlaegt der Build erst nach vielen Minuten fehl.
command -v jekyll >/dev/null 2>&1 || {
  echo "FEHLER: 'jekyll' nicht im PATH. Ruby + Jekyll installieren" >&2
  echo "(https://jekyllrb.com/docs/installation/); bei Ruby-Versionsmanagern" >&2
  echo "(chruby/rbenv/rvm) ggf. GEM_HOME/PATH in dieser Shell setzen." >&2
  exit 1
}
sushi .
if [ ! -f input-cache/publisher.jar ]; then
  mkdir -p input-cache
  curl -fsSL https://github.com/HL7/fhir-ig-publisher/releases/latest/download/publisher.jar -o input-cache/publisher.jar
fi
java -jar input-cache/publisher.jar -ig ig.ini
echo "QA-Report: output/qa.html   IG: output/index.html"

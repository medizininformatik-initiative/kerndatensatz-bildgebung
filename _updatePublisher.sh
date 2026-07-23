#!/usr/bin/env bash
set -euo pipefail
mkdir -p input-cache
curl -fsSL https://github.com/HL7/fhir-ig-publisher/releases/latest/download/publisher.jar -o input-cache/publisher.jar
echo "IG Publisher aktualisiert: input-cache/publisher.jar"

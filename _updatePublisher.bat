@echo off
REM Laedt die aktuelle HL7 IG Publisher publisher.jar herunter (Windows-Pendant zu _updatePublisher.sh)
if not exist input-cache mkdir input-cache
curl -fsSL https://github.com/HL7/fhir-ig-publisher/releases/latest/download/publisher.jar -o input-cache\publisher.jar || (
  echo FEHLER: Download der publisher.jar fehlgeschlagen 1>&2
  exit /b 1
)
echo IG Publisher aktualisiert: input-cache\publisher.jar

@echo off
REM Lokaler Einmal-Build: SUSHI + IG Publisher (Windows-Pendant zu _genonce.sh)
REM npm/sushi sind .cmd-Wrapper: ohne `call` kehrt das Skript nicht zurueck.
where sushi >nul 2>nul || call npm install -g fsh-sushi || exit /b 1
REM Preflight: Jekyll wird vom IG Publisher erst am Ende des Laufs aufgerufen --
REM ohne diese Pruefung schlaegt der Build erst nach vielen Minuten fehl.
where jekyll >nul 2>nul || (
  echo FEHLER: 'jekyll' nicht im PATH. Ruby + Jekyll installieren 1>&2
  echo https://jekyllrb.com/docs/installation/ 1>&2
  exit /b 1
)
call sushi . || exit /b 1
if not exist input-cache\publisher.jar (
  if not exist input-cache mkdir input-cache
  curl -fsSL https://github.com/HL7/fhir-ig-publisher/releases/latest/download/publisher.jar -o input-cache\publisher.jar || exit /b 1
)
java -jar input-cache\publisher.jar -ig ig.ini || exit /b 1
echo QA-Report: output\qa.html   IG: output\index.html

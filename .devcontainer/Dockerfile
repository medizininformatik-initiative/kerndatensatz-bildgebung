FROM ghcr.io/miracum/ig-build-tools:v2.1.3

RUN apt-get update && apt-get install -y graphviz git-all

RUN wget -P /workspaces https://github.com/plantuml/plantuml/releases/latest/download/plantuml.jar \
&& printf "#!/bin/bash\njava -jar /workspaces/plantuml.jar -tsvg -o ../images input/images-source" >> /workspaces/gen_uml.sh \
&& chmod a+x /workspaces/gen_uml.sh

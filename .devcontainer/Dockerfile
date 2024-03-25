FROM ghcr.io/cybernop/vscode-ig-publisher:3.5.0-alpine

RUN apk update \
    && apk add graphviz

RUN wget -P /workspaces https://github.com/plantuml/plantuml/releases/latest/download/plantuml.jar \
    && printf "#!/bin/bash\njava -jar /workspaces/plantuml.jar -tsvg -o ../images input/images-source" >> /workspaces/gen_uml.sh \
    && chmod a+x /workspaces/gen_uml.sh

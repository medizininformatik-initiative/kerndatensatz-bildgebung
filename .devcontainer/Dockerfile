FROM ghcr.io/cybernop/vscode-ig-publisher:sushi-3.0.0-beta.2-alpine

RUN apk update \
    && apk add graphviz

RUN wget -P /workspaces https://github.com/plantuml/plantuml/releases/latest/download/plantuml.jar \
    && printf "#!/bin/bash\njava -jar /workspaces/plantuml.jar -tsvg -o ../images input/images-source" >> /workspaces/gen_uml.sh \
    && chmod a+x /workspaces/gen_uml.sh

RUN apk add dotnet6-sdk \
    && dotnet tool install --global Firely.Terminal --version 3.2.0-beta-1

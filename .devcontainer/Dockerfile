FROM ghcr.io/miracum/ig-build-tools:2.0.51

RUN apk update \
    && apk add graphviz

RUN wget -P /workspaces https://github.com/plantuml/plantuml/releases/latest/download/plantuml.jar \
    && printf "#!/bin/bash\njava -jar /workspaces/plantuml.jar -tsvg -o ../images input/images-source" >> /workspaces/gen_uml.sh \
    && chmod a+x /workspaces/gen_uml.sh
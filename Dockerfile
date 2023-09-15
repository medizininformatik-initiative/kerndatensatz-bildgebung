FROM node:latest as download

WORKDIR /fhir-ig-publisher

COPY _updatePublisher.sh .
RUN ./_updatePublisher.sh -y


FROM node:latest as build
RUN apt update
RUN apt -y install openjdk-17-jdk openjdk-17-demo openjdk-17-doc openjdk-17-jre-headless openjdk-17-source
RUN apt -y install ruby-full build-essential zlib1g-dev
RUN npm install -g fsh-sushi

RUN gem install jekyll bundler

WORKDIR /fhir-ig-publisher

COPY --from=download /fhir-ig-publisher/input-cache/ .

COPY input/* input/fsh/
COPY _genonce.sh .
COPY sushi-config.yaml .

COPY ig.ini .

RUN mkdir input-cache && mkdir fsh-generated && sushi build

RUN ./_genonce.sh -y

ENTRYPOINT ["tail", "-f", "/dev/null"]



FROM node:latest
RUN apt update
RUN apt -y install openjdk-17-jdk openjdk-17-demo openjdk-17-doc openjdk-17-jre-headless openjdk-17-source
RUN apt -y install ruby-full build-essential zlib1g-dev
RUN npm install -g fsh-sushi
WORKDIR /fhir-ig-publisher

COPY input/* input/fsh/
COPY _genonce.sh .
COPY sushi-config.yaml .
COPY _updatePublisher.sh .
#RUN wget https://github.com/HL7/fhir-ig-publisher/releases/latest/download/publisher.jar
#RUN echo "alias publisher='java -jar /fhir-ig-publisher/publisher.jar'" >> ~/.bashrc
#RUN echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
#RUN echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
#RUN echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
COPY ig.ini .

RUN gem install jekyll bundler

#RUN mkdir input-cache && cp publisher.jar input-cache/publisher.jar && mkdir fsh-generated

#RUN java -jar publisher.jar -source Profile-ImagingStudy.fsh -destination ImagingStudy.html
RUN mkdir input-cache && mkdir fsh-generated && ./_updatePublisher.sh -y


RUN sushi build

RUN ./_genonce.sh -y

ENTRYPOINT ["tail", "-f", "/dev/null"]



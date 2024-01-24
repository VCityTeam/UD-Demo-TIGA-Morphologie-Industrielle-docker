FROM ubuntu:focal

LABEL maintainer "VCityTeam"
LABEL source.repo "https://github.com/VCityTeam/UD-Viz-Template-docker"

RUN apt-get update

######### Install the UD-Viz demo per se (client code) and build it
# Node version 16 is required. For its installation (on focal) refer to e.g.
#  https://computingforgeeks.com/install-node-js-14-on-ubuntu-debian-linux/
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_18.x | bash -
RUN apt-get install -y nodejs
RUN node --version
RUN npm --version
RUN apt-get install -y git
RUN git --version

RUN git clone https://github.com/VCityTeam/UD-Demo-TIGA-Morphologie-Industrielle.git
WORKDIR UD-Demo-TIGA-Morphologie-Industrielle
RUN npm i
RUN npm run debug

######### Install the ExpressJS server
WORKDIR /
RUN git clone https://github.com/VCityTeam/UD-SimpleServer.git
WORKDIR UD-SimpleServer
RUN npm install

EXPOSE 80
CMD [ "node", "./index.js", "/UD-Demo-TIGA-Morphologie-Industrielle", "80" ]

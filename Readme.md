# Morphologie Industrielle

Create a docker of the [Morphologie Industrielle project](https://github.com/VCityTeam/UD-Demo-TIGA-Morphologie-Industrielle).  
_See the [online version](https://www.imuvirtuel.fr/vcity/valleedugier/)_.

The demo uses a [SimpleServer](https://github.com/VCityTeam/UD-SimpleServer), based on [ExpressJS](https://en.wikipedia.org/wiki/Express.js) web-server.

Clone the repo

```bash
git clone https://github.com/VCityTeam/UD-Demo-TIGA-Morphologie-Industrielle-docker.git
cd UD-Demo-TIGA-Morphologie-Industrielle-docker
```

Build the docker image with

```bash
docker build -t demo_mi .
```

and run the container with

```bash
docker run -p 8000:80/tcp -t demo_mi
```

and open a web browser on URL `http://localhost:8000/`

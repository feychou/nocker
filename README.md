# nocker
Dockerized Node.js web application for development and production.

Goodies:
- [Alpine Linux](https://hub.docker.com/_/alpine/), 5MB distribution ideal for Docker images
- [Yarn](https://yarnpkg.com/en/)
- [Nodemon](https://nodemon.io/)

## Prerequisites
Make sure [Docker](https://docs.docker.com/engine/installation/) is installed on your machine.

Also make sure [Docker Compose](https://docs.docker.com/compose/install/) is installed on your machine.

## Installation
In order to bootstrap your own app, clone the repo (`git clone git@github.com:feychou/nocker.git`) and delete its `.git` folder. You're good to go!

`docker-compose build` builds your container.

`docker-compose up` starts your app (nodemon ensures server reload).

# nocker
Dockerized Node.js web application skeleton for development and production.

Goodies:
- [Alpine Linux](https://hub.docker.com/_/alpine/), 5MB distribution ideal for Docker images
- [Yarn](https://yarnpkg.com/en/)
- [Nodemon](https://nodemon.io/)

Note that all the essential scripts for running nocker are kept in the `package.json`. This means you can also start up the application even outside the Docker container.
In such a case, in order to start your app in dev mode you would run `npm run start-dev` or `yarn start-dev` (you need Yarn globally installed for the latter).

## Prerequisites
Make sure [Docker](https://docs.docker.com/engine/installation/) is installed on your machine.
Also, make sure [Docker Compose](https://docs.docker.com/compose/install/) is installed on your machine.

## Installation
In order to bootstrap your own app, clone the repo (`git clone git@github.com:feychou/nocker.git`) and delete its `.git` folder. You're good to go!

`docker-compose build` builds your container.

`docker-compose up` starts your app in development mode (nodemon ensures server reload).

`docker-compose -f docker-compose.prod.yml up` starts your app in production mode.
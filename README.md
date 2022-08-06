# DEN
DEN stands for "Docker Environment for Node.js" and it's a basic skel project to have a dockerized development environment

## Usage
`docker-compose up --build` will build the docker image based on the `Dockerfile`

The `Dockerfile` itself will get `packge*.json`, copy them in the image and run `npm install` then run `npm run dev` (it's a npm script that now run `nodemon server.js`).

To use your package manager (`npm`, `yarn` or whatever) you must enter the running image and execute every commands there instead of trying to do it from the host itself.

This should provide an out fo the box environment to develop node.js app without even have node installed on your machine.

Right now the port `8080` will be exposed on the host and a `/ping` endpoint will return the string `pong`
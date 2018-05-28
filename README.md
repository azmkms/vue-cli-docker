# vue-cli-docker
A docker container for Vue development

## Build
docker build -t vue-cli --build-arg UID=$(id -u) --build-arg GID=$(id -g) .

## Generate app
docker run --rm -it -p 8080:8080 -v "$PWD":/src vue-cli

## Continue development
docker run --rm -it -p 8080:8080 -v "$PWD":/src vue-cli sh

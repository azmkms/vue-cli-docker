# vue-cli-docker
A docker container to generate Vue app

## Build
docker build -t vue-cli --build-arg UID=$(id -u) --build-arg GID=$(id -g) .

## Generate app
docker run --rm -it -p 8080:8080 -v "$PWD":/src vue-cli

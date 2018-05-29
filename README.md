# vue-cli-docker
A docker container to run vue cli commands

## Build
`docker build -t vue-cli --build-arg UID=$(id -u) --build-arg GID=$(id -g) .`

## Generate app
`docker run --rm -it -v $PWD:/work vue-cli vue create .`

## Fix parser issue
Run following to resolve parser issue after running `npm run serve` for vue version `3.0.0-beta.11`
```
docker run --rm -it -v $PWD:/work vue-cli npm i -D prettier@1.12.0
```
https://stackoverflow.com/questions/50555953/vue-webpack-template-missing-parser

## Serve app
```
docker run --rm -it -p 8080:8080 -v $PWD:/work vue-cli npm run serve
```

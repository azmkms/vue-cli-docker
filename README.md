# vue-cli-docker
A docker container to generate and serve Vue app

## Build
`docker build -t vue-cli --build-arg UID=$(id -u) --build-arg GID=$(id -g) .`

## Generate app
`docker run --rm -it -p 8080:8080 -v "$PWD":/src vue-cli vue create app`

## Serve app
```
cd app
docker run --rm -it -p 8080:8080 -v "$PWD":/src vue-cli npm run serve`
```

### Note
Run following to resolve parser issue after running `npm run serve`

`docker run --rm -it -p 8080:8080 -v "$PWD":/src vue-cli sh`
```
cd app
npm install -D prettier@1.12.0
```
https://stackoverflow.com/questions/50555953/vue-webpack-template-missing-parser

FROM node:carbon-alpine
RUN npm i -g @vue/cli
WORKDIR /src
RUN adduser -D vue
USER vue

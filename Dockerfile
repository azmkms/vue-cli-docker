FROM node:carbon-alpine
ARG UID
ARG GID
RUN npm i -g @vue/cli
WORKDIR /src
RUN addgroup -g $UID vue && \
    adduser -D -u $GID -G vue vue
RUN chown -R vue:vue /src
USER vue

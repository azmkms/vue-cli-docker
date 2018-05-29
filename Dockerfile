FROM node:carbon-alpine
WORKDIR /work
ARG UID=1001
ARG GID=1001
RUN npm i -g @vue/cli
RUN addgroup -g $UID cli && \
    adduser -D -u $GID -G cli cli
USER cli
CMD sh

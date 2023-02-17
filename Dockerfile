FROM node:18

LABEL org.opencontainers.image.source=https://github.com/mritunjaysharma394/ich-k8s-example

WORKDIR /opt/my/service

COPY . /opt/my/service

RUN yarn install

EXPOSE 8080

ENTRYPOINT ["node", "/opt/my/service/server.js"]

FROM node:alpine3.21

RUN mkdir -p /home/node/app && chown -R node:node /home/node/app

WORKDIR /home/node/app

COPY --chown=node:node package*.json index.js ./

USER node

ENTRYPOINT [ "npm", "start" ]
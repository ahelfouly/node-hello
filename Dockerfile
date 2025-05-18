FROM node:alpine3.21

WORKDIR /home/node/app

COPY --chown=node:node package*.json index.js newrelic.js ./

RUN npm install --production

USER node

ENTRYPOINT [ "npm", "start" ]

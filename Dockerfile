FROM node:alpine3.21

WORKDIR /home/node/app

COPY --chown=node:node package*.json index.js newrelic.js ./

RUN chown -R nodeuser:nodegroup /home/node/app && npm install --production

USER node

ENTRYPOINT [ "npm", "start" ]

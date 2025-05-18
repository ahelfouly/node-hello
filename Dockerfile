FROM node:alpine3.21

WORKDIR /home/node/app

COPY --chown=node:node package*.json index.js newrelic.js ./

RUN chown -R node:node /home/node/app && npm install --production

EXPOSE 3000

USER node

ENTRYPOINT [ "npm", "start" ]

FROM node:10-alpine

WORKDIR /home/node/app

RUN chown -R node:node /home/node/app



COPY package*.json ./

USER node



RUN npm ci

EXPOSE 8080

CMD [ "node", "app.js" ]




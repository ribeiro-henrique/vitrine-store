FROM node:latest

WORKDIR /usr/scr/api

COPY . .

COPY ./.env.production ./.env

RUN npm install --quiet --no-optional --no-found --loglevel=error

RUN npm build

CMD [ "npm", "run", "start:prod" ]
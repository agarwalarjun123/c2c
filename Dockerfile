FROM node:alpine

WORKDIR /usr/src/app

COPY package.json package.json

RUN apk add openssh

RUN npm install

COPY . . 

EXPOSE 3000

CMD ["./node_modules/nodemon/bin/nodemon.js","app"]
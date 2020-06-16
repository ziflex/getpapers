FROM node:12.18-alpine3.9

WORKDIR /app

ENV NODE_ENV=production

COPY . .

RUN npm i --production 

ENTRYPOINT [ "node", "./bin/getpapers.js" ]
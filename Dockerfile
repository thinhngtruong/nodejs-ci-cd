FROM node:10.16.0-alpine

WORKDIR /source/c

COPY package.json /source/nodejs-ci-cd

RUN cd /source/nodejs-ci-cd && npm i --only=production

COPY . .

EXPOSE 3000
CMD ["sh", "-c", "node server.js"]
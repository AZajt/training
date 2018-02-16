FROM node:8-alpine As build

RUN set -ex \
    && apk add --update bash git \
    && rm -rf /var/cache/apk/*


WORKDIR /build

COPY package*.json ./
RUN npm install

COPY . .

CMD  node app.js

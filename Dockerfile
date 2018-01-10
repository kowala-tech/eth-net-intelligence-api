## Dockerfile for eth-net-intelligence-api (build from git).

FROM node:8-alpine

RUN apk add --update git

ADD . /ethnetintel

RUN cd /ethnetintel &&\
    npm install &&\
    npm install -g pm2

WORKDIR /ethnetintel

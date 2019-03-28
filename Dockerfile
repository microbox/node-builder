ARG NODE_VERSION=8
FROM alpine:edge
MAINTAINER Ling <x@e2.to>
ARG NODE_VERSION
ENV NODE_VERSION=$NODE_VERSION HOME=/root DOCKER_HOST=tcp://docker:2375
WORKDIR /root

# make node-gyp works
RUN apk add --no-cache --update python make g++ git tar zip docker ansible nodejs>=${NODE_VERSION} nodejs-npm>=>=${NODE_VERSION}
RUN npm install -g yarn
# EOF
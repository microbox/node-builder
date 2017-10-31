ARG NODE_VERSION=8
FROM node:${NODE_VERSION}-alpine
MAINTAINER Ling <x@e2.to>
ARG NODE_VERSION
ENV NODE_VERSION=$NODE_VERSION HOME=/root DOCKER_HOST=tcp://docker:2375
WORKDIR /root

# make node-gyp works
RUN apk add --no-cache --update python make g++ git tar zip docker

# EOF
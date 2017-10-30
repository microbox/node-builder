ARG NODE_VERSION=8
FROM node:${NODE_VERSION}-alpine
MAINTAINER Ling <x@e2.to>
ARG NODE_VERSION
ENV NODE_VERSION=${NODE_VERSION} HOME=/root DOCKER_HOST=tcp://docker:2375
WORKDIR /root

RUN apk add --no-cache --update bash tar zip git docker

# EOF
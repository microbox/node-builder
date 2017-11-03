FROM alpine:edge
MAINTAINER Ling <x@e2.to>
ARG NODE_VERSION
ENV NODE_VERSION=${NODE_VERSION}
ENV HOME=/root DOCKER_HOST=tcp://docker:2375
WORKDIR /root
RUN apk add --no-cache --update ca-certificates nodejs-npm python make g++ git tar zip docker bash && \
    npm install -g yarn && \
    rm -rf /usr/share/man /tmp/* /var/cache/apk/* /root/.npm

# for upstream image run as user
# RUN adduser -u 1000 -g node -h /home/node -s /bin/sh -D node
# USER node
# ENV HOME=/home/node
# WORKDIR /home/node
# EOF
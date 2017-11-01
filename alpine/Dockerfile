FROM alpine:edge
MAINTAINER Ling <x@e2.to>
ARG NODE_VERSION
ENV NODE_VERSION=${NODE_VERSION}
RUN apk add --no-cache --update ca-certificates nodejs-npm>=${NODE_VERSION} python make g++ git tar zip docker && \
    rm -rf /usr/share/man /tmp/* /var/cache/apk/*

# for upstream image run as user
# RUN adduser -u 1000 -g node -h /home/node -s /bin/sh -D node
# USER node
# ENV HOME=/home/node
# WORKDIR /home/node
# EOF
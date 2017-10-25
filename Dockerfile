FROM alpine:edge
MAINTAINER Ling <x@e2.to>
ENV NODE_VERSION=6.11.4

RUN apk add --no-cache --update nodejs-npm=${NODE_VERSION}-r0 ca-certificates bash tar zip git docker python make g++ && \
    npm i -g yarn && \
    rm -rf /usr/share/man /tmp/* /var/cache/apk/* /root/.npm /root/.node-gyp /root/.gnupg

ENV DOCKER_HOST=tcp://docker:2375 \

# EOF
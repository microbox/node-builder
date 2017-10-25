FROM alpine:edge
MAINTAINER Ling <x@e2.to>
ENV NODE_VERSION=6.11.4

RUN apk add --no-cache --update nodejs=${NODE_VERSION}-r0 ca-certificates bash python make g++ && \
    rm -rf /usr/share/man /tmp/* /var/cache/apk/* /root/.npm /root/.node-gyp /root/.gnupg

# EOF
# Docker base image for OpenJDK8.
FROM alpine:3.2
MAINTAINER Stuart Wong <cgs.wong@gmail.com>

RUN apk update &&\
    apk upgrade &&\
    apk add openjdk8 --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted &&\
    # Cleanup
    rm -rf /tmp/* \
        /var/cache/apk/*

# Start container
CMD ["java","-version"]

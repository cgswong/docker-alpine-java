# Docker base image for OpenJRE8.
FROM gliderlabs/alpine:3.4
MAINTAINER Stuart Wong <cgs.wong@gmail.com>

RUN apk --no-cache add openjdk8-jre  &&\
    rm -rf /tmp/*

# Start container
CMD ["java","-version"]

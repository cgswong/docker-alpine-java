# Docker base image for OpenJDK8.
FROM gliderlabs/alpine:3.3
MAINTAINER Stuart Wong <cgs.wong@gmail.com>

RUN apk --no-cache add openjdk8  &&\
    rm -rf /tmp/*

# Start container
CMD ["java","-version"]

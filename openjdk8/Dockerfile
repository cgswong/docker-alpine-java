# Docker base image for OpenJDK8.
FROM gliderlabs/alpine:3.6
MAINTAINER Stuart Wong <cgs.wong@gmail.com>

ENV JAVA_PKG=openjdk8

RUN apk --no-cache update &&\
    apk --no-cache upgrade &&\
    apk --no-cache add ${JAVA_PKG}  &&\
    rm -rf /tmp/*

# Start container
CMD ["java","-version"]

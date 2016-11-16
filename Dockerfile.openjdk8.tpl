# Docker base image for OpenJDK8.
FROM gliderlabs/alpine:3.4
MAINTAINER Stuart Wong <cgs.wong@gmail.com>

ENV JAVA_PKG=%%JVM_PKG%%

RUN apk --no-cache add ${JAVA_PKG}  &&\
    rm -rf /tmp/*

# Start container
CMD ["java","-version"]

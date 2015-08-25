# Alpine Java
Docker image for Java based on Alpine Linux base image. Provides:

- jdk8: Oracle JDK 8 (~175 MB)
- jre8 (latest): Oracle JRE 8 (~172 MB)
- openjdk8: OpenJDK 8 (~175 MB)
- openjre8: OpenJRE 8 (~111 MB)

# Using the images
By default the image just outputs the Java version. You can either use a volume mount and provide your own flags to run a JAR file, or use this image as a base image (which is the primary intent). To use as a base image simply start your Dockerfile with `FROM cgswong/java:jdk8`.

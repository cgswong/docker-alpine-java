# Alpine Java
Docker image for Java based on Alpine Linux base image. Provides:

- orajdk8: Oracle JDK 8
- orajre8: Oracle JRE 8
- openjdk8: OpenJDK 8
- openjre8: OpenJRE 8

# Using the images
By default the image just outputs the Java version. You can either use a volume mount and provide your own flags to run a JAR file, or use this image as a base image (which is the primary intent). To use as a base image simply start your Dockerfile with `FROM cgswong/java:openjdk8`.

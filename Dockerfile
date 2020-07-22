FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAR_FILE=target/demo-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar
CMD ["/usr/bin/java","-Xmx300m", "-jar", "app.jar"]
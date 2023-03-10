# Base image
FROM openjdk:17-jdk-slim

# Keep consistent with pom.xml
ENV APP_JAR_NAME flyio

RUN mkdir /app

ADD ./target/flyio.jar /app/

WORKDIR /app

# Expose port
EXPOSE 8080

ENTRYPOINT ["java", "-Duser.timezone=Asia/Saigon", "-jar", "flyio.jar"]

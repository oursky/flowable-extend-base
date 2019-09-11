FROM openjdk:8-jdk-alpine

WORKDIR /app

COPY ./.mvn ./.mvn
COPY ./mvnw ./mvnw.cmd ./pom.xml ./

RUN ./mvnw dependency:go-offline

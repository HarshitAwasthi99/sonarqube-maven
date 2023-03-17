FROM openjdk:8-jdk-alpine3.8 AS builder
RUN java -version
COPY . /usr/src/myapp/
WORKDIR /usr/src/myapp/
RUN apk --no-cache add maven && mvn --version
RUN mvn clean install

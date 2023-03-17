FROM maven:latest AS builder

COPY . /usr/src/myapp/
WORKDIR /usr/src/myapp/

RUN mvn clean install

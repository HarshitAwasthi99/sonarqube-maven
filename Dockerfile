FROM maven:3.6.0-jdk-11-slim
COPY . .
Workdir .
mvn clean install


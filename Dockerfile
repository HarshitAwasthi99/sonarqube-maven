FROM openjdk:8-jdk-alpine3.7 AS builder
RUN java -version
COPY . /usr/src/myapp/
WORKDIR /usr/src/myapp/
RUN apk --no-cache add maven && mvn --version
RUN mvn clean install

FROM maven
WORKDIR /root/
COPY --from=builder /usr/src/myapp/target/sonarscanner-maven-basic-1.0-SNAPSHOT.jar .
ENTRYPOINT ["java", "-jar", "sonarscanner-maven-basic-1.0-SNAPSHOT.jar"]

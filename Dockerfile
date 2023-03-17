FROM maven:latest-jdk-8-alpine AS builder

COPY . /usr/src/myapp/
WORKDIR /usr/src/myapp/

RUN mvn clean install


FROM maven
WORKDIR /root/
COPY --from=builder /usr/src/myapp/target/sonarscanner-maven-basic-1.0-SNAPSHOT.jar .
EXPOSE 8123
ENTRYPOINT ["java", "-jar", "sonarscanner-maven-basic-1.0-SNAPSHOT.jar"]

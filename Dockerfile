FROM ubuntu AS builder

COPY . /usr/src/myapp/
WORKDIR /usr/src/myapp/
RUN apt-get update  
RUN apt-get install -y maven
RUN mvn install --file pom.xml

From maven
WORKDIR /root/
COPY --from=builder /usr/src/myapp/target/sonarscanner-maven-basic-1.0-SNAPSHOT.jar .
ENTRYPOINT ["java", "-jar", "sonarscanner-maven-basic-1.0-SNAPSHOT.jar"]


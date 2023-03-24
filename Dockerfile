FROM maven:3.6.0-jdk-11-slim
COPY . .
Workdir .
# Copy ./settings.xml /root/.m2/
RUN  mvn clean verify sonar:sonar -Dsonar.login=f2ceb89c284edd966ccad8c1ce267eb5572a051c -Dsonar.host.url=http://40.86.126.78:9000



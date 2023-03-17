FROM ubuntu

COPY . /usr/src/myapp/
WORKDIR /usr/src/myapp/
Run apt install mvn

RUN mvn clean install

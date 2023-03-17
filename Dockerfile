FROM ubuntu

COPY . /usr/src/myapp/
WORKDIR /usr/src/myapp/
RUN apt install mvn

RUN mvn clean install

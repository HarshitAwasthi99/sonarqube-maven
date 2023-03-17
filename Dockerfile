FROM ubuntu

COPY . /usr/src/myapp/
WORKDIR /usr/src/myapp/
RUN apt-get update  
RUN apt-get install -y maven
CMD sleep 1000

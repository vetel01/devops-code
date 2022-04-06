# Pull base image 
From tomcat:8-jre8 

RUN docker rm $(docker ps -a -q)
RUN docker rmi -f $(docker images -q)

# Maintainer 
MAINTAINER "kserge2001@yahoo.fr" 
COPY webapp/target/devops.war /usr/local/tomcat/webapps


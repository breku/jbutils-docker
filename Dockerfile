FROM tomcat:8-jre8

RUN apt-get update && apt-get -y upgrade

RUN apt-get install less -y



EXPOSE 8080

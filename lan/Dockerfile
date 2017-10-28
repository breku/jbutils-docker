FROM tomcat:8-jre8

RUN apt-get update && apt-get -y upgrade

RUN apt-get install -y less
RUN apt-get install -y procps
RUN apt-get install -y vim
RUN apt-get install -y nano
RUN apt-get install -y apache2

# supervisor installation &&
# create directory for child images to store configuration in
RUN apt-get -y install supervisor && \
  mkdir -p /var/log/supervisor && \
  mkdir -p /etc/supervisor/conf.d



COPY image/ /

RUN a2enmod proxy_http




#ENV LANG en_US.UTF-8
#ENV LANGUAGE en_US.UTF-8
#ENV LC_ALL en_US.UTF-8
#ENV HOME /root


# default command
CMD ["supervisord", "-c", "/etc/supervisor/supervisor.conf"]


EXPOSE 8080
EXPOSE 80

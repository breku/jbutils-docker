FROM postgres:10.0

RUN apt-get update && apt-get -y upgrade

RUN apt-get install -y less
RUN apt-get install -y procps
RUN apt-get install -y vim
RUN apt-get install -y nano


COPY image/ /

RUN chown postgres:postgres /postgres-config/*

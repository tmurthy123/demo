FROM ubuntu:16.04

# disable interactive functions
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
apt-get install -y apache2  && \
rm -rf /var/lib/apt/lists/*

# add apache2 service to supervisor

EXPOSE 80

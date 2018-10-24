FROM ubuntu:18.10
MAINTAINER  mfigueroa@arsys.es

RUN useradd mfigueroa

RUN apt-get update
RUN apt-get install nginx -y

RUN echo '<marquee>Hello !!</marquee>' \
        > /var/www/html/index.html

RUN  apt-get update

EXPOSE 80

ENV DATABASE_IP 192.167.2.9

RUN usermod -aG sudo mfigueroa

USER mfigueroa

VOLUME [ "/my-data" ]




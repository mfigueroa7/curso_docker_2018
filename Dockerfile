FROM ubuntu:18.10
MAINTAINER  mfigueroa@arsys.es

RUN apt-get update
RUN apt-get install nginx -y

RUN echo '<marquee>Hello !!</marquee>' \
        > /var/www/html/index.html

EXPOSE 80



FROM nginx:alpine
MAINTAINER Sathish Kumar <sathish26586@gmail.com>

#Install CURL
RUN apk add --update curl bash

ADD nginx/nginx.conf /etc/nginx/nginx.conf
ADD nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf

ADD data/www /var/www/html

RUN ln -sf /dev/stdout /var/log/nginx/access.log \
    && ln -sf /dev/stderr /var/log/nginx/error.log

EXPOSE 80 443

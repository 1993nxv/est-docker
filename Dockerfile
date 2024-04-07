FROM ubuntu:18.04

RUN apt-get update \
    && apt-get install -y nginx \
    && apt-get clean \
    && rm -rf /var/lib/apt/lib/lists/* /tmp/* /var/tmp/* \
    && echo "deamon off;" >> /etc/nginx/nginx.conf

EXPOSE 80
CMD [ "nginx" ]
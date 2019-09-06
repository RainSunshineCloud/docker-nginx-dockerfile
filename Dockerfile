FROM docker.io/nginx
MAINTAINER ryanwu
COPY ./source/nginx.conf /etc/nginx/nginx.conf
RUN apt update; apt install vim procps net-tools -y; apt clean all;
RUN mkdir -p /data/nginx/run && mkdir -p /data/nginx/log/default/ && chown -R nginx:nginx /data/nginx/log/default  && mkdir -p /data/nginx/log/dev_test_com/ && chown -R nginx:nginx /data/nginx/log/dev_test_com && mkdir -p /data/nginx/web/default && mkdir -p /data/nginx/web/dev_test_com && rm -rf /etc/nginx/conf.d/*
COPY ./source/dev_test_com.conf /etc/nginx/conf.d/dev_test_com.conf
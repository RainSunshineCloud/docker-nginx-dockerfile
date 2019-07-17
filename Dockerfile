FROM docker.io/nginx
MAINTAINER ryanwu
COPY ./source/nginx.conf /etc/nginx/nginx.conf 
RUN apt update && apt install vim procps net-tools -y
RUN mkdir -p /data/nginx/run && mkdir -p /data/nginx/log/access/ && chown -R nginx:nginx /data/nginx/log/access  && mkdir -p /data/nginx/log/error/ && chown -R nginx:nginx /data/nginx/log/error && mkdir -p /data/nginx/web/default && mkdir -p /data/nginx/web/dev_test_com
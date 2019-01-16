FROM nginx:latest
MAINTAINER VentasPOP <ops@ventaspop.com>

RUN apt-get update

WORKDIR /home

ADD nginx.conf /etc/nginx/nginx.conf
COPY bin/entrypoint.sh /home/bin/entrypoint.sh
RUN chmod +x /home/bin/entrypoint.sh
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

ENTRYPOINT ["/home/bin/entrypoint.sh"]

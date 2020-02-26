FROM debian

RUN apt update && apt upgrade -y && apt install -y \
    apache2 \
    certbot \
    inotify-tools \
  && rm -rf /var/lib/apt/lists/*

EXPOSE 80/tcp 443/tcp

VOLUME /etc/letsencrypt /var/www/html

COPY *-httpd /usr/local/bin/
RUN chmod 750 /usr/local/bin/start-httpd

CMD /usr/local/bin/start-httpd

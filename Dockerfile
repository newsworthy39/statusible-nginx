FROM newsworthy39/boxeye-php-qs:latest

LABEL maintainer="newsworthy39@github.com"

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends nginx 

RUN  rm -rf /etc/nginx/sites-enabled/*

COPY vhost.conf /etc/nginx/sites-enabled/vhost.conf

CMD ["nginx", "-g", "daemon off;"]
FROM newsworthy39/statusible-php:latest

LABEL maintainer="newsworthy39@github.com"

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends nginx 

RUN rm -rf /etc/nginx/sites-enabled/*

CMD ["nginx", "-g", "daemon off;"]
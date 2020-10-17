FROM romeoz/docker-apache-php:7.3

RUN apt-get update ;\
    apt-get install vim -y

RUN mkdir -p /var/www/app/backend ;\
    mkdir -p /var/www/app/frontend

COPY backend /var/www/app/backend
COPY frontend /var/www/app/frontend

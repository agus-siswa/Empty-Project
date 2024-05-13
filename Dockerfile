FROM webdevops/php-nginx:7.4-alpine

COPY ./builder/php.ini /opt/docker/etc/php/php.ini
COPY ./builder/vhost.conf /opt/docker/etc/nginx/vhost.conf
COPY composer.json composer.lock /app/
RUN composer install --no-interaction --no-scripts --no-suggest
COPY . /app
FROM wordpress:5.8.1-php8.0-fpm-alpine

RUN apk add --no-cache \
    apache2 \
    apache2-proxy \
    apache2-ssl

COPY httpd.conf /etc/apache2/httpd.conf
COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]
CMD ["php-fpm"]

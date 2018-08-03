FROM webdevops/php:alpine-php7
# FROM php:7.2-fpm

# install mhsendmail and configure it to use mailhog
RUN apk add --no-cache nano curl
# RUN go get github.com/mailhog/mhsendmail
# RUN cp /root/go/bin/mhsendmail /usr/bin/mhsendmail
# RUN echo 'sendmail_path = /usr/bin/mhsendmail --smtp-addr mail:1025' > /opt/docker/etc/php/php.ini

# install wp cli
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

WORKDIR /var/www/html/


FROM php:8.1-apache

COPY ./index.php /var/www/html

RUN docker-php-ext-install mysqli pdo_mysql
RUN apt-get update \
    && apt-get install -y libzip-dev \
    && apt-get install -y zlib1g-dev \
    && rm -rf /var/lib/apt/lists/* \
    && docker-php-ext-install zip

RUN chown -R www-data:www-data /var/www/html/
RUN chmod -R o-wx /var/www/html

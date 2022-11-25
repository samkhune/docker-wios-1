FROM php:7.4-fpm
RUN docker-php-ext-install pdo_mysql
COPY . /usr/local/
RUN bash -x /usr/local/script.sh 


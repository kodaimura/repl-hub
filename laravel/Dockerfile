FROM php:8.2-apache

#COPY ./000-default.conf /etc/apache2/sites-available/000-default.conf

# PHP設定
COPY ./php.ini /usr/local/etc/php/php.ini
RUN chmod 644 /usr/local/etc/php/php.ini

# Apache のモジュールを有効化
RUN a2enmod deflate expires rewrite

# Composer インストール
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

ミドルウェアインストール
RUN apt-get update \
    && apt-get install -y \
    git \
    zip \
    unzip \
    vim \
    libpng-dev \
    libpq-dev

RUN docker-php-ext-install pdo_mysql

EXPOSE 80
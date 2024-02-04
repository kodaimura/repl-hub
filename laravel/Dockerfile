FROM php:8.2-apache

COPY ./000-default.conf /etc/apache2/sites-available/000-default.conf

# PHP設定
# COPY ./php.ini /usr/local/etc/php/php.ini
# RUN chmod 644 /usr/local/etc/php/php.ini

# Composer インストール
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer
# RUN cd /usr/bin && curl -s http://getcomposer.org/installer | php && ln -s /usr/bin/composer.phar /usr/bin/composer

# ミドルウェアインストール
# RUN apt-get update \
# && apt-get install -y \
# git \
# zip \
# unzip \
# vim \
# libpng-dev \
# libpq-dev \
# && docker-php-ext-install pdo_mysql

RUN apt-get update && apt-get install -y \
    git \
    zip \
    unzip
    #    libfreetype6-dev \
    #    libjpeg62-turbo-dev \
    #    libpng-dev \
    #    git \
    #    zip \
    #    unzip \
    #    vim \
    #    libpng-dev \
    #    libpq-dev \
    #    libonig-dev \
    #    libxml2-dev \
    #    libzip-dev \
    #    wget \
    #    msmtp \
    #    msmtp-mta \
    #&& docker-php-ext-configure gd --with-freetype --with-jpeg \
    #&& docker-php-ext-install -j$(nproc) gd \
    #&& docker-php-ext-install pdo pdo_mysql mysqli \
    # && docker-php-ext-configure imap --with-kerberos --with-imap-ssl \
    # && docker-php-ext-install imap \
    #&& docker-php-ext-install zip

EXPOSE 8000
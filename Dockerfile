FROM vulhub/php:5.6-apache

MAINTAINER phithon <root@leavesongs.com>

COPY sources.list /etc/apt/sources.list
COPY www /var/www/html

# Install xdebug
RUN curl https://xdebug.org/files/xdebug-2.5.5.tgz -o /tmp/xdebug-2.5.5.tgz \
    && pecl install /tmp/xdebug-2.5.5.tgz \
    && docker-php-ext-enable xdebug

RUN set -ex \
    && apt-get update \
    && apt-get install -y git wget zip unzip vim curl \
    && curl https://xdebug.org/files/xdebug-2.5.5.tgz -o /tmp/xdebug-2.5.5.tgz \
    && pecl install /tmp/xdebug-2.5.5.tgz \
    && docker-php-ext-enable xdebug \
    && wget https://dl.laravel-china.org/composer.phar -O /usr/local/bin/composer \
    && chmod a+x /usr/local/bin/composer \
    && cd /var/www/html/ && ls -l \
    # && composer install \
    && ls -l /var/www/html \
    && rm -rf /var/lib/apt/lists/*
FROM ubuntu:xenial

ENV LANG=C.UTF-8

RUN apt-get update \
  && apt-get install -y zip unzip curl vim nginx git

RUN apt-get install -y software-properties-common && \
    add-apt-repository -y ppa:ondrej/php

RUN apt-get update && \
    apt-get install -y --allow-downgrades --allow-remove-essential \
        --allow-change-held-packages \
        php7.1-cli \
        php7.1-common \
        php7.1-curl \
        php7.1-intl \
        php7.1-json \
        php7.1-xml \
        php7.1-mbstring \
        php7.1-mcrypt \
        php7.1-mysql \
        php7.1-pgsql \
        php7.1-sqlite \
        php7.1-sqlite3 \
        php7.1-zip \
        php7.1-bcmath \
        php7.1-memcached \
        php7.1-gd \
        php7.1-dev \
        pkg-config \
        libcurl4-openssl-dev \
        libedit-dev \
        libssl-dev \
        libxml2-dev \
        xz-utils \
        libsqlite3-dev \
        sqlite3 \
        git \
        curl \
        vim \
        nano \
        postgresql-client \
    && apt-get clean

# Install composer and add its bin to the PATH.
RUN curl -s http://getcomposer.org/installer | php && \
    echo "export PATH=${PATH}:/var/www/vendor/bin" >> ~/.bashrc && \
    mv composer.phar /usr/local/bin/composer

RUN apt-get install -y php7.1-fpm redis-server

ADD nginx.conf /etc/nginx/

RUN usermod -o -u 1000 www-data

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -

RUN apt-get update -yqq && \
  apt-get -y install rubygems build-essential ruby-dev && \
  gem install sass --no-user-install

RUN apt-get install -y nodejs

RUN npm install -y -g gulp vue-cli grunt-cli webpack jest jest-cli

RUN npm rebuild node-sass --force

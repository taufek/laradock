FROM ubuntu:xenial

ENV LANG=C.UTF-8

RUN apt-get update
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:ondrej/php
RUN apt-get update
RUN apt-get -y install zip
RUN apt-get install -y vim wget unzip
RUN apt-get -y install php7.1 php7.1-xml
RUN apt-get -y install php-mcrypt php-gd php-mbstring php-zip php-curl

RUN apt-get -y install xdg-utils
RUN apt-get -y install libxpm4 libxrender1 libgtk2.0-0 libnss3 libgconf-2-4
RUN apt-get -y install xvfb gtk2-engines-pixbuf
RUN apt-get -y install xfonts-cyrillic xfonts-100dpi xfonts-75dpi xfonts-base xfonts-scalable
RUN apt-get -y install imagemagick x11-apps

RUN apt-get -y install xvfb gtk2-engines-pixbuf

RUN apt-get -y install curl
RUN apt-get -y install php7.1-mysql

RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer
RUN chmod +x /usr/local/bin/composer
RUN composer global require 'laravel/installer'

RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN dpkg -i --force-depends google-chrome-stable_current_amd64.deb
RUN apt-get -y -f install
RUN dpkg -i --force-depends google-chrome-stable_current_amd64.deb
RUN rm google-chrome-stable_current_amd64.deb

RUN wget https://chromedriver.storage.googleapis.com/2.31/chromedriver_linux64.zip
RUN unzip chromedriver_linux64.zip
RUN mv chromedriver /bin/
RUN rm chromedriver_linux64.zip

RUN apt-get install -y php7.1-intl

# Set default work directory
WORKDIR /var/www

FROM ubuntu:trusty-20190515
MAINTAINER Fabrice Kabongo <fabrice.k.kabongo[at]gmail.com>

RUN apt-get -y update && apt-get install -y python-software-properties \
software-properties-common
RUN add-apt-repository ppa:ondrej/php

RUN apt-get -y update && apt-get install -y --force-yes \
 acl\
 git \
 php5.6 \
 php5.6-cli \
 php5.6-curl \
 php5.6-xml \
 php5.6-mysql \
 php5.6-sqlite \
 php5.6-zip
 
 
RUN apt-get install -y curl \
 wget \
 vim \
 telnet
 
 
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN apt-get install -y apache2

RUN a2enmod rewrite

RUN wget https://phar.phpunit.de/phpunit-5.7.phar && chmod +x phpunit-5.7.phar && mv phpunit-5.7.phar /usr/local/bin/phpunit && phpunit --version

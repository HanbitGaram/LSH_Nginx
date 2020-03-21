#!/bin/bash

apt-get -y update
apt-get -y upgrade
apt -y update
apt -y upgrade
apt-get -y install unzip gcc g++ openssl zlib1g-dev libpcre3 libpcre3-dev make git

git clone https://github.com/HanbitGaram/LSH_Nginx.git
cd LSH_Nginx

./configure \
--prefix=/usr/local/nginx \
--user=www-data \
--group=www-data \
--with-openssl=/usr/bin

make -j 4
make install -j 4

ln -s /usr/local/nginx/sbin/nginx /usr/bin/nginx
/usr/bin/nginx -s stop
/usr/bin/nginx
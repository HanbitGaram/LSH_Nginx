#!/bin/bash

apt-get -y update
apt-get -y upgrade
apt -y update
apt -y upgrade
apt-get -y install unzip gcc g++ openssl zlib1g-dev libpcre3 libpcre3-dev make git libssl-dev

mkdir /opt/
git clone https://github.com/HanbitGaram/LSH_Nginx.git /opt/LSH_nginx
cd /opt/LSH_nginx
git pull

rm -rf /opt/LSH_nginx/openssl_111g
wget https://www.openssl.org/source/openssl-1.1.1g.tar.gz -O ./openssl_111g.tar.gz
tar -xvzpf openssl_111g.tar.gz
mv openssl-1.1.1g openssl_111g

git clone https://github.com/openresty/headers-more-nginx-module.git
cd headers-more-nginx-module
git pull

cd ..

./configure \
--prefix=/usr/local/nginx \
--user=www-data \
--group=www-data \
--with-openssl=/opt/LSH_nginx/openssl_111g \
--with-http_ssl_module \
--with-http_realip_module \
--with-http_stub_status_module \
--add-module=/opt/LSH_nginx/headers-more-nginx-module


make -j 4
make install -j 4

ln -s /usr/local/nginx/sbin/nginx /usr/bin/nginx
/usr/bin/nginx -s stop
/usr/bin/nginx
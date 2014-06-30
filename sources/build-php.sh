#!/bin/bash

baseBuildDir="/Volumes/Home/Users/mfm/Documents/development/lighttpd/build"
version="5.5.14"
 
cdCmd="cd php-$version"
$cdCmd
make clean
cmd="./configure --prefix=$baseBuildDir/php \
--enable-cgi \
--with-mysql=mysqlnd \
--with-mysqli=mysqlnd \
--with-pdo-mysql=mysqlnd \
--with-openssl \
--with-pdo-pgsql"
$cmd
make all
make install

#./configure --prefix=/Volumes/Home/Users/mfm/Documents/development/lighttpd/build/php 

# we would not need it for production as we us fastcgi but we need it for dev
#--disable-cli \

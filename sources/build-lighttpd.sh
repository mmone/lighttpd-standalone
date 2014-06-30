#!/bin/bash

baseBuildDir="/Volumes/Home/Users/mfm/Documents/development/lighttpd/build"
version="1.4.35"
 
cdCmd="cd lighttpd-$version"
$cdCmd
make clean
cmd="./configure --prefix=$baseBuildDir/lighttpd  --libdir=$baseBuildDir/lighttpd/lib"
$cmd
make all
make install
#!/bin/bash

tar -xzvf libtirpc-libtirpc-1-2-7-rc4.tar.gz 
cd libtirpc-libtirpc-1-2-7-rc4
./bootstrap 
./configure  --disable-gssapi
make
make install
cd -




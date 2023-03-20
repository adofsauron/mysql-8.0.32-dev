#!/bin/bash

cd mysql-8.0.32

mkdir -p build
cd build

export CPPFLAGS="-DOPTIMIZER_TRACE"

cmake .. \
    -DCMAKE_BUILD_TYPE=Debug \
    -DDOWNLOAD_BOOST=1 -DWITH_BOOST=/tmp \
    -DWITH_UNIT_TESTS=OFF

make -j`nproc`
make install

cd ../..

#!/bin/bash
./configure --prefix=/usr \
            --with-gitconfig=/etc/gitconfig \
            --with-libpcre \
            --without-python &&
make -j $SHED_NUM_JOBS &&
make DESTDIR="$SHED_FAKE_ROOT" install

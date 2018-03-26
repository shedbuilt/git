#!/bin/bash
./configure --prefix=/usr \
            --with-gitconfig=/etc/gitconfig \
            --with-libpcre \
            --without-python &&
make -j $SHED_NUMJOBS &&
make DESTDIR="$SHED_FAKEROOT" install

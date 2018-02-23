#!/bin/bash
./configure --prefix=/usr \
            --with-gitconfig=/etc/gitconfig && \
make -j $SHED_NUMJOBS && \
make DESTDIR="$SHED_FAKEROOT" install

#!/bin/sh

autoreconf -vif
git submodule update --init
./configure $@

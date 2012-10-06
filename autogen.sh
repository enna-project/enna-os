#!/bin/sh

autoreconf -vif
git submodule update
./configure $@
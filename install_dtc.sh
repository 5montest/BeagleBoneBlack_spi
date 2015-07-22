#!/usr/bin/env sh

git clone https://github.com/RobertCNelson/dtc.git ~/git/dtc/

cd ~/git/dtc/
make clean
git checkout master -f
git pull
make clean
make PREFIX=/usr/local CC=gcc CROSS_COMPILE=all
make PREFIX=/usr/local/ install


#!/usr/bin/env bash

git submodule init && git submodule update

PLUGINS=.vim/bundle/*
orig=$PWD

for f in $PLUGINS
do
    cd $f
    git checkout master
    git pull
    cd $orig
done

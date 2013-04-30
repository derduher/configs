#!/usr/bin/env bash
PLUGINS=.vim/bundle/*
orig=$PWD

for f in $PLUGINS
do
    cd $f
    git checkout master
    git pull
    cd $orig
done

git submodule init && git submodule update


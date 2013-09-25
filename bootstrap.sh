#!/usr/bin/env bash
cd "$(dirname "${BASH_SOURCE}")"
git pull origin master
function doIt() {
	rsync --exclude ".git/" --exclude ".DS_Store" --exclude "updatePlugins.sh" --exclude "bootstrap.sh" --exclude "README.md" -av --no-perms . ~
    source ~/.bash_profile
}
# update vim submodules
git submodule init && git submodule update

PLUGINS=.vim/bundle/*
orig=$PWD

for f in $PLUGINS
do
    cd $f
    git checkout master
    git pull &
    cd $orig
done
wait

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt
	fi
fi
unset doIt

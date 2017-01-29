#!/usr/bin/env bash
cd "$(dirname "${BASH_SOURCE}")"

function doIt() {
	rsync --exclude ".git/" --exclude ".DS_Store" -av --no-perms ~/.vim/UltiSnips ./.vim/
	rsync --exclude ".git/" --exclude ".DS_Store" --exclude "updatePlugins.sh" --exclude "bootstrap.sh" --exclude "README.md" -av --no-perms . ~

  orig=$PWD

  vim -u ~/.vim/bundles.vim +PlugUpdate +qall

  source ~/.bash_profile
}


git pull origin master
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

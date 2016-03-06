#!/usr/bin/env bash
cd "$(dirname "${BASH_SOURCE}")"

function doIt() {
	rsync --exclude ".git/" --exclude ".DS_Store" -av --no-perms ~/.vim/UltiSnips ./.vim/
	rsync --exclude ".git/" --exclude ".DS_Store" --exclude "updatePlugins.sh" --exclude "bootstrap.sh" --exclude "README.md" -av --no-perms . ~

  orig=$PWD

  if [ ! -d ~/.vim/bundle/Vundle.vim ]
  then
    cd ~/
    git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    vim -u ~/.vim/bundles.vim +PluginInstall +qall
    cd ~/.vim/bundle/vimproc.vim
    make
    cd $orig
  else
    vim -u ~/.vim/bundles.vim +PluginUpdate +qall
  fi

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

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'scrooloose/nerdtree'
Plugin 'pangloss/vim-javascript'
Plugin 'ddollar/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'Townk/vim-autoclose'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-abolish'
"Plugin 'dominics/vim-filetype-xdebug'
Plugin 'Shougo/neocomplete'
Plugin 'Shougo/neosnippet'
"Plugin 'honza/vim-snippets'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'godlygeek/tabular'




" All of your Plugins must be added before the following line
call vundle#end()            " required

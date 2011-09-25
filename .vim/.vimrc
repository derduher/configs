set nocompatible
set incsearch
set ignorecase
set number
"set rnu " relative line line numbers
syntax enable
set spell
set ts=2 " number of spaces that a tab in file counts for
set sw=2
set sts=2 " soft tab stop makes tabs appear to be 2 spaces
set ai " auto indent
set si " smart indent
set spr " puts the new window to the right.
set smartcase " overrides ignore case when you type a capital letter.
set wildmode=list,longest
set foldmethod=syntax
set ml
filetype plugin indent on 
set foldenable
set foldlevel=0 " 0 all folds closed
set foldcolumn=3
let php_folding = 1
let javaScript_fold = 1
let javascript_fold = 1
let javascript_enable_domhtmlcss = 1
call pathogen#infect()
call pathogen#helptags()
nnoremap <silent> <F8> :TlistToggle<CR>
set list " show the tabs and line returns
set listchars=tab:⇨\ ,trail:.,eol:¬

set t_Co=256 " full range of colors for vim
colorscheme mustang
set history=200
set cursorline " highlights line the cursor is on.
set enc=utf-8
set showmatch " not entirely sure how I feel about this

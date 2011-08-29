set incsearch
set number
set rnu " relative line line numbers
syntax enable
set spell
set ts=2
set sw=2
set sts=2
set ai 
set si 
set wildmode=list:longest
set foldmethod=syntax
set ml 
set nocompatible
filetype plugin indent on 
set foldlevel=0
set foldenable
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

set nocompatible
set incsearch " incremental search start showing results before enter is pressed
set ignorecase " search case insensitively
set number " show the line number
"set rnu " relative line line numbers
syntax enable " necessary for folding and syntax highlighting
set spell " spell gooder
set ts=3 " number of spaces that a tab in file counts for
set sw=3
set sts=3 " soft tab stop makes tabs appear to be 2 spaces
set ai " auto indent
set si " smart indent
set spr " puts the new window to the right.
set smartcase " overrides ignore case when you type a capital letter.
set wildmode=list,longest
set ml
set clipboard=unnamed
set history=200
set cursorline " highlights line the cursor is on.
set enc=utf-8
set showmatch " helps detect unbalanced brackets?

filetype plugin indent on " required for folding to work

" folding
set foldenable
set foldmethod=syntax
set foldlevel=0 " 0 all folds closed
set foldcolumn=2
let php_folding = 1
let javaScript_fold = 1
let javascript_fold = 1
let javascript_enable_domhtmlcss = 1

call pathogen#infect()
call pathogen#helptags()

" list ctags
nnoremap <silent> <F8> :TlistToggle<CR>

set list " show the tabs and line returns
set listchars=tab:\ \ ,trail:.,eol:¬
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2

" colors!!!
set t_Co=256 " full range of colors for vim
colorscheme molokai
set background=dark


" lots of remaps courtesy of https://github.com/8bitDesigner/Dotfiles/blob/master/.vimrc

let mapleader = "," " leader mapping
map <leader>n :NERDTreeToggle<CR>

" Tab/window shortcuts courtesy Paul Sweeny
map <leader>t :tabnew<CR>
"map <leader>] :tabn<CR>
"map <leader>[ :tabp<CR>

" Window navigation mappings
nmap <leader>h <C-w>h
nmap <leader>j <C-w>j
nmap <leader>k <C-w>k
nmap <leader>l <C-w>l

" Switch between dark and light backgrounds
nmap \ :call ToggleBG()<CR>
function! ToggleBG()
  if &background == 'light'
    set background=dark
  else
    set background=light
  endif
endfunction

" I paste frequently
map <leader>p :set paste!<CR>

" Because I can't type worth poo
cmap W w

" TODO: handle case with space after
let @q="i'lwi'"

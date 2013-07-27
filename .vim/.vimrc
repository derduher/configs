set nocompatible
set incsearch " incremental search start showing results before enter is pressed
set ignorecase " search case insensitively
set number " show the line number
set rnu " relative line line numbers
syntax enable " necessary for folding and syntax highlighting
set spell " spell gooder
set ts=4 " number of spaces that a tab in file counts for
set sw=4
set sts=4 " soft tab stop makes tabs appear to be 2 spaces
set ai " auto indent
set si " smart indent
set smarttab " use spaces
set expandtab 
set spr " puts the new window to the right.
set smartcase " overrides ignore case when you type a capital letter.
set wildmode=list,longest
set ml
set history=200
set cursorline " highlights line the cursor is on.
set enc=utf-8
set showmatch " helps detect unbalanced brackets?
let g:hardtime_default_on = 1
set nowrap

filetype plugin indent on " required for folding to work
let g:acp_enableAtStartup = 0
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3

" folding
"set foldenable
"set foldmethod=indent
"set foldlevel=6 " 0 all folds closed
"set foldcolumn=2
"let php_folding = 1
"let javaScript_fold = 1
"let javascript_fold = 1
"let javascript_enable_domhtmlcss = 1

call pathogen#infect()
"call pathogen#helptags()
" call pathogen#helptags

" Enable syntastic syntax checking
let g:syntastic_quiet_warnings=0
let g:syntastic_auto_loc_list=1 " error window will be automatically opened when errors are detected, and closed when none are detected.
let g:syntastic_html_checkers=['w3']


"let g:JSLintHighlightErrorLine = 1

set list " show the tabs and line returns
set listchars=tab:\ \ ,trail:.,eol:¬

" colors!!!
set t_Co=256 " full range of colors for vim
"colorscheme molokai
set background=dark
colorscheme solarized


" lots of remaps courtesy of https://github.com/8bitDesigner/Dotfiles/blob/master/.vimrc

let mapleader = "," " leader mapping
map <leader>n :NERDTreeToggle<CR>
map <leader>s :Gstatus<CR>

" Tab/window shortcuts courtesy Paul Sweeny
map <leader>t :tabnew<CR>
map <leader>H :HardTimeToggle<CR>

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
"cmap <leader>w w "this is great and all until you need capital W in a regex
"cmap Q q

" TODO: handle case with space after
let @q="i'lwi'"
let @w="f'xf'x"

set noswapfile
set nobackup
set nowritebackup
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags


if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

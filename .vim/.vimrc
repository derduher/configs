source ~/.vim/bundles.vim
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line





set hlsearch " highlight searches
set incsearch " incremental search start showing results before enter is pressed
set ignorecase " search case insensitively
set smartcase " overrides ignore case when you type a capital letter.

set number " show the line number
"set rnu " relative line line numbers

syntax enable " necessary for folding and syntax highlighting

set spell " spell gooder

set ts=2 " width of tab
set sw=2 " auto indent width
set sts=2 " soft tab stop makes tabs appear to be 2 spaces
set ai " auto indent
set si " smart indent
set smarttab " use spaces
set expandtab
set backspace=indent,eol,start


set wildmode=list,longest
set ml
set history=200
set cursorline " highlights line the cursor is on.
set cc=80 " Highlights 80th col.
set title "  show filename in window
set enc=utf-8
set showmatch " helps detect unbalanced brackets?

" Default shell and shell syntax
set shell=bash
let g:is_bash=1

" folding
"set foldenable
"set foldmethod=indent
"set foldlevel=6 " 0 all folds closed
"set foldcolumn=2
"let php_folding = 1
"let javaScript_fold = 1
"let javascript_fold = 1
"let javascript_enable_domhtmlcss = 1

"call pathogen#infect()

" Enable syntastic syntax checking
let g:syntastic_auto_loc_list=1 " error window will be automatically opened when errors are detected, and closed when none are detected.
" Nothing really does html that well
let g:syntastic_ignore_files=['.html$', '.hbs$']
let g:syntastic_javascript_checkers = ['standard']

"let g:javascript_conceal=1


set list " show the tabs and line returns
set listchars=tab:\ \ ,trail:·,eol:¬,nbsp:_,extends:❯,precedes:❮
set showbreak=↪\  " Character to precede line wraps

" colors!!!
set t_Co=256 " full range of colors for vim
set background=light
colorscheme solarized



" lots of remaps courtesy of https://github.com/8bitDesigner/Dotfiles/blob/master/.vimrc

let mapleader = "," " leader mapping
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>s :Gstatus<CR>

" Tab/window shortcuts courtesy Paul Sweeny
nmap <leader>t :tabnew<CR>

set spr " puts the new window to the right.
set splitbelow splitright
" Window navigation mappings
nmap <leader>h <C-w>h
nmap <leader>j <C-w>j
nmap <leader>k <C-w>k
nmap <leader>l <C-w>l

" esc is too far
inoremap jk <Esc>
"inoremap kj <Esc>
nnoremap <leader>= :Tabularize /=<CR>
vnoremap <leader>= :Tabularize /=<CR>
nnoremap <leader>; :Tabularize /^[^:]*\zs:/l0c1l0<CR>
vnoremap <leader>; :Tabularize /^[^:]*\zs:/l0c1l0<CR>

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

" Disables backups - we have version control
set noswapfile
set nobackup
set nowritebackup


" Performance
set ttyfast
" Update syntax highlighting for more lines increased scrolling performance
syntax sync minlines=256
" Don't syntax highlight long lines
set synmaxcol=256

" break up line on first space
let @b='^f s'

" Unite
nnoremap <leader>b :<C-u>Unite buffer -no-split -start-insert<CR>
nnoremap <leader>r :<C-u>Unite buffer file_rec/git:--cached:--others:--exclude-standard -no-split -start-insert file/new<CR>
"nnoremap <leader>r :<C-u>Unite buffer file_rec -no-split -input=!tmp\ !coverage\ !node_modules\ !lib\  -start-insert file/new<CR>
nnoremap <leader>R :<C-u>Unite buffer file/new file_rec -no-split -input=!tmp\ !coverage\ !node_modules\ !lib\  -start-insert<CR>

" Utilisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<leader>f"
let g:UltiSnipsJumpBackwardTrigger="<leader>F"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
au BufRead,BufNewFile *.es6 set ft=javascript

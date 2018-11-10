" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'scrooloose/nerdtree'
" Plug 'scrooloose/syntastic'
Plug 'Townk/vim-autoclose'
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-unimpaired'

Plug 'w0rp/ale'

" Plug 'pangloss/vim-javascript'
" Plug 'jelera/vim-javascript-syntax'
" Plug 'othree/yajs.vim'
Plug 'isRuslan/vim-es6'

"Plug 'dominics/vim-filetype-xdebug'
"Plug 'Shougo/neocomplete'
"Plug 'Shougo/neosnippet'
"Plug 'honza/vim-snippets'
Plug 'editorconfig/editorconfig-vim'
"Plug 'mustache/vim-mustache-handlebars'
Plug 'godlygeek/tabular'
" Plug 'digitaltoad/vim-jade'
" Plug 'SirVer/ultisnips'
Plug 'tpope/vim-markdown'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'Valloric/YouCompleteMe'

" All of your Plugs must be added before the following line
call plug#end()

set nocompatible
filetype off

" Plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized.git'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'yggdroot/indentLine'

" Python IDE
Plugin 'python-mode/python-mode', {'for': 'python', 'branch': 'develop'}

" Clojure
Plugin 'guns/vim-clojure-static'
Plugin 'guns/vim-sexp'
Plugin 'luochen1990/rainbow'
Plugin 'tpope/vim-sexp-mappings-for-regular-people'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-salve'

call vundle#end()
filetype plugin indent on

" Globals
set noswapfile
set encoding=utf-8
set number
set relativenumber
set cursorline
set laststatus=2

" Syntax
set tabstop=2 shiftwidth=2 expandtab

" Find
set path+=**
set wildmenu

" Solarized Colors
syntax on
colorscheme solarized
call togglebg#map("<F5>")

" User Key Mappings
let mapleader=" "

" Tabs
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt
nnoremap <leader>0 :tablast<CR>

" FileTypes
""" Menus
autocmd FileType help 
  \ setlocal number |
  \ setlocal relativenumber

let NERDTreeShowLineNumbers=1

""" Python
set omnifunc=syntaxcomplete#Complete

au BufNewFile,BufRead *.py
  \ set tabstop=4 |
  \ set softtabstop=4 |
  \ set shiftwidth=4 |
  \ set textwidth=72 |
  \ set expandtab |
  \ set autoindent |
  \ set fileformat=unix

highlight BadWhitespace ctermbg=red guibg=red

""" Plugins
" Pymode "
let g:pymode = 1
let g:pymode_rope = 1
let g:pymode_rope_completion = 1
let g:pymode_rope_complete_on_dot = 1
let g:pymode_rope_completion_bind = '<C-Space>'

" indentLine "
let g:indentLine_leadingSpaceEnabled = 1

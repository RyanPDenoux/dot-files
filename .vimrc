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
Plugin 'ycm-core/YouCompleteMe'
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
set mouse=a
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

" Buffers
set hidden
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>

" Tabs
nnoremap <leader>h :tabfirst<CR>
nnoremap <leader>k :tabnext<CR>
nnoremap <leader>j :tabprev<CR>
nnoremap <leader>l :tablast<CR>

nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt

" FileTypes
""" Menus
autocmd FileType help 
  \ setlocal number |
  \ setlocal relativenumber

let NERDTreeShowLineNumbers=1

""" Python
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

" indentLine "
let g:indentLine_bufTypeExclude = ['help', 'terminal']

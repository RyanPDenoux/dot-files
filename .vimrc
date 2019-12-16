set nocompatible
filetype off

" Plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized.git'

call vundle#end()
filetype plugin indent on

" Globals
set number
set relativenumber
set cursorline
set laststatus=2

" Find
set path+=**
set wildmenu

" File Browsing
let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_liststyle=3
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide=',\(^\|\s\s\)\zs\.\S\+'

" Powerline
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

syntax on
set background=dark
colorscheme solarized
call togglebg#map("<F5>")

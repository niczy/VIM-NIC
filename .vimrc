set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/vundle/
call vundle#begin()

" let Vundle manage Vundle
" required! 
Plugin 'gmarik/vundle'

" My bundles here:
"
" original repos on GitHub
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'fatih/vim-go'


filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.
"
call vundle#end()

" Map for nerdtree.
map <Leader>nt :NERDTreeToggle<CR>

" Vim basic config.
set smarttab
set tabstop=8
set softtabstop=2
set shiftwidth=2
set expandtab

set showmatch
set autoindent
set hlsearch
syntax on
filetype plugin indent on

" Nerdtree config
let NERDTreeIgnore=['\.pyc']
au BufNewFile,BufRead *.ejs set filetype=html

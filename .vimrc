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
Plugin 'fatih/vim-go'

if filereadable(expand('~/.at_google')) 
  source /usr/share/vim/google/google.vim
  Glug youcompleteme-google
else
  Plugin 'Valloric/YouCompleteMe'
endif



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

" Ctrl-P config
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

let g:ctrlp_max_files = 0
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$|bower_components$\|blaze-genfiles$\|blaze-bin$\|blaze-out$|blaze-google3$|blaze-testlogs$|node_modules$\|dist$\|magicjar$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }


" File type config
au BufNewFile,BufRead *.ejs set filetype=html

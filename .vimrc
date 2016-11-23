set nocompatible
filetype plugin indent on
set modeline
syntax on
set backspace=indent,eol,start
set nobackup
set history=50
set ruler
set showcmd
set showmode

set textwidth=80
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set shiftround

set nowrapscan
set mouse-=a
set fileformats=unix
set title titlestring=vim\ %f
set ignorecase
set incsearch
set showmatch

set ttyfast
set lazyredraw
set cursorline

set shell=/bin/csh
set noswapfile
set viminfo=""
set background=dark

try
    colorscheme smyck256
catch
    colorscheme ron
endtry

source /usr/local/lib/python2.7/site-packages/powerline/bindings/vim/plugin/powerline.vim
set laststatus=2


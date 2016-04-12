set nocompatible
set modeline
syntax on
set backspace=indent,eol,start
set nobackup
set history=50
set ruler
set textwidth=80
set showcmd

set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4

set nowrapscan
set paste
set mouse-=a
set fileformats=unix
set title titlestring=vim\ %f
set ignorecase
set incsearch
set showmatch

set nocindent
set nosmartindent
set noautoindent
set indentexpr=
filetype indent plugin on

set shell=/bin/csh
set noswapfile
set viminfo=""
set background=dark

try
    colorscheme smyck256
catch
    colorscheme ron
endtry

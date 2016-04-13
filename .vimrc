set nocompatible
set modeline
syntax on
set backspace=indent,eol,start
set nobackup
set history=50
set ruler
set showcmd

set textwidth=80
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
set autoindent

set nowrapscan
set paste
set mouse-=a
set fileformats=unix
set title titlestring=vim\ %f
set ignorecase
set incsearch
set showmatch

if has("autocmd")
  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

endif

set shell=/bin/csh
set noswapfile
set viminfo=""
set background=dark

try
    colorscheme smyck256
catch
    colorscheme ron
endtry

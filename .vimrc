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

"set textwidth=80
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
set background=dark

try
    colorscheme smyck256
catch
    colorscheme ron
endtry

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif


" don't use vi compatible mode
set nocompatible
filetype plugin indent on
set modeline
syntax on

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" do not keep a backup file, use versions instead
set nobackup

" keep 50 lines of command line history
set history=50

" show the cursor position all the time
set ruler
set showcmd
set showmode

"set textwidth=80
set shiftwidth=4
"set expandtab "Do not replace tab by space!
set softtabstop=4
set expandtab
set autoindent
set shiftround

set nowrapscan
set nowrap
set mouse-=a

" always show ^M in DOS files
set fileformats=unix

" always show line and col number and the current command, set title
set title titlestring=vim\ %f

" caseinsensitive incremental search
set ignorecase
set incsearch

" Show matching brackets
set showmatch

set ttyfast
set lazyredraw
set cursorline

"set shell=/bin/csh
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

execute pathogen#infect()
set updatetime=250

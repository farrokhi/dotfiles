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

"set shiftwidth=4
"set softtabstop=4
"set expandtab
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
"set viminfo=""
set background=dark

try
    colorscheme smyck256
    "colorscheme monokai_pro
catch
    colorscheme ron
endtry

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
  au FileType markdown set spell spelllang=en_us|set conceallevel=2|set tw=72 
  au FileType yaml set list
endif

" Configuration for vim-markdown
let g:vim_markdown_conceal = 2
let g:vim_markdown_conceal_code_blocks = 0
let g:vim_markdown_math = 1
let g:vim_markdown_toml_frontmatter = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_strikethrough = 1
let g:vim_markdown_autowrite = 1
let g:vim_markdown_edit_url_in = 'tab'
let g:vim_markdown_follow_anchor = 1

execute pathogen#infect()
set updatetime=250

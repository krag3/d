set nocompatible

set number
" set ruler
set cursorline
" set cursorcolumn

" set autoindent
" set smartindent
set smarttab
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set cindent

set splitbelow
set splitright

set clipboard=unnamed

set incsearch
set hlsearch
set ignorecase
set smartcase

set backup
set backupdir=~/.vim/backup
set directory=~/.vim/swap
set backspace=indent,eol,start

set wildmenu
set showcmd

set list
set listchars=tab:>\ ,extends:<

set showmatch

set whichwrap=b,s,h,l,<,>,[,]

set synmaxcol=300
set lazyredraw
set ttyfast

set laststatus=2

for f in split(globpath('~/.vim/rc.d', '*.vim'), '\n')
  execute 'source' f
endfor

filetype plugin indent on
syntax on

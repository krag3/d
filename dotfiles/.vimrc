syntax on
filetype off
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

nnoremap <ESC><ESC> :noh<CR>
inoremap <silent> jj <ESC>

nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

inoremap <C-f> <C-o>
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

nnoremap s <Nop>
vnoremap s <Nop>
nmap s [shortcut]
vmap s [shortcut]
nnoremap <silent> [shortcut]s <C-w>w
nnoremap <silent> [shortcut]t :<C-u>tabnew<CR>
nnoremap <silent> [shortcut]e gt
nnoremap <silent> [shortcut]q gT
nnoremap <silent> [shortcut]a <C-u>
vnoremap <silent> [shortcut]a <C-u>
nnoremap <silent> [shortcut]d <C-D>
vnoremap <silent> [shortcut]d <C-D>
nnoremap <silent> [shortcut]z :b #<CR>
" nnoremap <silent> [shortcut]r :Denite file/rec<CR>

nnoremap [shortcut]f <nop>
" nmap [shortcut]f [Denite]
" nnoremap <silent> [Denite]f :Denite -buffer-name=gtags_completion gtags_completion<CR>
" nnoremap <silent> [Denite]c :DeniteCursorWord -buffer-name=gtags_completion gtags_completion<CR>
" nnoremap <silent> [Denite]b :Denite buffer<CR>
" nnoremap <silent> [Denite]g :Denite grep<CR>

" nnoremap [shortcut]c <nop>
" nmap [shortcut]c [LSP]
" nnoremap [LSP]c :call LanguageClient_contextMenu()<CR>
" nnoremap [LSP]h :call LanguageClient_textDocument_hover()<CR>
" nnoremap [LSP]d :call LanguageClient_textDocument_definition()<CR>
" nnoremap [LSP]r :call LanguageClient_textDocument_references()<CR>
" nnoremap [LSP]xr :call LanguageClient_textDocument_rename()<CR>
" nnoremap [LSP]xa :call LanguageClient_textDocument_codeAction()<CR>
" nnoremap [LSP]xf :call LanguageClient_textDocument_formatting()<CR>

nnoremap [shortcut]w <nop>
nmap [shortcut]w [create_window]
nnoremap <silent> [create_window]h :<C-u>sp<CR>
nnoremap <silent> [create_window]v :<C-u>vs<CR>

nnoremap [shortcut]x <nop>
nmap [shortcut]x [extra]
nnoremap <silent> [extra]g :Gstatus<CR><C-w>T
nnoremap <silent> [extra]t :terminal<CR>
nnoremap [extra]d :lcd %:h<CR>:pwd<CR>

" easy motion
" nmap [shortcut]<space> <Plug>(easymotion-overwin-f2)
" vmap [shortcut]<space> <Plug>(easymotion-bd-f2)
" nmap [shortcut]j <Plug>(easymotion-j)
" vmap [shortcut]j <Plug>(easymotion-j)
" nmap [shortcut]k <Plug>(easymotion-k)
" vmap [shortcut]k <Plug>(easymotion-k)
" nmap [shortcut]h <Plug>(easymotion-linebackward)
" vmap [shortcut]h <Plug>(easymotion-linebackward)
" nmap [shortcut]l <Plug>(easymotion-lineforward)
" vmap [shortcut]l <Plug>(easymotion-lineforward)

" incsearch
" nmap / <Plug>(incsearch-forward)
" nmap ? <Plug>(incsearch-backward)
" nmap [shortcut]v <Plug>(incsearch-fuzzy-/)
" nmap [shortcut]V <Plug>(incsearch-fuzzy-?)

for n in range(1, 9)
  execute 'nnoremap <silent> g'.n  ':<C-u>tabnext'.n.'<CR>'
endfor

" tnoremap <Esc> <C-\><C-n>
" tnoremap jj <C-\><C-n>

set laststatus=2
" set statusline=%F%m%r%h%w%=(%{&ff}/%Y/%{&fileencoding})%l/%L[%p%%]:%v
" set statusline=%F%m%r%h%w%=%{fugitive#statusline()}(%{&ff}/%Y/%{&fileencoding})%l/%L[%p%%]:%v

" command! -nargs=1 -complete=file Vdiff vertical diffsplit <args>

" if filereadable('/usr/bin/python3')
"   let g:python3_host_prog = expand('/usr/bin/python3')
" elseif filereadable('/usr/local/bin/python3')
"   let g:python3_host_prog = expand('/usr/local/bin/python3')
" endif


filetype plugin indent on
syntax on


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

nnoremap [shortcut]w <nop>
nmap [shortcut]w [create_window]
nnoremap <silent> [create_window]h :<C-u>sp<CR>
nnoremap <silent> [create_window]v :<C-u>vs<CR>

nnoremap [shortcut]x <nop>
nmap [shortcut]x [extra]
nnoremap <silent> [extra]g :Gstatus<CR><C-w>T
nnoremap <silent> [extra]t :terminal<CR>
nnoremap [extra]d :lcd %:h<CR>:pwd<CR>

for n in range(1, 9)
  execute 'nnoremap <silent> g'.n  ':<C-u>tabnext'.n.'<CR>'
endfor

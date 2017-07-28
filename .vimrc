filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
set number

" Highlights searches
set hlsearch
inoremap jk <ESC>
set spell spelllang=en_us
set nospell

" Turns off octal form (I don't see any use for it in what I use most of the
" time
set nrformats-=octal

vnoremap . :norm.<CR>
" maps the leader to be \
let mapleader = "\<Space>"
nnoremap <leader>v V']
nnoremap <leader>w <C-w>v<C-w>l


" set paste options
" toggles set paste through F5
:set pastetoggle=<F5>
" sets <leader>p to paste from clipboard, and <leader>P to to paste from other vim bufffer
nnoremap <leader>p "+p
nnoremap <leader>P "*P

" switching buffer options - came from practical vim
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

" enter new line without entering insert mode
nmap <S-^M> O<Esc>
nmap <CR> o <ESC>

" delete character forward in insert mode
inoremap <C-d> <Del> 

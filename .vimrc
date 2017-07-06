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

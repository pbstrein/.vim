"filetype plugin indent on
set nocompatible " use only vim, required for Vundle
filetype off     " required for vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'

"
" ***** All Plugins must be put here ******
"

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



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

" sets <leader>y to copy from vim to clipboard on Linux and <leader>Y on
" Windows
" to use this in linux, install vim-gtk first on Ubuntu, or vim-X11 on Fedora
" and run vimx
noremap <Leader>y "+y
noremap <Leader>Y "*y


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

" help searches between upper and lowercase
set ignorecase
set smartcase

" turn on syntax highlighting for python
syntax on

" for WSL, turn off the bell sound
set visualbell

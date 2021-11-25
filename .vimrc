let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  silent execute "!echo 'vim(){local STTYOPTS="$(stty --save)";stty stop "" -ixoff; command vim "$@"; stty "$STTYOPTS"}' >> ~/.bashrc"
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

set exrc 
set guicursor=
set number
set hidden
set nu
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set incsearch
set signcolumn=yes
set colorcolumn=80
set ignorecase
set smartcase
set bg=light
syntax enable

call plug#begin('~/.vim/plugged')
Plug 'gruvbox-community/gruvbox'
Plug 'scrooloose/nerdtree'
call plug#end()

colorscheme gruvbox

map ç i
vmap ç i
nmap ç i

map <A> <ESC>
map <A> <ESC>
map <A> <ESC>

map <S-Left> <ESC>v<Left>
imap <S-Left> <ESC>v<Left>
vmap <S-Left> <Left>
nmap <S-Left> <ESC>v<Left>

map <S-Right> <ESC>v<Right>
imap <S-Right> <ESC>v<Right>
vmap <S-Right> <Right>
nmap <S-Right> <ESC>v<Right>

map <C-q> <ESC>:q!<cr>
imap <C-q> <ESC>:q!<cr>
vmap <C-q> <ESC>:q!<cr>
nmap <C-q> <ESC>:q!<cr>

map <S-Up> v<Up>
imap <S-Up> v<Up>
vmap <S-Up> v<Up>
nmap <S-Up> v<Up>

imap <C-S-Up> <ESC>v<Up>
nmap <C-S-Up> v<Up>


map <S-Down> <ESC>v<Down>
imap <S-Down> <ESC>v<Down>
vmap <S-Down> <ESC>v<Down>
nmap <S-Down> v<Down>



map <C-c> y<Esc>i
imap <C-c> y<Esc>i
vmap <C-c> y<Esc>i
nmap <C-c> y<Esc>i

map <C-x> <ESC>dd<Esc>i
imap <C-x> <ESC>dd<Esc>i
vmap <C-x> <ESC>dd<Esc>i
nmap <C-x> <ESC>dd<Esc>i

map <S-C-d> <Esc>Ypa
imap <S-C-d> <Esc>Ypa
vmap <S-C-d> <Esc>Ypa
nmap <S-C-d> <Esc>Ypa

map <C-v> <Esc>pi
imap <C-v> <Esc>pi
vmap <C-v> <Esc>pi
nmap <C-v> <Esc>pi

map <C-z> <Esc>ui
imap <C-z> <Esc>ui
vmap <C-z> <Esc>ui
nmap <C-z> <Esc>ui

map <C-F> /
imap <C-F> /
vmap <C-F> /
nmap <C-F> /

map <C-s> <ESC>:w<cr>
imap <C-s> <ESC>:w<cr>
vmap <C-s> <ESC>:w<cr>
nmap <C-s> <ESC>:w<cr>

map <C-w> <ESC>:q<cr>
imap <C-w> <ESC>:q<cr>
vmap <C-w> <ESC>:q<cr>
nmap <C-w> <ESC>:q<cr>

map <C-S-d> <ESC>
imap <C-S-d> <ESC>
vmap <C-S-d> <ESC>
nmap <C-S-d> <ESC>

map <c-a> <esc>ggVG<cr> 
imap <c-a> <esc>ggVG<cr> 
vmap <c-a> <esc>ggVG<cr> 
nmap <c-a> <esc>ggVG<cr> 

"map <T-a> <esc>ggVG<cr> 
"imap <c-a> <esc>ggVG<cr> 
"vmap <c-a> <esc>ggVG<cr> 
"nmap <c-a> <esc>ggVG<cr> 

let mapleader = " "

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

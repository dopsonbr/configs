set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin


let do_syntax_sel_menu = 1|runtime! synmenu.vim

set number
set tabstop=4
set guifont=Source\ Code\ Pro:h10
set ignorecase
set smartcase
set autochdir
nnoremap <CR> :noh<CR><CR>

map [ <C-w>h
map ] <C-w>l
map { <C-w>k
map } <C-w>j

syntax enable
"the following 2 commands allow you to gg=G and autoformat
filetype indent on
set smartindent

" this should be set only for gvim
set background=light 
colorscheme solarized

" Set to auto read when a file is changed from the outside
set autoread



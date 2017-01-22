set nocompatible

"dein Scripts-----------------------------
set runtimepath+=~/.config/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('/Users/briandopson/.config/dein/repos')
  call dein#begin('~/.config/dein')

  call dein#add('~/.config/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/neocomplete.vim')
	call dein#add('Shougo/deoplete.nvim')
	call dein#add('fatih/vim-go') 
	call dein#add('airblade/vim-gitgutter') 
	call dein#add('vim-airline/vim-airline')
	call dein#end()
  call dein#save_state()
endif

" install new plugins on startup
if dein#check_install()
  call dein#install()
  endif

let g:deoplete#enable_at_startup = 1
" reduce the update time for git-gutter
set updatetime=250
filetype plugin indent on
syntax enable
"End dein Scripts-------------------------

" To close preview window of deoplete automagically
autocmd CompleteDone * pclose 

set number
set autoread
let g:python_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

" show file name
set statusline+=%F

" size of a hard tabstop
"set tabstop=2
" always uses spaces instead of tab characters
"set expandtab
" size of an "indent"
"set shiftwidth=2

"set ignorecase
"set smartcase
"set autochdir
"nnoremap <CR> :noh<CR><CR>

"the following 2 commands allow you to gg=G and autoformat
"filetype indent on
"set smartindent





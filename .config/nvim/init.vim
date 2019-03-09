set nocompatible

"dein Scripts-----------------------------
set runtimepath+=~/.config/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('/Users/briandopson/.config/dein/repos')
  call dein#begin('~/.config/dein')
  call dein#add('~/.config/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('rizzatti/dash.vim')
  call dein#add('udalov/kotlin-vim')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('fatih/vim-go') 
  call dein#add('junegunn/fzf.vim') 
  call dein#add('mhartington/nvim-typescript')
  call dein#add('mileszs/ack.vim')
  call dein#add('HerringtonDarkholme/yats.vim')
  call dein#add('airblade/vim-gitgutter') 
  call dein#add('tpope/vim-surround') 
  call dein#add('kien/ctrlp.vim') 
  call dein#add('vim-airline/vim-airline')
  call dein#add('scrooloose/nerdtree')
  call dein#add('w0rp/ale')
  call dein#add('rafi/awesome-vim-colorschemes')
  call dein#end()
  call dein#save_state()
endif

" install new plugins on startup
if dein#check_install()
  call dein#install()
endif
"End dein Scripts-------------------------


"------------------------------------------------------------------------------
" Plugin Specific Settings
"------------------------------------------------------------------------------
" deoplete
let g:deoplete#enable_at_startup = 1
filetype plugin indent on
syntax enable
" tab complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
" To close preview window of deoplete automagically
autocmd CompleteDone * pclose 

let g:python_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

" Gitgutter
" reduce the update time for git-gutter
set updatetime=250

" Airline
" show file name
set statusline+=%F

" ALE
" always show status line 
" let g:ale_sign_column_always = 1
" Only lint on save
let g:ale_lint_on_text_changed = 'never'
" Do not lint when opening a file
let g:ale_lint_on_enter = 0

" AG/ack.vim
let g:ackprg = 'ag --nogroup --nocolor --column'
"------------------------------------------------------------------------------
"  Generic Vim Settings
"------------------------------------------------------------------------------

" size of a hard tabstop
set tabstop=2
" always uses spaces instead of tab characters
set expandtab
" size of an "indent"
set shiftwidth=2
set smartcase
set number
set autoread

" YANK TO CLIPBOARD
"set clipboard+=unnamedplus

" Handy short cuts
" autoformt gg=G


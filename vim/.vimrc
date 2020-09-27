set nocompatible
filetype off

set tabstop=4 
set shiftwidth=4
set softtabstop=4 
set autoindent
set noexpandtab
set smarttab
set showtabline=1

syntax on
set cursorline
set relativenumber
set nu rnu
set mousehide 
set t_Co=256
set novisualbell
set backspace=indent,eol,start whichwrap+=<,>,[,]
set wrap
set linebreak
set nobackup
set noswapfile

setlocal spell spelllang=ru_ru,en_us 
set nospell
" auto correct miss words  
inoremap <C-k> <Esc>[s1z=`]xa
nnoremap fs :set spell <CR>
nnoremap fns :set nospell <CR>

set termencoding=utf-8
set encoding=utf-8 
set fileencodings=utf8,cp1251
set clipboard=unnamed

set ruler
set hidden

nnoremap ghc :tabnew <CR>
nnoremap ghh :tabprevious <CR>
nnoremap ghl :tabnext <CR>
nnoremap fd <C-w>
inoremap jk <Esc>
nnoremap cfg :source ~/.vimrc <CR>

set clipboard=unnamedplus
vnoremap <Leader>y "*y
vnoremap <Leader>p "*p
vnoremap <Leader>Y "+y
vnoremap <Leader>P "+p

" Plugins
nnoremap fo :FZF <CR>

colorscheme bydream

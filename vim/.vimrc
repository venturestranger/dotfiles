set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/vundle.vim
call vundle#begin()

Plugin 'terryma/vim-multiple-cursors' " multiple cursors in vim ^N
Plugin 'lervag/vimtex' " latex additions

call vundle#end()

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

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
inoremap <C-k> <Esc>[s1z=`]a 
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

" Plugins
nnoremap fo :FZF <CR>

colorscheme bydream

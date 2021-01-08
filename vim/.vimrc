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

"setlocal spell spelllang=ru_ru,en_us 
set nospell

set termencoding=utf-8
set encoding=utf-8 
set fileencodings=utf8
set clipboard=unnamed

set ruler
set hidden

noremap <C-w>	$	
noremap <C-b>	^
noremap <C-j>	jjjjjjjjjj
noremap <C-k>	kkkkkkkkkk
noremap <C-j>	Vdp
noremap <C-k>	Vdkkp
noremap <S-l>	k<S-a><CR>
noremap <S-o>	<S-a><CR>

nnoremap gnd	:set nornu <CR> :set nonu <CR>
nnoremap gne	:set rnu <CR> :set nu <CR>

nnoremap gns	:nohlsearch <CR>
nnoremap ge		:redo <CR>

nnoremap ghc	:tabnew <CR>
nnoremap ghh	:tabprevious <CR>
nnoremap ghl	:tabnext <CR>

nnoremap fd		<C-w>
inoremap jk		<Esc>

nnoremap cfg	:source ~/.vimrc <CR>

colorscheme bydream

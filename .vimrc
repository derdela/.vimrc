" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %
set shell=bash

" set <Leader> key
let mapleader = ","

" Quicksave command
noremap <C-S> :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-O>:update<CR>

" Navigate beetwen windows
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" Quit window
noremap <Leader>e :quit<CR>	" Quit current window
noremap <Leader>E :qa!<CR>	" Quit all windows

" move code blocks
vnoremap < <gv
vnoremap > >gv

" show syntac
syntax on

" show line numbers
set number

" Lines of code will not wrap to the next line
set nowrap

" Make backspace behave like other editors
set backspace=indent,eol,start

" Authomatically indent on new line
set autoindent

" Highlight matching braces/tags
set showmatch

" whitespace settings
set tabstop=2
set softtabstop=2
set shiftwidth=2
set shiftround
set expandtab

" search settings
set hlsearch
set incsearch
set ignorecase
set smartcase

" disable swap files
set nobackup 
set nowritebackup
set noswapfile

set relativenumber

set lines=64
set columns=128


" ======================= Plugins ==================== "
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin() 
Plugin 'gmarik/Vundle.vim' " Vundle

" Plugins
Plugin 'Lokaltog/vim-powerline' " Powerline
Plugin 'scrooloose/nerdtree' " NERDTree
Plugin 'SirVer/ultisnips' " Ultisnips
Plugin 'Honza/vim-snippets' " Snippets for Ultisnips 
Plugin 'scrooloose/syntastic' " Syntastic
Plugin 'kien/ctrlp.vim' " CtrlP for file search and open
Plugin 'rstacruz/sparkup' " Sparkup is like zen for html
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'pangloss/vim-javascript'
Plugin 'justinmk/vim-gtfo'
Plugin 'wookiehangover/jshint.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'burnettk/vim-angular'
Plugin 'Chiel92/vim-autoformat'
Plugin 'othree/html5.vim'
Plugin 'digitaltoad/vim-jade'
Plugin 'mustache/vim-mustache-handlebars'

" Color schemes
Plugin 'sickill/vim-monokai' " Monokai
Plugin 'tomasr/molokai' " Molokai
Plugin 'altercation/vim-colors-solarized'
Plugin 'junza/Spink'

call vundle#end()
filetype plugin indent on

" Color scheme
syntax enable
set background=dark
colorscheme Spink
"set t_Co=256
"let g:rehash256 = 1


" Plugin 'https://github.com/Lokaltog/vim-powerline.git'
set laststatus=2

" Plugin 'https://github.com/scrooloose/nerdtree.git' " NERDTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$']

" Plugin 'SirVer/ultisnips' " Ultisnips
let g:UltiSnipsExpandTrigger = "<c-j>"
let g:UltiSnipsJumpForwardTrigger = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-p>"
let g:UltiSnipsListSnippets = "<c-k>"

" Plugin 'kien/rainbow_parentheses.vim
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Plugin 'Chiel92/vim-autoformat'
noremap <Leader>f :Autoformat<CR>

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" set <Leader> key
let mapleader = ","

" Quicksave command
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>

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
set tabstop=4
set softtabstop=4
set shiftwidth=4
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
colorscheme  spink
"set t_Co=256
"let g:rehash256 = 1


" Plugin 'https://github.com/Lokaltog/vim-powerline.git'
set laststatus=2

" Plugin 'https://github.com/scrooloose/nerdtree.git' " NERDTree
autocmd vimenter * NERDTree
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

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
Plugin 'Valloric/YouCompleteMe' " YouCompleteMe
Plugin 'SirVer/ultisnips' " Ultisnips
Plugin 'Honza/vim-snippets' " Snippets for Ultisnips 
Plugin 'scrooloose/syntastic' " Syntastic
Plugin 'python-rope/ropevim' " ropevim

" Color schemes
Plugin 'sickill/vim-monokai' " Monokai
Plugin 'tomasr/molokai' " Molokai

call vundle#end()
filetype plugin indent on

" Color scheme
syntax enable
colorscheme molokai
let g:rehash256 = 1


" Plugin 'https://github.com/Lokaltog/vim-powerline.git'
set laststatus=2
let g:Powerline_symbols = 'fancy'

" Plugin 'https://github.com/scrooloose/nerdtree.git' " NERDTree
autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$']

" Plugin 'https://github.com/Valloric/YouCompleteMe.git' " YouCompleteMe
let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string

" Plugin 'SirVer/ultisnips' " Ultisnips
let g:UltiSnipsExpandTrigger = "<c-j>"
let g:UltiSnipsJumpForwardTrigger = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-p>"
let g:UltiSnipsListSnippets = "<c-k>"

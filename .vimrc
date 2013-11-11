"set pathogen
filetype off
execute pathogen#infect()
filetype plugin indent on

"no need for vi compatibility
set nocompatible
set modelines=0

"set spacing and syntax
syntax on
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber

"undofile...it makes things easier in vim..if a bit cluttered
set undofile

"get a nice leader key
let mapleader = ","

"better searching
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

"Keep lines shorter
set wrap
set textwidth=84
set formatoptions=qrn1
set colorcolumn=95

"disable arrow keys
"nnoremap <up> <nop>
"nnoremap <down> <nop>
"nnoremap <left> <nop>
"nnoremap <right> <nop>
"inoremap <up> <nop>
"inoremap <down> <nop>
"inoremap <left> <nop>
"inoremap <right> <nop>

"remap escape button and save on focus lost
nnoremap j gj
nnoremap k gk
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
nnoremap ; :
au FocusLost * :wa
inoremap jj <ESC>

"easy access to vim rc file
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>

"open new vertical tab
nnoremap <leader>w <C-w>v<C-w>l

"easy movement in tabs
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"colors
colorscheme mustang

"execute command
nnoremap <leader>c :!

"run go fmt on current file
nnoremap <leader>fmt :Fmt<cr> \| :retab<cr>

"open up NERDTree to navigate
nnoremap <leader>a :NERDTree<cr>

"load your rc
nnoremap <leader>lrc :so $MYVIMRC<cr>

"set fonts
set guifont=Consolas:h12

"Ack it up in another tab
nnoremap <leader>s :Ack

"Toggle for rainbow parens
nnoremap <leader>r :RainbowParenthesesToggle<cr>

set nocompatible

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-rails'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-markdown'
Plugin 'Yggdroot/indentLine'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'valloric/youcompleteme'
Plugin 'tpope/vim-surround'
Plugin 'elzr/vim-json'
Plugin 'othree/html5.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'tpope/vim-haml'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'pangloss/vim-javascript'
Plugin 'scrooloose/nerdcommenter'
Plugin 'mileszs/ack.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'bronson/vim-trailing-whitespace'

call vundle#end()
filetype plugin indent on

syntax enable
colorscheme badwolf

" Ruler
set ruler
set textwidth=120
set colorcolumn=+1

" Save settings
set encoding=utf-8
set fileformats=unix,dos

" Tab settings
set backspace=2
set tabstop=2
set shiftwidth=2
set shiftround
set softtabstop=2
set expandtab

set number

" Search settings
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch

" Backup settings
set nobackup
set nowritebackup
set noswapfile

" Use one space, not two, after punctuation.
set nojoinspaces

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Map keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

nmap <C-k> :NERDTreeToggle<CR>
nmap <F2> :nohl<CR>
nmap <C-w> :FixWhitespace<CR>

" Plugin settings
set laststatus=2
let g:airline_theme='badwolf'

if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif

let g:indentLine_char = '|'

set nocompatible

if has("nvim")
  set termguicolors
endif

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
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
Plugin 'chriskempson/base16-vim'
Plugin '907th/vim-auto-save'
Plugin 'JamshedVesuna/vim-markdown-preview'

call vundle#end()
filetype plugin indent on

syntax on
colorscheme base16-railscasts
let t_CO=256

let g:is_posix = 1

" Ruler
set ruler
set textwidth=120
set colorcolumn=+1
set nowrap
set number

" Save settings
set encoding=utf-8
set fileformats=unix

" Tab settings
set backspace=2
set tabstop=2
set shiftwidth=2
set shiftround
set softtabstop=2
set expandtab

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

" Autoload file changes
set autoread
au CursorHold * checktime

" Disable mouse
set mouse=""

" Copy to clipboard
set clipboard=unnamed

" Map keys
let mapleader=","
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

nnoremap <Leader>k :NERDTreeTabsToggle<CR>
nnoremap <Esc><Esc> :nohl<CR>
nnoremap <Leader>s :FixWhitespace<CR>

vnoremap d "_d
nnoremap d "_d
vnoremap D "_D
nnoremap D "_D

" Plugin settings
let g:auto_save = 1

if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif

set laststatus=2
let g:airline_theme = 'base16'
let g:airline_left_sep = ''        " Remove arrow symbols.
let g:airline_left_alt_sep = ''    " Remove arrow symbols.
let g:airline_right_sep = ''       " Remove arrow symbols.
let g:airline_right_alt_sep = ''   " Remove arrow symbols.
let g:indentLine_char = '┆'

let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_use_caching = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

let g:vim_json_syntax_conceal = 0

let vim_markdown_preview_hotkey='<C-m>'

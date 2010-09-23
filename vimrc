if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window.
  set lines=100 columns=200
  set guifont=Consolas:h9
else
  " This is console Vim.
  set t_Co=256
  if exists("+lines")
    set lines=60
  endif
  if exists("+columns")
    set columns=200
  endif
endif

colorscheme mustang
syntax enable


filetype off
call pathogen#runtime_append_all_bundles()
filetype plugin indent on

set nocompatible
set modelines=0

set tabstop=4
set shiftwidth=4
set softtabstop=4
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

set incsearch
set hlsearch
set showmatch

set ignorecase
set smartcase

set relativenumber
set undofile

set wrap
"set textwidth=189
set formatoptions=qrn1
"set colorcolumn=195

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

nnoremap ; :

au FocusLost * :wa

scriptencoding utf-8

"git urls for pathogen bundles
" BUNDLE: git://github.com/scrooloose/nerdtree.git
" BUNDLE: git://github.com/scrooloose/nerdcommenter.git
" BUNDLE: git://github.com/vim-ruby/vim-ruby.git
" BUNDLE: git://github.com/mileszs/ack.vim.git
" BUNDLE: git://git.wincent.com/command-t.git
" BUNDLE: git://github.com/msanders/snipmate.vim.git
" BUNDLE: git://github.com/chrismetcalf/vim-yankring.git
" BUNDLE: git://github.com/vim-scripts/IndexedSearch.git
" BUNDLE: git://github.com/vim-scripts/Puppet-Syntax-Highlighting.git
" BUNDLE: git://github.com/tpope/vim-fugitive.git

if has("gui_running")
" GUI is running or is about to start.

" Set font and window size based on operating system
if has("unix")
    set guifont=Liberation\ Mono\ 10
else
    set guifont=Liberation\ Mono:h10
    set lines=100 columns=200
endif

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar

colorscheme molokai
else
" This is console Vim.
set t_Co=256
if exists("+lines")
set lines=65
endif
if exists("+columns")
set columns=190
endif

if filereadable(expand("$HOME/.vim/colors/molokai.vim"))
    colorscheme molokai
else
    colorscheme slate
endif
endif

syntax enable


filetype off
runtime! autoload/pathogen.vim
if exists('g:loaded_pathogen')
call pathogen#runtime_append_all_bundles()
endif
filetype plugin indent on

set laststatus=2
set statusline=%M%R%l/%L\,%c:%Y:\%F

set nocompatible
set modelines=0

set autoindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set encoding=utf-8
set scrolloff=3
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
set title

set nobackup
set noswapfile
set history=1000
set undolevels=1000

set incsearch
set hlsearch
set showmatch

set ignorecase
set smartcase

" 7.3-specific setting
if v:version >= 703
set relativenumber
set colorcolumn=85
else
set number
end

set wrap
"see :help for-table
set formatoptions=qrn1
set textwidth=79

"show formatting characters
set list
set listchars=tab:»\ ,trail:·

"disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
"up and down work with wrapped lines
nnoremap j gj
nnoremap k gk

" match bracket pairs
nnoremap <tab> %
vnoremap <tab> %

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l


" F5 = toggle paste mode
nnoremap <F5> :set invpaste paste?<Enter>
imap <F5> <C-O><F5>
set pastetoggle=<F5>

" Use Enter to exit insert,normal,visual,command mode
" Use CTRL-O to create new line in insert mode
inoremap <CR> <Esc>
nnoremap <CR> <Esc>
vnoremap <CR> <Esc>gV
onoremap <CR> <Esc>
inoremap <C-o> <CR>

nnoremap ; :

"sudo save if not root
cmap w!! w !sudo tee % >/dev/null

let mapleader=","
" ev = edit vimrc
" sv = reload vimrc
" if winvimrc is set, use that instead of $MYVIMRC
if exists("winvimrc")
exec "nmap <silent> <leader>ev <C-w><C-v><C-l>:e ".winvimrc."<CR>"
exec "nmap <silent> <leader>sv :so ".winvimrc."<CR>"
else
nmap <silent> <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
endif

" remove search highlighting
nnoremap <leader><space> :nohlsearch<Enter>

nmap <leader>a :Ack

"omnicompletion
imap <leader><TAB> <C-x><C-o>

"open new vertical window and switch to it
nmap <leader>w <C-w>v<C-w>l

"YankRing: Show yanked test
nmap <silent> <F3> :YRShow<CR>
imap <silent> <F3> <ESC>:YRShow<CR>

" Re-select pasted text
nnoremap <leader>v V`]

" reload Command-T
noremap <leader>y :CommandTFlush<CR>
noremap <leader>t :CommandT<CR>

" make indentation easier
nmap <C-]> >>
nmap <C-[> <<
vmap <C-]> >gv
vmap <C-[> <gv

" open current file's directory
map <leader>ew :e <C-R>=expand("%:p:h") . "/" <CR>

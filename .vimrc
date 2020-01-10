set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" real-time syntax highlighting
Plugin 'dense-analysis/ale'
" auto bracket-completion (and quotes)
Plugin 'jiangmiao/auto-pairs'
" color scheme
Plugin 'tomasr/molokai'
Plugin 'tomasiser/vim-code-dark'
" utilities
Plugin 'vim-scripts/argtextobj.vim'
Plugin 'vim-scripts/a.vim'
" ctags
Plugin 'vim-scripts/taglist.vim'
" filetree viewer
Plugin 'preservim/nerdtree'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" =============== Key Mappings ===============

" default prefix for custom commands is "-"
let mapleader = "-"

" set color scheme to codedark
colorscheme codedark
syntax on

" some options for taglist
let g:Tlist_Auto_Open=1
let g:Tlist_Use_Right_Window=1
let g:Tlist_WinWidth=50

" add line numbers
set number
set relativenumber

" lines don't wrap
set nowrap

" indents and tabs are set to 4 spaces
set shiftwidth=4
set softtabstop=4
set tabstop=4

set autoindent
set expandtab

" text navigating macros
set incsearch
set hlsearch

" text editing macros
inoremap <c-u> <esc>viwUea
cabbrev help tab help
nnoremap <leader>h1 0D:r $HOME/.vim/snippets/h1_c.txt<cr>j$p
nnoremap <leader>h2 0D:r $HOME/.vim/snippets/h2_c.txt<cr>2elp
nnoremap <leader>h3 0D:r $HOME/.vim/snippets/h3_c.txt<cr>2elp

" vimrc macros
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>i3 :vsplit $HOME/.config/i3/config<cr>

" file handling macros
nnoremap <leader>q :q<cr>
nnoremap <leader>s :w<cr>

" filesystem navigating macros
nnoremap <leader>f :tabf
nnoremap <leader>ff :NERDTree<cr>

" tab navigating macros
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt

" integrated terminal commands
nnoremap <leader>t :term
nnoremap <leader>tt :term<cr><c-w>J
nnoremap <leader>tl :term ls<cr>

" ctags commands
nnoremap <leader>g :TlistToggle<cr>

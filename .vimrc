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

" file explorer within vim
Plugin 'scrooloose/nerdtree'

" syntax highlighting
" Plugin 'octol/vim-cpp-enhanced-highlight'
" Plugin 'vim-python/python-syntax'

" Plugin 
Plugin 'file://~/.vim/plugin/python.vim', {'pinned': 1}

" auto bracket-completion (and quotes)
Plugin 'jiangmiao/auto-pairs'

" color scheme
Plugin 'tomasr/molokai'
Plugin 'tomasiser/vim-code-dark'

" Plugin 'file://~/.vim/plugin/cpp.vim', {'pinned': 1}
" Plugin 'file://~/.vim/plugin/bracket.vim', {'pinned': 1}
Plugin 'vim-scripts/argtextobj.vim'
Plugin 'vim-scripts/a.vim'

let g:Tlist_Ctags_Cmd = '$HOME/.vim/plugin/ctags-5.8/ctags'
Plugin 'file://~/.vim/plugin/taglist.vim', {'pinned': 1}

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
nnoremap <leader>h1 i/* <esc>76A=<esc>A<cr><BS> *<cr>*<cr>*/<esc>k76A=<esc>^a<Space><esc>k30A <esc>A
nnoremap <leader>h2 0i/*<esc>25a=<esc>a<Space><esc>^la<Space><esc>A<Space><esc>25A=<esc>A */<esc>^2W
nnoremap <leader>h3 0i/*<esc>10a=<esc>a<Space><esc>^la<Space><esc>A<Space><esc>10A=<esc>A */<esc>^2W


" vimrc macros
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>i3 :vsplit $HOME/.i3/config<cr>

" file handling macros
nnoremap <leader>q :q!<cr>
nnoremap <leader>s :w!<cr>
nnoremap <c-s> :w!<cr>

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
nnoremap <leader>tt :term<cr>
nnoremap <leader>tl :term ls<cr>

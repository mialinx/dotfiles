
" Vundle setup
    set nocompatible " be iMproved
    filetype off     " required!

    set rtp+=~/.vimbundle/vundle/
    call vundle#rc()

    " let Vundle manage Vundle
    " required!
    Plugin 'git://github.com/gmarik/vundle.git'

    " My Plugins here:
    " NOTE: comments after Plugin command are not allowed...
    "
    " IDE
        "Plugin 'DfrankUtil'
        "Plugin 'vimprj'
        "Plugin 'argtextobj.vim'

    " Interface
        Plugin 'altercation/vim-colors-solarized'
        Plugin 'nanotech/jellybeans.vim.git'
        Plugin 'scrooloose/nerdtree.git'
        Plugin 'tomasr/molokai.git'

        "Plugin 'ervandew/supertab.git'
        "Plugin 'vim-scripts/AutoComplPop.git'

        "Plugin 'godlygeek/tabular.git'
        Plugin 'scrooloose/nerdcommenter.git'
        "Plugin 'tpope/vim-surround.git'
        "Plugin 'tpope/vim-repeat.git'
        "Plugin 'tpope/vim-fugitive.git'
        Plugin 'vim-scripts/bufexplorer.zip.git'

        "Plugin 'edsono/vim-matchit.git'
        Plugin 'kien/ctrlp.vim.git'
        Plugin 'bling/vim-airline'
        "Plugin 'git://github.com/Yggdroot/indentLine.git'
        "Plugin 'mhinz/vim-signify'
        "Plugin 'mbbill/undotree'
    " HTML/HAML
        Plugin 'othree/html5.vim.git'
        Plugin 'mattn/emmet-vim'
    " CSS/LESS
        Plugin 'hail2u/vim-css3-syntax.git'
        Plugin 'groenewege/vim-less'
    " JavaScript
        Plugin 'pangloss/vim-javascript.git'
        Plugin 'mxw/vim-jsx.git'
        Plugin 'itspriddle/vim-jquery.git'
    " JSON
        Plugin 'leshill/vim-json.git'
    " Perl
        Plugin 'vim-perl/vim-perl.git'
    " Xslate
        Plugin 'motemen/xslate-vim.git'
    " Django
        Plugin 'django.vim'
    " Snippets
        " Plugin 'UltiSnips'
        "Plugin 'SirVer/ultisnips'
        "Plugin 'honza/vim-snippets'
    " Nginx
        Plugin 'nginx.vim'
    " Ack
        "Plugin 'mileszs/ack.vim'
    " TT2
        Plugin 'TT2-syntax'
    " Jinja
        Plugin 'Jinja'
    " Ansible/YAML
        Plugin 'chase/vim-ansible-yaml'
    " Python syntax
        Plugin 'hdima/python-syntax'
    " Arduino
        "Plugin 'tclem/vim-arduino'
        "Plugin 'sudar/vim-arduino-syntax'
        "Plugin 'avr.vim'
        "Plugin 'avr8bit.vim'

    filetype plugin indent on     " required!
    " Brief help
    " :PluginList          - list configured bundles
    " :PluginInstall(!)    - install(update) bundles
    " :PluginSearch(!) foo - search(or refresh cache first) for foo
    " :PluginClean(!)      - confirm(or auto-ap prove) removal of unused bundles
    " see :h vundle for more details or wiki for FAQ

" Common settings
filetype plugin indent on
if $TERM == "xterm-256color"
    set t_Co=256
endif
syntax on
colorschem molokai
highlight lCursor guifg=NONE guibg=Cyan

set nocompatible
set keymap=russian-jcukenwin
set backspace=indent,eol,start

set ruler
set showcmd
set nowrap
set number
set incsearch
set hlsearch
set list
set lcs=tab:\|.   "show tabs
set viminfo='20,\"1000
set diffopt=filler,iwhite
set history=50
set iminsert=0
set imsearch=0

set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent

set fileencodings=ucs-bom,utf-8,cp1251,default,latin1
set backup
set backupdir=~/.vim/backup//

" Position in file
au BufReadPost * 
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal! g'\"" |
    \ endif
au BufNewFile,BufRead *.tpl set ft=tt2
au BufNewFile,BufRead *.go 
    \ set ft=go |
    \ set noexpandtab
au BufNewFile,BufRead *.psgi setf perl
au BufNewFile,BufRead *.go setf go

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>
map <F10> :qa<Enter>

" plugin customization
execute pathogen#infect()
let g:miniBufExplMaxSize=1
let NERDTreeHightlightCursorline=1
au BufEnter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" custom key bindings
map <silent> <Leader>1 :b1<Enter>
map <silent> <Leader>2 :b2<Enter>
map <silent> <Leader>3 :b3<Enter>
map <silent> <Leader>4 :b4<Enter>
map <silent> <Leader>5 :b5<Enter>
map <silent> <Leader>6 :b6<Enter>
map <silent> <Leader>7 :b7<Enter>
map <silent> <Leader>8 :b8<Enter>
map <silent> <Leader>9 :b9<Enter>
map <silent> <Leader>[ :bp<Enter>
map <silent> <Leader>] :bn<Enter>
map <silent> <Leader>q :Bclose<CR>
map <silent> <Leader>t :NERDTreeToggle<Enter>


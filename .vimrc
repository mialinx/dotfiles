if $TERM == "xterm-256color"
    set t_Co=256
endif
syntax on
colorschem molokai
highlight lCursor guifg=NONE guibg=Cyan
filetype plugin indent on

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
au BufNewFile,BufRead *.go set ft=go

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>
map <F10> :qa<Enter>
map <F9>  :!go install %:t:r<Enter>

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

" plugin customization
execute pathogen#infect()
let g:miniBufExplMaxSize=1
let NERDTreeHightlightCursorline=1
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
autocmd BufNewFile,BufRead *.psgi setf perl
autocmd BufNewFile,BufRead *.go setf go


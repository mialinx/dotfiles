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
set backupdir=~/.vim/backup

" Position in file
au BufReadPost * 
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal! g'\"" |
    \ endif

au BufNewFile,BufRead *.tpl set ft=tt2

" Perl features
let &path=system('perl -e "print join \",\" => @INC"')
set path+=.,$PATH_PRJ/bin,$PATH_PRJ/tpl,$PATH_PRJ/lib/,$PATH_PRJ/../CPB/lib/"
set isfname=@,48-57,/,.,_,+,,,#,$,%,~,=,:
set includeexpr=substitute(substitute(v:fname,'::','/','g'),'$','.pm','')

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>
imap <Up> <nop>
imap <Down> <nop>
imap <Left> <nop>
imap <Right> <nop>
map <Up> <nop>
map <Down> <nop>
map <Left> <nop>
map <Right> <nop>
map <F10> :q<Enter>

set t_Co=256
syntax on
colorschem molokai
highlight lCursor guifg=NONE guibg=Cyan
set nocompatible
set keymap=russian-jcukenwin
set backspace=indent,eol,start
set ruler
set showcmd
set incsearch
set hlsearch
set autoindent
set nowrap
set number
set expandtab
set tabstop=4
set shiftwidth=4
set iminsert=0
set imsearch=0
set list
set lcs=tab:\|.   "show tabs
set fileencodings=ucs-bom,utf-8,cp1251,default,latin1
set history=50
set viminfo='20,\"1000
autocmd BufReadPost * 
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal! g'\"" |
    \ endif
set backup            " keep a backup file
set backupdir=~/.vim/backup

" for sshfs
" set cpt-=t             
" set dir=~/.vim/swap    

au BufNewFile,BufRead *.tpl set ft=tt2
"set path=.,/usr/lib/python2.7/site-packages/,/usr/lib/python2.7/
"set includeexpr=substitute(substitute(v:fname,'\\.','/','g'),'$','.py','g')

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

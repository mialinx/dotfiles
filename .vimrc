" fix terminal
    set t_ut=

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

    " Interface
        Plugin 'altercation/vim-colors-solarized'
        Plugin 'nanotech/jellybeans.vim.git'
        Plugin 'scrooloose/nerdtree.git'
        Plugin 'tomasr/molokai.git'
        Plugin 'quanganhdo/grb256'
        Plugin 'Lokaltog/vim-distinguished'
        Plugin 'endel/vim-github-colorscheme'
        Plugin 'jpo/vim-railscasts-theme'
        Plugin 'vim-scripts/ironman.vim'
        Plugin 'vim-scripts/oceanlight'
        Plugin 'vim-scripts/AutumnLeaf'
    " Real Plugins
        Plugin 'scrooloose/nerdcommenter.git'
        Plugin 'vim-scripts/bufexplorer.zip.git'
        Plugin 'kien/ctrlp.vim.git'
        Plugin 'vim-airline/vim-airline'
        Plugin 'vim-airline/vim-airline-themes'
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
    " Nginx
        Plugin 'nginx.vim'
    " TT2
        Plugin 'TT2-syntax'
    " Jinja
        Plugin 'Jinja'
    " Ansible/YAML
        Plugin 'chase/vim-ansible-yaml'
    " Python syntax
        Plugin 'hdima/python-syntax'
        "Plugin 'nvie/vim-flake8'
    " GoLang
        Plugin 'fatih/vim-go'
    " Git
        Plugin 'tpope/vim-fugitive'
    " Ack
        Plugin 'mileszs/ack.vim'
    " Tagbar
        Plugin 'majutsushi/tagbar'
    " indentLines
        Plugin 'Yggdroot/indentLine'
    " syntastic
        Plugin 'scrooloose/syntastic'
    " unimpared
        Plugin 'tpope/vim-unimpaired'

    filetype plugin indent on     " required!
    " Brief help
    " :PluginList          - list configured bundles
    " :PluginInstall(!)    - install(update) bundles
    " :PluginSearch(!) foo - search(or refresh cache first) for foo
    " :PluginClean(!)      - confirm(or auto-ap prove) removal of unused bundles
    " see :h vundle for more details or wiki for FAQ

" Common settings
    filetype plugin indent on
    set ttyfast
    if $TERM == "xterm-256color"
        set t_Co=256
    endif
    syntax on
    set synmaxcol=200
    set background=dark
    try
        colorschem molokai
    catch /^Vim\%((\a\+)\)\=:E185/
        echo "color theme not found. Run :BundleInstall"
    endtry
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
    set showtabline=1       " Показывать вкладки табов только когда их больше одной
    set guicursor=          " Отключаем мигание курсора
    set splitbelow          " новый сплит будет ниже текущего :sp
    set splitright          " новый сплит будет правее текущего :vsp
    set shortmess+=I        " не показывать intro screen
    set hidden              " this allows to edit several files in the same time without having to save them
    set laststatus=2        " Статусная строка
    set pastetoggle=<Leader>p " Для вставки кода

    set encoding=utf-8
    set fileencodings=ucs-bom,utf-8,cp1251,default,latin1
    set backup
    set backupdir=~/.vim/backup//

    set wildmode=list:longest,full   " Автодополнение на манер zsh
    set wildmenu                     " Саджест по <tab> в командной строке
                                     " When 'wildmenu' is on, command-line completion operates in an enhanced
                                     " mode.  On pressing 'wildchar' (usually <Tab>) to invoke completion,
                                     " the possible matches are shown just above the command line, with the
                                     " first match highlighted (overwriting the status line, if there is
                                     " one).
    set wildignore+=.hg,.git,.svn    " Version control
    set wildignore+=*.DS_Store       " OSX bullshit
    set wildignore+=*.pyc            " Python byte code
    set wildignore+=*.pyo            " Python byte code
    set wildignore+=*.a              " libraries
    set wildignore+=*.so             " shared

    " Символ табуляции и конца строки
    if has('multi_byte')
        if version >= 700
            "set listchars=tab:▸\ ,extends:❯,precedes:❮,nbsp:×
            "set listchars=tab:⋮\ ,extends:❯,precedes:❮,nbsp:×
            "set listchars=tab:│\ ,extends:❯,precedes:❮,nbsp:×
            "set listchars=tab:→\ ,extends:❯,precedes:❮,nbsp:×
            set listchars=tab:⋅\ ,extends:❯,precedes:❮,nbsp:×
            "set listchars=tab:≀\ ,extends:❯,precedes:❮,nbsp:×
        else
            set listchars=tab:»\ ,extends:>,precedes:<,nbsp:_
        endif
        hi clear SpecialKey " undo tab highlighting for some colorschemes
    endif
    if version >= 7.3
        let g:indentLine_color_term = 239
        let g:indentLine_color_gui = '#A4E57E'
        let g:indentLine_color_tty_light = 7 " (default: 4)
        let g:indentLine_color_dark = 1 " (default: 2)
        let g:indentLine_char = '⋅'
    endif

    " Символ, который будет показан перед перенесенной строкой
    if has("linebreak")
          let &sbr = nr2char(8618).' '  " Show ↪ at the beginning of wrapped lines
    endif

    " Приводим в порядок status line
    function! FileSize()
        let bytes = getfsize(expand("%:p"))
        if bytes <= 0
            return ""
        endif
        if bytes < 1024
            return bytes . "B"
        else
            return (bytes / 1024) . "K"
        endif
    endfunction

    function! CurDir()
        return expand('%:p:~')
    endfunction

    " Создаем меню с кодировками
    menu Encoding.UTF-8 :e ++enc=utf8 <CR>
    menu Encoding.Windows-1251 :e ++enc=cp1251<CR>
    menu Encoding.koi8-r :e ++enc=koi8-r<CR>
    menu Encoding.cp866 :e ++enc=cp866<CR>

    " Фолдинг
    " Всё, что нужно знать для начала:
    " za - скрыть/открыть текущую складку.
    " {zR, zM} - {открыть, скрыть} все складки.

    "set foldcolumn=2        " Ширина строки где располагается фолдинг
    "set foldmethod=indent   " Фолдинг по отступам
    "set foldnestmax=10      " Глубина фолдинга 10 уровней
    "set nofoldenable        " Не фолдить по умолчанию
    "set foldlevel=0         " This is just what i use

    " Восстановление позиции в файле
    au BufReadPost *
        \ if line("'\"") > 0 && line ("'\"") <= line("$") |
        \   exe "normal! g'\"" |
        \ endif

" Типы файлов
    au BufRead,BufNewFile *.tpl set ft=tt2
    au BufRead,BufNewFile *.html if  search('{{') > 0  || search('{%') > 0 | set filetype=htmldjango | endif
    au BufRead,BufNewFile *.tpl  set filetype=tt2html
    au BufRead,BufNewFile *.psgi set filetype=perl
    au BufRead,BufNewFile *.t    set filetype=perl
    au BufRead,BufNewFile *.less set filetype=less
    au BufRead,BufNewFile *nginx*conf* set filetype=nginx
    au BufRead,BufNewFile *.wsgi set filetype=python
    au BufRead,BufNewFile *.go   set filetype=go

" Кастомные биндинги
    inoremap <C-U> <C-G>u<C-U>
    nnoremap <silent> <F8> :Tagbar<CR>
    noremap <F7> :SyntasticCheck<CR> :AirlineRefresh<CR> :<Esc>
    noremap <F9> :GoBuild<CR>
    noremap <F10> :qa<CR>
    noremap <silent> <Leader>1 :b1<CR>
    noremap <silent> <Leader>2 :b2<CR>
    noremap <silent> <Leader>3 :b3<CR>
    noremap <silent> <Leader>4 :b4<CR>
    noremap <silent> <Leader>5 :b5<CR>
    noremap <silent> <Leader>6 :b6<CR>
    noremap <silent> <Leader>7 :b7<CR>
    noremap <silent> <Leader>8 :b8<CR>
    noremap <silent> <Leader>9 :b9<CR>
    noremap <silent> <Leader>[ :bp<CR>
    noremap <silent> <Leader>] :bn<CR>
    noremap <silent> <Leader>q :bc<CR>
    noremap <silent> <Leader>t :NERDTreeToggle<CR>
    noremap <silent> <Leader>b :BufExplorer<CR>
    " Y янкает от курсора и до конца строки. На манер страндартных D и С.
    nnoremap Y y$
    " В коммандном режиме разрешить прыгать в конец и начало строки, как в консоли
    cnoremap <C-e> <end>
    imap     <C-e> <c-o>$
    cnoremap <C-a> <home>
    imap     <C-a> <c-o>^
    " Ремапим русские символы
    " set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>
    " Поиск по всем файлам
    nnoremap <silent> <C-f> :LAck -w <cword> . <CR>
    nnoremap <silent> <C-j> :lnext<CR>
    nnoremap <silent> <C-k> :lprev<CR>

    " ,ts fix trailing spaces
    autocmd FileType c,cpp,java,php,perl,python,go,javascript,xslate,django,css,scss,tpl,vim,sql autocmd BufWritePre <buffer> :%s/\s\+$//e

    " Russiam, motherfucka, do you write it ?
    set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.QWERTYUIOP{}ASDFGHJKL:\\«ZXCVBNM<>

" Плагины

    " Ack
        let g:ackprg="ag"

    " NERDTree
        let NERDTreeShowBookmarks=1
        let NERDTreeChDirMode=2
        let NERDTreeQuitOnOpen=0  " закрвыть дерево при открытии файла
        let NERDTreeShowHidden=0
        let NERDTreeKeepTreeInNewTab=0
        let NERDTreeMinimalUI=1 " Disables display of the 'Bookmarks' label and 'Press ? for help' text.
        let NERDTreeDirArrows=1 " Tells the NERD tree to use arrows instead of + ~ chars when displaying directories.
        let NERDTreeBookmarksFile= $HOME . '/.vim/.NERDTreeBookmarks'
        let NERDTreeWinSize=30
        let NERDTreeIgnore=['\.pyc$']
        let NERDTreeHightlightCursorline=1
        " запускать при путом vim
        " autocmd StdinReadPre * let s:std_in=1
        " autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
        " выходить если закрыть последний буфер
        au BufEnter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

    " autocomplpop.vim
        let g:acp_enableAtStartup        = 1         " включить при старте системы
        "let g:acp_mappingDriven          = 0         " если 1 то будет включаться по хоткею
        "let g:acp_ignorecaseOption       = 1         " игнорировать регистр
        "let g:acp_completeOption         = '.,w,b,k' " опции дополнения (completeopt)
        "let g:acp_completeoptPreview     = 1         " показывать превью дополнения
        "let g:acp_behaviorKeywordCommand = "\<C-n>"  " комманда для автодополнения
        "let g:acp_behaviorKeywordLength  = 3         " количество символов для начала дополнения
        "let g:acp_behaviorKeywordIgnores = []        " не дополнять эти слова
        "
    " NERDCommenter
        let g:NERDCustomDelimiters = {
            \ 'tt2html': { 'left': '#' }
        \ }

    " Airline
        let g:airline_theme='lucius'
        let g:airline_powerline_fonts = 1
        let g:airline#extensions#whitespace#checks = [ 'trailing' ]
        let g:airline#extensions#ctrlp#color_template = 'normal'
        let g:airline#extensions#ctrlp#show_adjacent_modes = 1
        let g:airline#extensions#tabline#enabled = 1
        let g:airline#extensions#tabline#fnamemod = ':t'

        if !exists('g:airline_symbols')
            let g:airline_symbols = {}
        endif
        "let g:airline_left_sep = '▶'
        "let g:airline_left_sep = '»'
        let g:airline_left_sep = ''
        "let g:airline_right_sep = '◀'
        "let g:airline_right_sep = '«'
        let g:airline_right_sep = ''
        "let g:airline_symbols.linenr = '␊'
        "let g:airline_symbols.linenr = '␤'
        let g:airline_symbols.linenr = '¶'
        let g:airline_symbols.branch = '⎇'
        let g:airline_symbols.paste = 'ρ'
        "let g:airline_symbols.paste = 'Þ'
        "let g:airline_symbols.paste = '∥'
        let g:airline_symbols.whitespace = 'Ξ'

    " CtrlP
        let g:ctrlp_open_new_file = 't'
        let g:ctrlp_follow_symlinks = 2
        let g:ctrlp_clear_cache_on_exit = 0
        let g:ctrlp_prompt_mappings = {
            \ 'AcceptSelection("e")': ['<c-p>'],
            \ 'PrtSelectMove("j")':   ['<c-j>'],
            \ 'PrtSelectMove("k")':   ['<c-k>'],
            \ 'PrtHistory(-1)':       ['<down>'],
            \ 'PrtHistory(1)':        ['<up>'],
            \ }

    " python-syntax
        let python_highlight_all=1

    " syntastic
        let g:syntastic_enable_highlighting = 0
        let g:syntastic_mode_map = { "mode": "active" }
        let g:syntastic_always_populate_loc_list = 1
        let g:syntastic_auto_loc_list = 1
        let g:syntastic_check_on_open = 0
        let g:syntastic_check_on_wq = 1
        let g:syntastic_error_symbol = 'E>'
        let g:syntastic_warning_symbol = 'W>'
        let g:syntastic_style_error_symbol = 'e>'
        let g:syntastic_style_warning_symbol = 'w>'
        let g:syntastic_echo_current_error = 1
        let g:syntastic_loc_list_height = 7
        let g:syntastic_javascript_checkers = ['eslint']
        let g:syntastic_python_checkers = ['flake8']
        let g:syntastic_go_checkers = ['govet']

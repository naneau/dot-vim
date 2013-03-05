" BOOTSTRAP
set nocompatible

" Turn on syntax
syntax on

" Filetype needs to be off for Vundle to work
filetype off

" Initialise Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

"------------------------------------------------------------------------------

" VUNDLE SETUP

Bundle 'mileszs/ack.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'altercation/vim-colors-solarized'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'airblade/vim-gitgutter'
Bundle 'clones/vim-fuzzyfinder'
Bundle 'sjl/gundo.vim'
Bundle 'slack/vim-l9'
Bundle 'plasticboy/vim-markdown'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'Lokaltog/vim-powerline'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'MarcWeber/snipmate.vim'
Bundle 'ervandew/supertab'
Bundle 'tpope/vim-surround'
Bundle 'godlygeek/tabular'
Bundle 'thisivan/vim-taglist'
Bundle 'tomtom/tlib_vim'
Bundle 'beyondwords/vim-twig'
Bundle 'tpope/vim-unimpaired'
Bundle 'vim-scripts/YankRing.vim'
Bundle 'mattn/zencoding-vim'
Bundle 'stephpy/vim-php-cs-fixer'
Bundle 'arnaud-lb/vim-php-namespace'
Bundle 'vim-scripts/PDV--phpDocumentor-for-Vim'
Bundle 'groenewege/vim-less'
Bundle 'wavded/vim-stylus'
Bundle 'digitaltoad/vim-jade'

" Turn filetype back on again for Vundle
filetype plugin indent on

"----------------------------------------------------------------------

" THEME and layout

set background=dark
color solarized

" Increase line height a little
set linespace=5

" Change cursor shape in xterm
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

"----------------------------------------------------------------------

" VARIABLES AND SETUP

" This shows what you are typing as a command.  I love this!
set showcmd

" Don't beep, for fuck's sake. DO NOT BEEP.
set visualbell

" Auto read changed files
set autoread

" Hide buffer instead of closing them with unsaved changes
"set hidden
" Remove the buffer when tab closes
set nohidden

" Turn on line numbering
set number
set ruler

" Set encoding to Unicode UTF-8 by default
set encoding=utf-8

" Who still needs these... git ftw.
set nobackup
set noswapfile
set nowritebackup

" Set up proper dirs for backups if they are enabled
set backupdir=~/.vim/tmp/backup
set directory=~/.vim/tmp/backup

" Put viminfo in .tmp too
set viminfo="~/.vim/tmp/viminfo"

" Whitespace and indenting
filetype indent on              " load the plugin and indent settings for the detected filetype
set autoindent                  " Turn on auto indenting, using the previous line's indent level for new lines
"set smartindent                " Use smart indenting for code (c-style aware autoindent)
"set copyindent                 " copy the previous indentation on autoindenting
set smarttab                    " insert tabs on the start of a line according to shiftwidth, not tabstop
set nowrap                      " Don't wrap text by default (but scroll out of the window)

set nofoldenable                " disable folding
set foldlevel=99

set colorcolumn=80              " Show a column at 80 chars
"set tw=80                      " Set the text width to 80

" Parentheses
set showmatch                   " show matching parenthesis

" Comments
set comments=sr:/*,mb:*,ex:*/   " Comments continue in docblocks

" Tabs 'n such
set tabstop=4                   " display tabs as 4 spaces
set shiftwidth=4                " Use 4 shifts for < and > shifting
set shiftround                  " Use multiple of shiftwidth when indenting with '<' and '>'
set softtabstop=4               " Use 4 spaces when hitting tab in insert mode
set expandtab                   " Expand tabs to spaces in insert mode

" Invisibles
set list                        " Show whitespace invisibles
"set listchars=tab:»·,trail:·   " show tabs as » and show a · for (trailing) spaces
set listchars=tab:▸\ ,eol:¬     " TextMate-like invisible chars

" Searching
set ignorecase                  " Ignore UpperCase in searches
"set smartcase                  " unless an upper case character is used
"set nohlsearch                 " turn off highlighting for searched expressions
set incsearch                   " highlight as we search however

"----------------------------------------------------------------------

" EDITING

" Remove any trailing whitespace that is in the file
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

"----------------------------------------------------------------------

" FILE SEARCHING
"
" Ignore vendor and library's for in wildignore
"set wildignore+=vendor/**,library/zend/**,external-library/**,public/**
set wildignore+=*/app/cache/*
set wildignore+=*/tmp/*
set wildignore+=vendor/**
"set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*

"----------------------------------------------------------------------

" NATIVE MAPPINGS

" Map j/k to gj/gk so we go up to the next row, not next line on wrapped lines
nnoremap j gj
nnoremap k gk

" Map ; to :, hey, saves a shift ;)
nnoremap ; :

" Use w!! to sudo write after opening a file without sudo rights
cmap w!! w !sudo tee % >/dev/null

" Command-][ to increase/decrease indentation
vmap <D-]> >gv
vmap <D-[> <gv

" Map command-r to omni-complete
"imap <D-r> <C-X><C-O>

"----------------------------------------------------------------------

" FILETYPE SPECIFIC SETTINGS

" Map command-d to coffee compile
vmap <D-d> :CoffeeCompile<CR>

" On save, compile coffee and show errors
"au BufWritePost *.coffee silent CoffeeMake! -b | cwindow | redraw!

" Add coffeekup to supported files for coffeescript
au BufNewFile,BufRead *.coffeekup set filetype=coffee

" Markdown
autocmd FileType mkd set linebreak wrap nolist
"autocmd FileType mkd set textwidth=80
"autocmd FileType mkd set wrapmargin=80

" LESS support
au BufNewFile,BufRead *.less set filetype=less
autocmd FileType less setlocal omnifunc=csscomplete#CompleteCSS

" OMNICOMPLETE
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
"autocmd FileType php set omnifunc=phpcomplete#CompletePHP

"----------------------------------------------------------------------

" PLUGINS

" Ctrl-P plugin
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Always open in tab
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }

" Too much muscle memory, mapping command-T to CtrlP too
map <D-t> :CtrlP<CR>

" TagList plugin
map <Leader>t :TlistToggle<CR>                  " Map leader t to  TagList toggle
let Tlist_Use_Right_Window = 1                  " Set up TagList in right window instead of left
let Tlist_File_Fold_Auto_Close = 1              " close all folds except for current file
let Tlist_GainFocus_On_ToggleOpen = 1           " make tlist pane active when opened
let Tlist_WinWidth = 50                         " width of window
let Tlist_Close_On_Select = 1                   " close tlist when a selection is made
let Tlist_Show_One_File = 1                     " only show the current file

" Map leader T to open the fuzzy tag thing for the current buffer
map <Leader>T :FufBufferTag<CR>
let g:fuf_dataDir = '~/.vim/tmp'

" SnipMate Plugin
" Use command-y for snipmate
let g:snips_trigger_key='<D-y>'
let g:snips_author = 'Maurice Fonk'

" Syntastic Plugin
let g:syntastic_check_on_open=1
let g:syntastic_echo_current_error=1
let g:syntastic_enable_signs=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'

" Ack Plugin
" Command-Shift-F for Ack
map <D-F> :Ack<space>

" Use silver_searchver for ack on OSX
if has("unix")
  let s:uname = system("uname")
  if s:uname == "Darwin"
    let g:ackprg = 'ag --nogroup --nocolor --column'
  endif
endif

" Map leader-n to nerd tree on/off
map <Leader>n :NERDTreeToggle<CR>
map <Leader>f :NERDTreeFind<CR>
" open in new tab by default
let g:CommandTAcceptSelectionMap = '<C-t>'
let g:CommandTAcceptSelectionTabMap = '<CR>'
" Use arrows for directories
let NERDTreeDirArrows=1
" Make the nerd tree window nice and big
let NERDTreeWinSize=50

" use NerdComment with command+/
map <D-/> NERDComToggleComment

" Set up nerd comment custom delimiters for coffeescript
let g:NERDCustomDelimiters = {
    \'coffee': { 'left': '#' }
\}

" Map BufExplorer to leader-b
map <Leader>b :BufExplorer<CR>

" PHP insert use plugin
imap <buffer> <Leader>u <C-O>:call PhpInsertUse()<CR>
map <buffer> <Leader>u :call PhpInsertUse()<CR>

" FUGITIVE
map <Leader>w :Gwrite<CR>
map <Leader>c :Gcommit<CR>
map <Leader>a :Gcommit --amend<CR>
map <Leader>s :Gstatus<CR>
map <Leader>p :Git push<CR>

" ZEN CODING
imap <D-e> <C-y>,

" GUNDO
map <Leader>r :GundoToggle<CR>
let g:gundo_right = 1
let g:undo_width = 75

" YANKRING
let g:yankring_window_use_horiz = 0
map <Leader>y :YRShow<CR>
let g:yankring_window_width = 75

" SUPERTAB
let g:SuperTabDefaultCompletionType = 'context'
let g:SuperTabLongestHighlight = 1
let g:SuperTabNoCompleteAfter = [':', '\s', ']', ')', '"', "'"]         " Don't complete after obvious non-tabbable

" YANKRING
let g:yankring_history_dir = '~/.vim/tmp'

" POWERLINE
let g:Powerline_symbols = 'unicode'
"let g:Powerline_theme = 'skwp'

" PHP class names finder
map <Leader>p /[^'^\\^\s^_][A-Z]\+[a-zA-Z]\+[_][A-Z][A-Za-z_]\+<CR>

" ECLIM
let g:EclimLogLevel = 0
let g:EclimValidate = 0
let g:EclimXmlValidate = 0
let g:EclimPhpValidate = 0
let g:EclimPhpHtmlValidate = 0
set completeopt-=preview

" PHP-CS-FIXER
let g:php_cs_fixer_path = "~/Workspace/bin/php-cs-fixer.phar" " define the path to the php-cs-fixer.phar
let g:php_cs_fixer_level = "all"                " which level ?
let g:php_cs_fixer_config = "default"           " configuration
let g:php_cs_fixer_php_path = "php"             " Path to PHP
let g:php_cs_fixer_fixers_list = ""             " List of fixers
let g:php_cs_fixer_enable_default_mapping = 1   " Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_dry_run = 0                  " Call command with dry-run option
let g:php_cs_fixer_verbose = 0                  " Return the output of command if 1, else an inline information.

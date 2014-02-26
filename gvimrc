" Default gui color scheme
"color idle
"color twilight-naneau
"color mustang
set background=light
"set background=dark
color solarized
"color naneau

if has("gui_macvim")
    " Start without the toolbar
    set guioptions-=T

    " Don't display scrollbars
    set guioptions-=r
    set guioptions-=L

    " Pretty font ^^
    "set guifont=Droid\ Sans\ Mono:h12
    set guifont=Source\ Code\ Pro:h13
    "set guifont=Inconsolata:h15

    " Fullscreen takes up entire screen
    set fuoptions=maxhorz,maxvert

    " Command-shift-t opens a new tab
    macmenu &File.New\ Tab key=<D-T>

    " Command-Return for fullscreen
    macmenu Window.Toggle\ Full\ Screen\ Mode key=<D-CR>

    " Show nerd tree when opening
    autocmd VimEnter * NERDTree
    autocmd VimEnter * wincmd p
endif

" Make sure we enter something upon entering VIM
autocmd VimEnter * call s:CdIfDirectory(expand("<amatch>"))
function s:CdIfDirectory(directory)
  let explicitDirectory = isdirectory(a:directory)
  let directory = explicitDirectory || empty(a:directory)

  if explicitDirectory
    exe "cd " . fnameescape(a:directory)
  endif

  " Allows reading from stdin
  " ex: git diff | mvim -R -
  if strlen(a:directory) == 0
    return
  endif

  if directory
    "NERDTree
    wincmd p
    bd
  endif

  if explicitDirectory
    wincmd p
  endif
endfunction


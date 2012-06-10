" Vim color file
" Converted from Textmate theme Naneau using Coloration v0.2.5 (http://github.com/sickill/coloration)

set background=light
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "Naneau"

hi Cursor  guifg=NONE guibg=#14576f gui=NONE
hi Visual  guifg=NONE guibg=#9db8c2 gui=NONE
hi CursorLine  guifg=NONE guibg=#f1f4f6 gui=NONE
hi CursorColumn  guifg=NONE guibg=#f1f4f6 gui=NONE
hi LineNr  guifg=#898a8e guibg=#fcfcfc gui=NONE
hi VertSplit  guifg=#d0d1d2 guibg=#d0d1d2 gui=NONE
hi MatchParen  guifg=#7e863a guibg=NONE gui=bold
hi StatusLine  guifg=#161820 guibg=#d0d1d2 gui=bold
hi StatusLineNC  guifg=#161820 guibg=#d0d1d2 gui=NONE
hi Pmenu  guifg=#438bb2 guibg=NONE gui=bold
hi PmenuSel  guifg=NONE guibg=#9db8c2 gui=NONE
hi IncSearch  guifg=NONE guibg=#b9b9b9 gui=NONE
hi Search  guifg=NONE guibg=#b9b9b9 gui=NONE
hi Directory  guifg=#14576f guibg=NONE gui=bold
hi Folded  guifg=#776d63 guibg=#ffffff gui=NONE

hi Normal  guifg=#444444 guibg=#ffffff gui=NONE
hi Boolean  guifg=#14576f guibg=NONE gui=bold
hi Character  guifg=#14576f guibg=NONE gui=bold
hi Comment  guifg=#776d63 guibg=NONE gui=bold
hi Conditional  guifg=#7e863a guibg=NONE gui=bold
hi Constant  guifg=#14576f guibg=NONE gui=bold
hi Define  guifg=#7e863a guibg=NONE gui=bold
hi ErrorMsg  guifg=NONE guibg=NONE gui=NONE
hi WarningMsg  guifg=NONE guibg=NONE gui=NONE
hi Float  guifg=#b6c255 guibg=NONE gui=bold
hi Function  guifg=#438bb2 guibg=NONE gui=bold
hi Identifier  guifg=#c29119 guibg=NONE gui=bold
hi Keyword  guifg=#7e863a guibg=NONE gui=bold
hi Label  guifg=#c29119 guibg=NONE gui=bold
hi NonText  guifg=#c3d6ed guibg=#ffffff gui=NONE
hi Number  guifg=#b6c255 guibg=NONE gui=bold
hi Operator  guifg=#7e863a guibg=NONE gui=bold
hi PreProc  guifg=#7e863a guibg=NONE gui=bold
hi Special  guifg=#161820 guibg=NONE gui=NONE
hi SpecialKey  guifg=#c3d6ed guibg=#f1f4f6 gui=NONE
hi Statement  guifg=#7e863a guibg=NONE gui=bold
hi StorageClass  guifg=#c29119 guibg=NONE gui=bold
hi String  guifg=#c29119 guibg=NONE gui=bold
hi Tag  guifg=#438bb2 guibg=NONE gui=bold
hi Title  guifg=#161820 guibg=NONE gui=bold
hi Todo  guifg=#776d63 guibg=NONE gui=inverse,bold
hi Type  guifg=#438bb2 guibg=NONE gui=bold
hi Underlined  guifg=NONE guibg=NONE gui=underline

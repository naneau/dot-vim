" Vim color file

set background=light
hi clear
if exists("syntax_on")
   syntax reset
endif

"let colors_name = "fruidle"

" Normal
hi Normal       gui=NONE guifg=#444444 guibg=#FFFFFF

" Search
hi IncSearch    gui=UNDERLINE guifg=#404040 guibg=#ffffff
hi Search       gui=NONE guifg=#404040 guibg=#ffffff

" Messages
hi ErrorMsg     gui=NONE guifg=#ff0000 guibg=#ffe4e4
hi WarningMsg   gui=NONE guifg=#ff0000 guibg=#ffe4e4
hi ModeMsg      gui=NONE guifg=#dd0000 guibg=NONE
hi MoreMsg      gui=NONE guifg=#009070 guibg=NONE
hi Question     gui=NONE guifg=#ff7700 guibg=NONE

" Spelling
"hi SpellBad     gui=None guifg=NONE      guibg=#d00000

" Split area
hi StatusLine   gui=BOLD guifg=#666666 guibg=#f9f9f9
hi StatusLineNC gui=NONE guifg=#666666 guibg=#f9f9f9
hi VertSplit    gui=NONE guifg=#666666 guibg=#f9f9f9
hi WildMenu     gui=BOLD guifg=#666666 guibg=#f9f9f9

" Diff
hi DiffText     gui=NONE guifg=#e04040 guibg=#ffd8d8
hi DiffChange   gui=NONE guifg=#408040 guibg=#d0f0d0
hi DiffDelete   gui=NONE guifg=#4848ff guibg=#ffd0ff
hi DiffAdd      gui=NONE guifg=#4848ff guibg=#ffd0ff

" Cursor
hi CursorLine   gui=NONE guifg=#000000 guibg=#f9f9f9
hi CursorColumn gui=NONE guifg=NONE    guibg=#ffffff
hi Cursor       gui=NONE guifg=#0000ff guibg=#00e0ff
hi lCursor      gui=NONE guifg=#f8f8f8 guibg=#8000ff
hi CursorIM     gui=NONE guifg=#f8f8f8 guibg=#8000ff
hi MatchParen   gui=BOLD guifg=magenta guibg=#f9f9f9

" Fold
hi Folded       gui=NONE guifg=#20605c guibg=#b8e8dc
hi FoldColumn   gui=NONE guifg=#40a098 guibg=#f0f0f0

" Other
hi Directory    gui=NONE guifg=#0070b8 guibg=NONE
hi LineNr       gui=NONE guifg=#aaaaaa guibg=NONE
hi NonText      gui=NONE guifg=#dddddd guibg=BG
hi SpecialKey   gui=NONE guifg=#4040ff guibg=NONE
hi Title        gui=NONE guifg=#0050a0 guibg=#c0e8ff
hi Visual       gui=NONE guifg=NONE guibg=#f2f8fe
" hi VisualNOS    gui=NONE guifg=#484848 guibg=#e0e0e0

" Syntax group
hi Comment      gui=NONE            guifg=#999a9c   guibg=NONE
hi Constant     gui=NONE            guifg=#509ebd   guibg=NONE
hi link Number Constant 
hi Identifier   gui=NONE            guifg=fg        guibg=NONE
hi Error        gui=NONE            guifg=#ffffff   guibg=#dd0000
hi Ignore       gui=NONE            guifg=#f8f8f8   guibg=NONE
hi PreProc      gui=NONE            guifg=#509ebd   guibg=NONE
hi Special      gui=NONE            guifg=#4a9400   guibg=NONE
hi Statement    gui=NONE            guifg=#87b234   guibg=NONE
hi Todo         gui=UNDERLINE       guifg=#ff0070   guibg=#ffe0f4
hi Type         gui=NONE            guifg=#0070e6   guibg=NONE
hi Underlined   gui=UNDERLINE       guifg=fg        guibg=NONE
hi link Include PreProc 
hi Function     gui=NONE            guifg=#0076AD   guibg=NONE
hi String       gui=NONE            guifg=#00aa00   guibg=bg 


"""""""" Coffee

hi link coffeeAssignmentChar    Normal
hi link coffeeAssignmentMod     Normal
hi link coffeeGlobal            Number
hi link coffeeInterpolation     Special


"""""""" ERB

hi link erubyDelimiter          PreProc 


"""""""" HAML

hi link hamlAttributes          htmlArg
hi link hamlTag                 htmlTag 
hi link hamlTagName             htmlTagName 
hi link hamlIdChar              hamlId
hi link hamlClassChar           hamlClass
hi link hamlInterpolation       Special 


"""""""" HTML

hi link htmlTag                 Type 
hi link htmlEndTag              Type 
hi link htmlTagName             Type 
hi link htmlSpecialChar         Constant


"""""""" JavaScript

hi link javaScriptFunction      Function
hi link javaScriptFuncName      Function
hi link javaScriptDocSeeTag     Underlined 
hi link javaScriptLabel         Normal 
hi link javaScriptNull          Number 


"""""""" Makefile 

hi link makeCommands            Normal 
hi link makeTarget              Constant 


"""""""" Markdown - tpope's

hi link markdownCodeBlock           Statement
hi link markdownCode                Statement 
hi link markdownCodeDelimiter       Statement
hi link markdownHeadingDelimiter    Title
hi link markdownLinkText 	    Underlined 
hi link markdownLinkTextDelimiter   Comment 
hi link markdownLinkDelimiter       Comment
hi link markdownListMarker          Constant
hi link markdownUrl                 Comment


"""""""" NERDTree

hi link NERDTreeClosable            PreProc
"hi link NERDTreeDir                 Statement 
hi link NERDTreeDirSlash            NonText 
hi link NERDTreeExecFile            Type
hi      NERDTreeFlag                guifg=#3e71a1 guibg=bg gui=none
hi link NERDTreeHelp                Comment
hi link NERDTreeLink                Type
hi link NERDTreePart                NonText 
hi link NERDTreePartFile            NonText 
hi link NERDTreeOpenable            NERDTreeClosable
hi link NERDTreeUp                  NERDTreeClosable 


"""""""" Ruby

hi rubyAccess                       guifg=#ef7760 guibg=bg gui=italic
hi link rubyBlockParameter          Normal
hi link rubyInterpolation           Special 
hi link rubyInterpolationDelimiter  Special 
hi link rubyStringDelimiter         String


"""""""" SH

hi link shQuote                 String


"""""""" XML

hi link xmlEndTag               htmlEndTag
hi link xmlTag                  htmlTag
hi link xmlTagName              htmlTagName

" vim: set sw=4 sts=4 et :


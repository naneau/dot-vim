
set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "twilight"

let s:grey_blue = '#8a9597'
let s:light_grey_blue = '#a0a8b0'
let s:dark_grey_blue = '#34383c'
let s:mid_grey_blue = '#8C9297'
let s:beige = '#ceb67f'
let s:light_orange = '#ebc471'
let s:yellow = '#e3d796'
let s:violet = '#a999ac'
let s:green = '#a2a96f'
let s:lightgreen = '#c2c98f'
let s:red = '#d08356'
let s:cyan = '#74dad9'
let s:darkgrey = '#1a1a1a'
let s:grey = '#404444'
let s:lightgrey = '#605958'
let s:white = '#fffedc'

if version >= 700
  hi CursorLine guibg=#262626
  hi CursorColumn guibg=#262626
  hi MatchParen guifg=white guibg=#80a090 gui=bold

  "Tabpages
  hi TabLine guifg=#a09998 guibg=#202020 gui=NONE
  hi TabLineFill guifg=#a09998 guibg=#202020 gui=NONE
  hi TabLineSel guifg=#a09998 guibg=#404850 gui=NONE

  "P-Menu (auto-completion)
  hi Pmenu guifg=#605958 guibg=#303030 gui=NONE
  hi PmenuSel guifg=#a09998 guibg=#404040 gui=NONE
  "PmenuSbar
  "PmenuThumb
endif

hi Visual guibg=#404040

"hi Cursor guifg=NONE guibg=#586068
"hi Cursor guibg=#b0d0f0
exe 'hi Cursor guibg='.s:white

exe 'hi Normal                  guifg='.s:white             .' guibg='.s:darkgrey
exe 'hi Underlined              guifg='.s:white             .' guibg='.s:darkgrey        .' gui=underline'
exe 'hi NonText                 guifg=#333333               guibg='.s:darkgrey
exe 'hi SpecialKey              guifg=#333333               guibg='.s:darkgrey

exe 'hi LineNr                  guifg='.s:grey              .' guibg='.s:darkgrey        .' gui=none'
exe 'hi StatusLine              guifg='.s:white             .' guibg='.s:darkgrey        .' gui=italic'
exe 'hi StatusLineNC            guifg='.s:lightgrey         .' guibg='.s:darkgrey        .' gui=italic'
exe 'hi VertSplit               guifg='.s:grey              .' guibg='.s:darkgrey        .' gui=none'

exe 'hi Folded                  guifg='.s:grey_blue         .' guibg='.s:dark_grey_blue  .' gui=none'
exe 'hi FoldColumn              guifg='.s:grey_blue         .' guibg='.s:dark_grey_blue  .' gui=none'
exe 'hi SignColumn              guifg='.s:grey_blue         .' guibg='.s:dark_grey_blue  .' gui=none'

exe 'hi Comment                 guifg='.s:mid_grey_blue     .' guibg='.s:darkgrey        .' gui=italic'
exe 'hi TODO                    guifg='.s:grey_blue         .' guibg='.s:darkgrey        .' gui=italic,bold'

exe 'hi Title                   guifg='.s:red               .' guibg='.s:darkgrey        .' gui=NONE'

exe 'hi Constant                guifg='.s:red               .' guibg='.s:darkgrey        .' gui=none'
exe 'hi String                  guifg='.s:green             .' guibg='.s:darkgrey        .' gui=none'
exe 'hi Special                 guifg='.s:lightgreen        .' guibg='.s:darkgrey        .' gui=none'

exe 'hi Identifier              guifg='.s:grey_blue         .' guibg='.s:darkgrey        .' gui=none'
exe 'hi Statement               guifg='.s:beige             .' guibg='.s:darkgrey        .' gui=none'
exe 'hi Conditional             guifg='.s:beige             .' guibg='.s:darkgrey        .' gui=none'
exe 'hi Repeat                  guifg='.s:beige             .' guibg='.s:darkgrey        .' gui=none'
exe 'hi Structure               guifg='.s:beige             .' guibg='.s:darkgrey        .' gui=none'
exe 'hi Function                guifg='.s:violet            .' guibg='.s:darkgrey        .' gui=none'

exe 'hi PreProc                 guifg='.s:grey_blue         .' guibg='.s:darkgrey        .' gui=none'
exe 'hi Operator                guifg='.s:light_orange      .' guibg='.s:darkgrey        .' gui=none'
exe 'hi Type                    guifg='.s:yellow            .' guibg='.s:darkgrey        .' gui=italic'

" MiniBufExpl Colors
exe 'hi MBEVisibleActive        guifg='.s:lightgreen        .' guibg='.s:darkgrey
exe 'hi MBEVisibleChangedActive guifg='.s:green             .' guibg='.s:darkgrey
exe 'hi MBEVisibleChanged       guifg='.s:green             .' guibg='.s:darkgrey
exe 'hi MBEVisibleNormal        guifg='.s:grey_blue         .' guibg='.s:darkgrey
exe 'hi MBEChanged              guifg='.s:yellow            .' guibg='.s:darkgrey
exe 'hi MBENormal               guifg='.s:mid_grey_blue     .' guibg='.s:darkgrey

" Search
hi Search guifg=#606000 guibg=#c0c000 gui=bold

hi Directory guifg=#dad085 gui=NONE
hi Error guibg=#602020

